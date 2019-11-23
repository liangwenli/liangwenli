(function () {
    let muen = document.querySelectorAll(".muen");
    // console.log(muen);

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
    let prestr = `SELECT *FROM nav LIMIT 0,5;`;
    getdata(url, prestr, res => {
        let pre1 = JSON.parse(res);
        // console.log(pre1);
        let str = pre1.map(item => {
            return `
                  <a href="" data-navid="${item.id}">
                  <img src="${item.url1}" alt="">
                   <span>${item.title}</span>
                  </a>
                    `;
        });
        // console.log(str);
        $('.imList .link-img').html(str); //渲染数据
    });

    let prestr1 = `SELECT *FROM nav LIMIT 5,72;`;
    getdata(url, prestr1, res => {
        let pre1 = JSON.parse(res);
        // console.log(pre1);
        let str1 = '';
        for (let i = 0; i <= 13; i++) {
            str1 += `
            <a href="">
            <img src="${pre1[i].url1}" alt="">
             <span>${pre1[i].title}</span>
            </a>
              `;
        }
        $('.birList .link-img1').html(str1); //渲染数据
        let str2 = '';
        for (let i = 14; i < pre1.length - 17; i++) {
            str2 += `
            <a href="">
            ${pre1[i].title}
            </a>
              `;
        }
        $('.birList .link-text').html(str2);


    });


    //左边的导航
    let wastr1 = `SELECT *FROM listl;`;
    getdata(url, wastr1, res11 => {
        let pre1 = JSON.parse(res11);
        // console.log(pre1);
        str11 = '';
        for (let i = 1; i <= 14; i++) {
            str11 += ` <li data-gid="${i}">
                                        <a href="html/list.html" >
                                        ${pre1[i].item}
                         </a>
                        </li>
                      `;
        }
        // console.log(str11);
        $('.con .item1 .list').html(str11); //渲染数据
        str12 = '';
        for (let i = 14; i <= 26; i++) {
            str12 += ` <li data-gid="${i}">
                                        <a href="html/list.html" >
                                        ${pre1[i].item}
                         </a>
                        </li>
                      `;
        }
        // console.log(str11);
        $('.con .item2 .list').html(str12); //渲染数据

        str13 = '';
        for (let i = 27; i <= 33; i++) {
            str13 += ` <li data-gid="${i}">
                                        <a href="html/list.html" >
                                        ${pre1[i].item}
                         </a>
                        </li>
                      `;
        }
        // console.log(str11);
        $('.con .item3 .list').html(str13); //渲染数据
        str14 = '';
        for (let i = 34; i <= 41; i++) {
            str14 += ` <li data-gid="${i}">
                                        <a href="html/list.html" >
                                        ${pre1[i].item}
                         </a>
                        </li>
                      `;
        }
        // console.log(str11);
        $('.con .item4 .list').html(str14); //渲染数据
        str15 = '';
        for (let i = 42; i <= 48; i++) {
            str15 += ` <li data-gid="${i}">
                                        <a href="html/list.html" >
                                        ${pre1[i].item}
                         </a>
                        </li>
                      `;
        }
        // console.log(str11);
        $('.con .item5 .list').html(str15); //渲染数据
        str16 = '';
        for (let i = 49; i <= 63; i++) {
            str16 += ` <li data-gid="${i}">
                                        <a href="html/list.html" >
                                        ${pre1[i].item}
                         </a>
                        </li>
                      `;
        }
        // console.log(str16);
        $('.con .item6 .list').html(str16); //渲染数据
    });



    // //商品列表


    // // let list = document.getElementById('list');
    // let good = document.querySelector('.grid-wrapper .good ');
    // console.log(good);
    // // let more = document.getElementById('pages');
    // let load = document.getElementById('loading');
    // let ipage = 1;
    // let num = 8;

    // //初始化数据渲染
    // function init() {
    //     ajax({
    //         type: 'get',
    //         url: '../api/getpage.php',
    //         data: {
    //             page: ipage,
    //             num: num
    //         },
    //         success: str => {
    //             // console.log(str);
    //             let arr = JSON.parse(str);
    //             // console.log(arr);
    //             //渲染数据到页面
    //             creat(arr);
    //             isok = true;
    //         }
    //     });
    // }

    // init();

    // function creat(arr) {
    //     // console.log(arr);
    //     let str = arr.list.map(item => {
    //         return ` 
    //         <li class="" data-gid="${item.num}">
    //             <a href="detail.html" class="box">
    //                 <img src="${item.src}" alt="">
    //                 <p class="price">￥${item.price}</p>
    //                 <p class="title1">${item.title}</p>
    //                 <p class="title2">${item.name}</p>

    //             </a>
    //             <div class="ico">
    //                 <a href="car.html">
    //                     <span class="icon icon-icon-test"></span>收藏
    //                 </a>
    //                 <a href="car.html">
    //                     <span class="icon icon-gouwuche"></span>购物车
    //                 </a>
    //             </div>
    //         </li>
    //       `;
    //     }).join('');
    //     // console.log(str);
    //     good.innerHTML += str; //渲染数据

    //     //加载更多按钮的显示隐藏
    //     let total = Math.ceil(arr.total / arr.num);
    //     if (total >= 2 && arr.page != total) {
    //         //可以显示
    //         load.style.display = 'block';
    //     } else {
    //         load.style.display = 'none';
    //         window.onscroll = null; //如果没有新数据了，就不能发送请求，减少服务器负担
    //     }
    // }

    // //滚动加载更多：懒加载款式2
    // let isok = true;
    // window.onscroll = () => {
    //     let scrollTop = window.scrollY;
    //     let ih = good.offsetTop + good.offsetHeight - window.innerHeight;
    //     if (scrollTop >= ih) {
    //         //加载下一页
    //         if (isok) {
    //             ipage++;
    //             isok = false; //进来就关掉开发防止多次达到临界值，不断ipage++
    //             load.style.display = 'block';
    //             setTimeout(() => {
    //                 load.style.display = 'none';
    //                 init();
    //             }, 2000);
    //         }
    //         // console.log(666);
    //         // ipage++;
    //         // // console.log(ipage);
    //         // init();
    //     }
    // }



})();