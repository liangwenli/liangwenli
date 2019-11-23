(function () {
    var gid = decodeURI(location.search.slice(1));
    // console.log(gid);

    function getdata(url, str, fn) {
        //url:接口路径  str：sql语句  fn：成功获取数据后执行的回调,在这里做DOM操作
        // console.log('发送请求了');
        let p = new Promise(resolve => {
            $.ajax({
                type: 'get',
                url: url,
                data: {
                    sql: str
                },
                success: str => {
                    // console.log(str);
                    resolve(str); //把DOM操作放到外面进行
                    // fn(str);
                }
            });
        });

        p.then(data => {
            if (fn) { //选填
                fn(data);
            }
        });
    }

    let url = '../api/select.php';
    let gstr = `SELECT *FROM lgood WHERE num=${gid};`;
    getdata(url, gstr, res => {
        let pre1 = JSON.parse(res);
        console.log(pre1);

        let img1 = document.querySelector('.good .img .bigpic').children[0];
        let img2 = document.querySelector('.good .img .minpic').children[0];
        let img3 = document.querySelector('.good .img .pic').children[0];
        img1.src = img2.src = img3.src = pre1[0].src;

        let str = pre1.map(item => {

            return `
            <div class=" title">
                    <h3>${item.title}</h3>
                    <p class="t1">${item.name}</p>
                    <p class="t2">${item.shou}</p>
                </div>
                <div class="attribute">
                    <dl>
                        <dt>类别：</dt>
                        <dd>鲜花编号：910034</dd>
                    </dl>
                    <dl>
                        <dt>材料：</dt>
                        <dd>11支红玫瑰，2支多透才香水百合，黄莺10支</dd>
                    </dl>
                    <dl>
                        <dt>包装：</dt>
                        <dd>内层白色雪梨纸 外层深红色牛油平面纸 咖啡色缎带花结</dd>
                    </dl>
                    <dl>
                        <dt>花语：</dt>
                        <dd>红玫瑰+百合，热烈而馨香，遇到你纯属偶然，谁能说清比缘份更深的东西，我的转身你成了我的风景，有一种惊喜暗藏于心。</dd>
                    </dl>
                    <dl>
                        <dt>配送：</dt>
                        <dd>
                            全国
                            （可配送至全国2000多城市，市区免配送费。）</dd>
                    </dl>
                </div>
                <div class="price">
                    <p class="p1">市场价：￥${item.yuanjia}</p>
                    <div class="p2">
                        花礼价：
                        <i>￥${item.price}</i>
                    </div>

                </div>
                <diV class="leixing clearfix">
                    <a class="gou">加入购物车</a>
                    <a class="buy">立即购买</a>
                </diV>
                    `;
        });

        $('.good .product-r').html(str); //渲染数据

        let gou = document.querySelector('.leixing .gou');
        let buy = document.querySelector('.leixing .buy');
        let gou1 = document.querySelector('.btn .gou');
        let p1 = pre1[0].price;
        // let p2 = pre1[0].yuanjia;
        // gou1.innerHTML = '￥' + p1;
        let price1 = document.querySelector('.btn .price').children[1];
        price1.innerHTML = p1;
        console.log(gou);


        gou.onclick = buy.onclick = gou1.onclick = function () {
            let uid = getCookie('username');
            // location.href = 'car.html?' + gid;
            console.log(666);
            let url = '../api/check.php';
            let str = `SELECT *FROM goodinf WHERE gid=${gid}`;
            ajax({
                type: 'get',
                url: url,
                data: {
                    sql1: str
                },
                success: str => {
                    // console.log(str);
                    // resolve(str); //把DOM操作放到外面进行
                    // fn(str);
                    let uid = getCookie('username');
                    // console.log(uid);
                    //插入数据
                    if (str == 1) {
                        // console.log(img1.src);
                        // console.log(gid);
                        let src = pre1[0].src;
                        let price = pre1[0].price;
                        let title = pre1[0].title;
                        let yuanjia = pre1[0].yuanjia;
                        let kucun = pre1[0].kuncun;
                        let url1 = '../api/other.php';
                        let gstr1 = `INSERT INTO goodinf(gid,gtitle,src,yuanjia,price,uid,zongjia,num,user,kucun)VALUES (${gid},"${title}","${src}",${yuanjia},${price},1,${price},1,${uid},${kucun});`
                        console.log(gstr1);
                        getdata(url1, gstr1, res1 => {
                            console.log(res1);
                            if (res1 == 1) {
                                // alert('添加购物车成功');
                                // location.href = 'car.html?';
                                let isok = confirm('添加购物车成功,是否前往购物车？')
                                if (isok) {
                                    location.href = 'car.html?';
                                }
                            } else {
                                alert('添加购物车失败2');
                            }

                        });

                    } else if (str == 0) { //修改数量
                        // console.log(gid);
                        // console.log(uid);
                        let url2 = '../api/select1.php';
                        let gstr2 = `SELECT *FROM goodinf WHERE gid=${gid}  AND user=${uid} `;
                        ajax({
                            type: 'get',
                            url: url2,
                            data: {
                                sql1: gstr2
                            },
                            success: str => {
                                // console.log(str);
                                let pre3 = JSON.parse(str);
                                gnum = pre3[0].num;
                                gkuncun = pre3[0].kucun;
                                if (gnum >= gkuncun) {
                                    gnum = gnum;
                                    let isok = confirm('限购数已达，不能再添加购物车了,是否前往购物车？')
                                    if (isok) {
                                        location.href = 'car.html?';
                                    }

                                } else {
                                    gnum++;
                                    let url3 = '../api/other.php';
                                    let gstr3 = `
                                       UPDATE goodinf SET num =${gnum} WHERE gid = ${gid} and user = ${uid};`

                                    getdata(url3, gstr3, res3 => {
                                        // console.log(res3);
                                        if (res3 == 1) {
                                            // alert('添加购物车成功');
                                            let isok = confirm('添加购物车成功,是否前往购物车？')
                                            if (isok) {
                                                location.href = 'car.html?';
                                            }

                                        } else {
                                            alert('添加购物车失败1');
                                        }

                                    });
                                }

                            }
                        });



                        // getdata(url2, gstr2, res2 => {
                        //     console.log(res2);
                        //     let pre2 = JSON.parse(res2);
                        //     gnum = pre2[0].num;
                        //     gkuncun = pre2[0].kucun;
                        //     console.log(gnum);
                        //     // console.log(gkuncun);
                        //     if (gnum >= gkuncun) {
                        //         gnum = gnum;
                        //         let isok = confirm('限购数已达，不能再添加购物车了,是否前往购物车？')
                        //         if (isok) {
                        //             location.href = 'car.html?';
                        //         }

                        //     } else {
                        //         gnum++;
                        //         let url3 = '../api/other.php';
                        //         let gstr3 = `
                        //         UPDATE goodinf SET num =${gnum} WHERE gid = ${gid} and user = ${uid};`

                        //         getdata(url3, gstr3, res3 => {
                        //             // console.log(res3);
                        //             if (res3 == 1) {
                        //                 // alert('添加购物车成功');
                        //                 let isok = confirm('添加购物车成功,是否前往购物车？')
                        //                 if (isok) {
                        //                     location.href = 'car.html?';
                        //                 }

                        //             } else {
                        //                 alert('添加购物车失败');
                        //             }

                        //         });
                        //     }

                        // });
                    }

                }
            });

            // shop()
        }

        // function shop() {
        //     let url = '../api/check.php';
        //     let str = `SELECT *FROM goodinf WHERE gid=${gid}`;
        //     ajax({
        //         type: 'get',
        //         url: url,
        //         data: {
        //             sql1: str
        //         },
        //         success: str => {
        //             // console.log(str);
        //             // resolve(str); //把DOM操作放到外面进行
        //             // fn(str);
        //             let uid = getCookie('username');
        //             // console.log(uid);
        //             //插入数据
        //             if (str == 1) {
        //                 // console.log(img1.src);
        //                 let src = pre1[0].src;
        //                 let price = pre1[0].price;
        //                 let title = pre1[0].title;
        //                 let yuanjia = pre1[0].yuanjia;
        //                 let kucun = pre1[0].kuncun;
        //                 let url1 = '../api/other.php';
        //                 let gstr1 = `INSERT INTO goodinf(gid,gtitle,src,yuanjia,price,uid,zongjia,num,user,kucun)VALUES (${gid},"${title}","${src}",${yuanjia},${price},1,${price},1,${uid},${kucun});`
        //                 getdata(url1, gstr1, res1 => {
        //                     // console.log(res1);
        //                     if (res1 == 1) {
        //                         // alert('添加购物车成功');
        //                         // location.href = 'car.html?';
        //                         let isok = confirm('添加购物车成功,是否前往购物车？')
        //                         if (isok) {
        //                             location.href = 'car.html?';
        //                         }
        //                     } else {
        //                         alert('添加购物车失败');
        //                     }

        //                 });

        //             } else if (str == 0) { //修改数量
        //                 let url2 = '../api/select.php';
        //                 let gstr2 = `SELECT *FROM goodinf WHERE gid=${gid};`;
        //                 getdata(url2, gstr2, res2 => {
        //                     // console.log(res2);
        //                     let pre2 = JSON.parse(res2);
        //                     gnum = pre2[0].num;
        //                     gkuncun = pre2[0].kucun;
        //                     // console.log(gkuncun);
        //                     if (gnum >= gkuncun) {
        //                         gnum = gnum;
        //                         let isok = confirm('限购数已达，不能再添加购物车了,是否前往购物车？')
        //                         if (isok) {
        //                             location.href = 'car.html?';
        //                         }

        //                     } else {
        //                         gnum++;
        //                         let url3 = '../api/other.php';
        //                         let gstr3 = `UPDATE goodinf SET num=${gnum} WHERE gid=${gid};`
        //                         getdata(url3, gstr3, res3 => {
        //                             // console.log(res3);
        //                             if (res3 == 1) {
        //                                 // alert('添加购物车成功');
        //                                 let isok = confirm('添加购物车成功,是否前往购物车？')
        //                                 if (isok) {
        //                                     location.href = 'car.html?';
        //                                 }

        //                             } else {
        //                                 alert('添加购物车失败');
        //                             }

        //                         });
        //                     }

        //                 });
        //             }

        //         }
        //     });


        // }

        // gou1.onclick = function () {
        //     // shop()
        //     let url = '../api/check.php';
        //     let str = `SELECT *FROM goodinf WHERE gid=${gid}`;
        //     ajax({
        //         type: 'get',
        //         url: url,
        //         data: {
        //             sql1: str
        //         },
        //         success: str => {
        //             // console.log(str);
        //             // resolve(str); //把DOM操作放到外面进行
        //             // fn(str);
        //             let uid = getCookie('username');
        //             // console.log(uid);
        //             //插入数据
        //             if (str == 1) {
        //                 // console.log(img1.src);
        //                 let src = pre1[0].src;
        //                 let price = pre1[0].price;
        //                 let title = pre1[0].title;
        //                 let yuanjia = pre1[0].yuanjia;
        //                 let kucun = pre1[0].kuncun;
        //                 let url1 = '../api/other.php';
        //                 let gstr1 = `INSERT INTO goodinf(gid,gtitle,src,yuanjia,price,uid,zongjia,num,user,kucun)VALUES (${gid},"${title}","${src}",${yuanjia},${price},1,${price},1,${uid},${kucun});`
        //                 getdata(url1, gstr1, res1 => {
        //                     // console.log(res1);
        //                     if (res1 == 1) {
        //                         // alert('添加购物车成功');
        //                         // location.href = 'car.html?';
        //                         let isok = confirm('添加购物车成功,是否前往购物车？')
        //                         if (isok) {
        //                             location.href = 'car.html?';
        //                         }
        //                     } else {
        //                         alert('添加购物车失败');
        //                     }

        //                 });

        //             } else if (str == 0) { //修改数量
        //                 let url2 = '../api/select.php';
        //                 let gstr2 = `SELECT *FROM goodinf WHERE gid=${gid};`;
        //                 getdata(url2, gstr2, res2 => {
        //                     // console.log(res2);
        //                     let pre2 = JSON.parse(res2);
        //                     gnum = pre2[0].num;
        //                     gkuncun = pre2[0].kucun;
        //                     // console.log(gkuncun);
        //                     if (gnum >= gkuncun) {
        //                         gnum = gnum;
        //                         let isok = confirm('限购数已达，不能再添加购物车了,是否前往购物车？')
        //                         if (isok) {
        //                             location.href = 'car.html?';
        //                         }

        //                     } else {
        //                         gnum++;
        //                         let url3 = '../api/other.php';
        //                         let gstr3 = `UPDATE goodinf SET num=${gnum} WHERE gid=${gid};`
        //                         getdata(url3, gstr3, res3 => {
        //                             // console.log(res3);
        //                             if (res3 == 1) {
        //                                 // alert('添加购物车成功');
        //                                 let isok = confirm('添加购物车成功,是否前往购物车？')
        //                                 if (isok) {
        //                                     location.href = 'car.html?';
        //                                 }

        //                             } else {
        //                                 alert('添加购物车失败');
        //                             }

        //                         });
        //                     }

        //                 });
        //             }

        //         }
        //     });

        // }
        // gou.onclick = function () {
        //     let url = '../api/check.php';
        //     let str = `SELECT *FROM goodinf WHERE gid=${gid}`;
        //     ajax({
        //         type: 'get',
        //         url: url,
        //         data: {
        //             sql1: str
        //         },
        //         success: str => {
        //             // console.log(str);
        //             // resolve(str); //把DOM操作放到外面进行
        //             // fn(str);
        //             let uid = getCookie('username');
        //             // console.log(uid);
        //             //插入数据
        //             if (str == 1) {
        //                 // console.log(img1.src);
        //                 let src = pre1[0].src;
        //                 let price = pre1[0].price;
        //                 let title = pre1[0].title;
        //                 let yuanjia = pre1[0].yuanjia;
        //                 let kucun = pre1[0].kuncun;
        //                 let url1 = '../api/other.php';
        //                 let gstr1 = `INSERT INTO goodinf(gid,gtitle,src,yuanjia,price,uid,zongjia,num,user,kucun)VALUES (${gid},"${title}","${src}",${yuanjia},${price},1,${price},1,${uid},${kucun});`
        //                 getdata(url1, gstr1, res1 => {
        //                     // console.log(res1);
        //                     if (res1 == 1) {
        //                         // alert('添加购物车成功');
        //                         // location.href = 'car.html?';
        //                         let isok = confirm('添加购物车成功,是否前往购物车？')
        //                         if (isok) {
        //                             location.href = 'car.html?';
        //                         }
        //                     } else {
        //                         alert('添加购物车失败');
        //                     }

        //                 });

        //             } else if (str == 0) { //修改数量
        //                 let url2 = '../api/select.php';
        //                 let gstr2 = `SELECT *FROM goodinf WHERE gid=${gid};`;
        //                 getdata(url2, gstr2, res2 => {
        //                     // console.log(res2);
        //                     let pre2 = JSON.parse(res2);
        //                     gnum = pre2[0].num;
        //                     gkuncun = pre2[0].kucun;
        //                     // console.log(gkuncun);
        //                     if (gnum >= gkuncun) {
        //                         gnum = gnum;
        //                         let isok = confirm('限购数已达，不能再添加购物车了,是否前往购物车？')
        //                         if (isok) {
        //                             location.href = 'car.html?';
        //                         }

        //                     } else {
        //                         gnum++;
        //                         let url3 = '../api/other.php';
        //                         let gstr3 = `UPDATE goodinf SET num=${gnum} WHERE gid=${gid};`
        //                         getdata(url3, gstr3, res3 => {
        //                             // console.log(res3);
        //                             if (res3 == 1) {
        //                                 // alert('添加购物车成功');
        //                                 let isok = confirm('添加购物车成功,是否前往购物车？')
        //                                 if (isok) {
        //                                     location.href = 'car.html?';
        //                                 }

        //                             } else {
        //                                 alert('添加购物车失败');
        //                             }

        //                         });
        //                     }

        //                 });
        //             }

        //         }
        //     });

        //     // shop();
        // }

    });





})();