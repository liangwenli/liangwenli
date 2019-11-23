(function () {
    $('.header').load('head.html', function () {
        // //异步的操作：没有加载完成，事件是无法绑定的
        // $('.header').click(() => {
        //     alert(5566);
        // });

        let name = getCookie('username');
        let loginbtn = document.querySelector('#loginbtn');
        let out = document.querySelector('#out');
        let numto = document.querySelector('.li2 .num');
        let tt = document.querySelector('.li1 .geren .tt');
        if (name) {
            loginbtn.innerHTML = '你好' + name;
            let s1 = '';
            s1 = `<p style="color: #ff6600;">你好！欢迎到花礼网</p>`;
            tt.innerHTML = s1;
        } else {
            let s1 = '';
            s1 = `<p>你好！请你<a href="../html/regar.html">注册</a>|<a href="../html/login.html">登录</a></p>`;
            tt.innerHTML = s1;
        }

        loginbtn.onclick = function () {
            location.href = 'login.html';
        }

        out.onclick = function () {
            removeCookie('username');
            location.href = 'login.html';
        }
        let gun = document.querySelector('.site-nav-2 .gun');
        let gg = document.querySelector('.site-nav-2 .gg');
        let uid = getCookie('username');
        let url66 = '../api/select.php';
        let gstr66 = `SELECT *FROM goodinf WHERE user=${uid};`;
        getdata(url66, gstr66, res66 => {

            let pre1 = JSON.parse(res66);
            creat(pre1);
         
        });

        got = document.querySelector('.togou .goufix .got');

        function creat(arr) {
            // console.log(arr)

            let str = arr.map(item => {
                return ` <ul class="goodlist" data-id="${item.gid}"><a href="car.html">
            <img src="${item.src}" alt="">
            <span class="title">${item.gtitle}</span>
            <span class="num">${item.num}</span>
            <span class="price">￥${item.price}</span>
             </a>
             </ul>`;
            }).join('');
            // console.log(str);
            got.innerHTML = str;
            let ss = document.querySelectorAll('.goodlist .num');
            let price1 = document.querySelectorAll('.goodlist .price');
            let zongjia = document.querySelector('.nei .zongjia');

            let arrs = [];
            ss.forEach(item => {
                // console.log(item.innerHTML);
                arrs.push(item.innerHTML)
            });
            let arrs2 = [];
            price1.forEach(item => {
                let a = item.innerHTML.slice(1);
                arrs2.push(a)
            });
            let total1 = 0;
            let zongjia1 = 0;
            for (let i = 0; i < arrs.length; i++) {
                total1 += arrs[i] * 1;
                zongjia1 += arrs2[i] * arrs[i];
            }

            let total = document.querySelector('.nei .total');
            total.innerHTML = total1;
            numto.innerHTML = total1;
            gun.innerHTML = total1;
            zongjia.innerHTML = '￥' + zongjia1;
            let goubtn = document.querySelector('.nei .goubtn');
            goubtn.onclick = function () {
                location.href = 'car.html';
            }

        }




        gg.onclick = function () {
            location.href = 'car.html';
        }

    });

    $('.footer').load('footer1.html');

    let gid = decodeURI(location.search.slice(1));
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
    let user = getCookie('username');
    let url = '../api/select.php';
    let gstr = `SELECT *FROM goodinf WHERE user=${user};`;

    getdata(url, gstr, res => {
        let pre1 = JSON.parse(res);
        // console.log();
        let gnum = pre1.length;

        // console.log(pre1);
        let str = pre1.map(item => {
            return `
            <ul class="order-list clearfix" id="${item.gid}">
            <li class="selecter">
            <input type="checkbox" class="check">
        </li>
        <li class="img-box">
            <img src="${item.src}" alt="">
        </li>
        <li class="product">
            <p>${item.gtitle}</p>

        </li>
        <li class="market-price">
            <span>￥</span>
            <span class="price">${item.yuanjia}</span>
        </li>
        <li class="order-price">
            <span>￥</span>
          <span class="price">${item.price}</span>
        </li>   
        <li class="num">
            <div class="input-num clearfix">
                <span class="cut" data="cut">-</span>
                <input type="text" value="${item.num}" class="sumnum">
                <span class="add" data="add">+</span>
            </div>
        </li>
        <li class="operate">
            <span class="del">删除</span>
        </li>
         </ul>
           `;
        });
        // console.log(str);
        $('.goodbox .bd').html(str); //渲染数据

        let bd = document.querySelector('.goodbox .bd');
        let box = document.querySelector('.goodbox');
        let check = document.querySelectorAll('.bd .check');

        box.onclick = function (ev) {
            let name = ev.target.parentNode.parentNode.parentNode;
            if (name.tagName == 'UL') {
                let id = name.getAttribute('id');
                let url = '../api/select.php';
                let gstr = `SELECT *FROM goodinf WHERE gid=${id};`;
                getdata(url, gstr, res => {
                    let pre1 = JSON.parse(res);
                    let kucun = pre1[0].kucun;
                    jisuan(kucun);

                });
                let post = true;

                function jisuan(data1) {
                    let total = ev.target.parentNode.parentNode.childNodes[1].childNodes[3]
                    let num = total.value;
                    //数量加
                    if (ev.target.className == 'add') {
                        num++;
                        if (num >= data1 * 1) {
                            num = data1;
                            total.value = num;
                            post = false;
                        } else if (num <= 1) {
                            num = 1;
                            total.value = num;
                            post = false;
                        }
                        total.value = num;
                        post = true;
                        // 数量减
                    } else if (ev.target.className == 'cut') {
                        num--;
                        if (num >= data1 * 1) {
                            num = data1;
                            total.value = num;
                            post = false;
                        } else if (num <= 1) {
                            num = 1;
                            total.value = num;
                            post = false;
                        }
                        total.value = num;
                        post = true;

                    } else if (ev.target.className == 'sumnum') {
                        // console.log(ev.target);
                        ev.target.onchange = function () {
                            // console.log(666);
                            let sum1 = ev.target.value;
                            if (sum1 >= data1 * 1) {
                                sum1 = data1;
                                total.value = sum1;
                                post = false;
                            } else if (sum1 <= 1) {
                                sum1 = 1;
                                total.value = sum1;
                                post = false;
                            }
                            total.value = sum1;
                            post = true;
                            if (post) {
                                let id = name.getAttribute('id');
                                let url3 = '../api/other.php';
                                let str3 = `UPDATE goodinf SET num=${sum1} WHERE gid=${id} and user=${user};`;
                                getdata(url3, str3, res3 => {

                                });

                            }
                        }
                    }
                    post = true;
                    if (post) {
                        let id = name.getAttribute('id');
                        let url3 = '../api/other.php';
                        let str3 = `UPDATE goodinf SET num=${num} WHERE gid=${id} and user=${user};`;
                        getdata(url3, str3, res3 => {


                        });
                    }

                }


            }

            function getindex() {
                let arr = []; //存被勾选那行的下标
                $('.selecter input').each((index, item) => {
                    if ($(item).prop('checked')) {
                        arr.push(index);
                    }
                });
                return arr;
            }
            let a = 0;
            let total = 0;

            function totalPrice() {
                //统计总数量和总价
                let arr = getindex();
                // console.log(arr);
                //总价
                a = arr.length;
                // console.log(a);
                let danjia = 0;
                let num = 0;
                // let price = 0;
                let arr1 = [];
                let arr2 = [];
                arr.forEach(item => {
                    //item是arr的内容，作为下标使用
                    danjia = $('.bd .order-price .price').eq(item).html() * 1;
                    arr1.push(danjia);
                    num = $('.input-num .sumnum').eq(item).val() * 1;
                    arr2.push(num);


                });
                let totalPrice1 = 0;
                for (let i = 0; i < arr1.length; i++) {
                    totalPrice1 += arr1[i] * arr2[i];
                }
                $('.set-bar .price-num').html(totalPrice1);
            
            }
            if (ev.target.className == 'check') {
                totalPrice();
            }
            totalPrice();
            let uid = getCookie('username');
            let jiesuan = document.querySelector('.set-bar .btn');
            jiesuan.onclick = function () {
                if (a) {
                    let url4 = '../api/other.php';
                    let gstr4 = `INSERT INTO shopp(uid,stotal,zongjia)VALUES (${uid},${a},${total});`;
                    getdata(url4, gstr4, res4 => {
                        console.log(res4);
                        if (res4 == 1) {
                            alert('结算成功');
                            let isok = confirm('是否前往继续购物？');
                            if (isok) {
                                location.href = '../html/list.html';
                            } else {
                                location.href = '../html/login.html';
                            }
                        } else {
                            alert('结算失败');
                        }
                    });
                }



            }

            if (ev.target.className == 'del') {
                // console.log(6666);
                // ev.stopPropagation();
                let id = ev.target.parentNode.parentNode.getAttribute('id');
                let bd = document.querySelector('.bd');

                let u1 = ev.target.parentNode.parentNode;
                if (u1.tagName == 'UL') {
                    let isok = confirm('你真的要删除么？');
                    // console.log(666);
                    if (isok) {
                        let url4 = '../api/other.php';
                        let gstr4 = `DELETE FROM goodinf WHERE gid=${id};`;
                        getdata(url4, gstr4, res4 => {
                            if (res4 == 1) {
                                alert('删除成功');
                                bd.removeChild(ev.target.parentNode.parentNode);
                                let gun = document.querySelector('.site-nav-2 .gun');
                                let uid = getCookie('username');
                                let url66 = '../api/select.php';
                                let gstr66 = `SELECT *FROM goodinf WHERE user=${uid};`;
                                getdata(url66, gstr66, res66 => {
                                    // console.log(res);
                                    let pre1 = JSON.parse(res66);
                                    // console.log(pre1);
                                    if (pre1.length) {
                                        gun.innerHTML = pre1.length;
                                    } else {
                                        gun.innerHTML = 0;
                                    }
                                });
                            } else {
                                alert('删除失败');
                            }
                        });
                    }

                }


            }




        }










    });







})();