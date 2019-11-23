(function () {
    $('.header').load('html/head1.html', function () {

        let loginbtn = document.getElementById('loginbtn');
        let out = document.querySelector('#out');
        let name = getCookie('username');
        let regar = document.querySelector('#regar');
        let tt = document.querySelector('.li1 .geren .tt');
        if (name) {
            loginbtn.innerHTML = '你好' + name;
            let s1 = '';
            s1 = `<p style="color: #ff6600;">你好！欢迎到花礼网</p>`;
            tt.innerHTML = s1;
        } else {
            let s1 = '';
            s1 = `<p>你好！请你<a href="html/regar.html">注册</a>|<a href="html/login.html">登录</a></p>`;
            tt.innerHTML = s1;
        }

        loginbtn.onclick = function () {
            location.href = 'html/login.html';
        }
        regar.onclick = function () {
            location.href = 'html/regar.html';
        }
        out.onclick = function () {
            removeCookie('username');
            removeCookie('gnum');
            location.href = 'html/login.html';
        }
        let gun = document.querySelector('.site-nav-2 .gun');

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
        let uid = getCookie('username');
        let numto = document.querySelector('.li2 .num');
        let url = 'api/select.php';
        let gstr = `SELECT *FROM goodinf WHERE user=${uid};`;
        getdata(url, gstr, res => {
            let pre1 = JSON.parse(res);
            // console.log(pre1);
            if (pre1.length) {
                // gun.innerHTML = pre1.length;
                // numto.innerHTML = pre1.length;
            } else {
                // gun.innerHTML = 0;

            }
            creat(pre1);
        });
        let gg = document.querySelector('.site-nav-2 .gg');
        gg.onclick = function () {
            location.href = 'html/car.html';
        }
        got = document.querySelector('.togou .goufix .got');

        function creat(arr) {
            // console.log(arr)

            let str = arr.map(item => {
                return ` <ul class="goodlist" data-id="${item.gid}"><a href="html/car.html">
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
                location.href = 'html/car.html';
            }

        }





    });

    $('.footer').load('html/footer2.html');


    let muen = document.querySelectorAll(".muen");

    //banner
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
    let url = 'api/select.php';
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

    //轮播图
    var swiper = new Swiper('.swiper-container', {
        autoplay: { //自动轮播
            delay: 2000, //间隔时间
            disableOnInteraction: false //拖拽完后还能继续自动轮播
        },
        loop: true, //无缝 环路
        navigation: { //上下按钮
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev'
        },
        pagination: { //焦点跟随
            el: '.swiper-pagination',
            clickable: true, //点击焦点跳到指定图片
            renderBullet: function (index, className) {
                return '<span class="' + className + '">' + (index + 1) + '</span>'; //生成焦点数字
            }
        },
        mousewheel: true //滚动滑轮可以切图
        // effect: 'cube'//选用:效果
    });

    var oBox = document.getElementById('swiper-container');

    oBox.onmouseover = function () { //鼠标经过停止
        s1.autoplay.stop();
    }

    oBox.onmouseout = function () { //鼠标离开就运动
        s1.autoplay.start();
    }


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


    //内容 fl
    let url2 = 'api/select.php';
    let instr = `SELECT *FROM ingood LIMIT 0,8;`;
    getdata(url2, instr, res1 => {
        let g = JSON.parse(res1);
        // console.log(g);
        let str2 = g.map(item => {
            return `
            <li data-gid="${item.gid}">
                        <a href="html/list.html" target="_blank">
                                <img src="${item.url}" alt="">
                                <p>${item.title}</p>
                                <p class="price">￥${item.price}</p>
                                <p>${item.shou}</p>
                        </a>
                      
                    </li>
              `;

        }).join('');
        // console.log(str2);
        $('.f1 .floor-product').html(str2); //渲染数据
    });
    //内容 f2
    let instr2 = `SELECT *FROM ingood LIMIT 8,8;`;
    getdata(url2, instr2, res2 => {
        let g = JSON.parse(res2);
        // console.log(g);
        let str22 = g.map(item => {
            return `
            <li data-gid="${item.id}">
                        <a href="html/list.html" target="_blank">
                                <img src="${item.url}" alt="">
                                <p>${item.title}</p>
                                <p class="price">￥${item.price}</p>
                                <p>${item.shou}</p>
                        </a>
                      
                    </li>
              `;

        }).join('');
        // console.log(str22);
        $('.f2 .floor-product').html(str22); //渲染
    });

    //内容 f3
    let instr3 = `SELECT *FROM ingood LIMIT 16,8;`;
    getdata(url2, instr3, res3 => {
        let g = JSON.parse(res3);
        // console.log(g);
        let str22 = g.map(item => {
            return `
         <li data-gid="${item.id}">
                     <a href="html/list.html" target="_blank">
                             <img src="${item.url}" alt="">
                             <p>${item.title}</p>
                             <p class="price">￥${item.price}</p>
                             <p>${item.shou}</p>
                     </a>
                   
                 </li>
           `;

        }).join('');
        // console.log(str22);
        $('.f3 .floor-product').html(str22); //渲染
    });
    //内容 f4
    let instr4 = `SELECT *FROM ingood LIMIT 24,8;`;
    getdata(url2, instr4, res4 => {
        let g = JSON.parse(res4);
        // console.log(g);
        let str22 = g.map(item => {
            return `
         <li data-gid="${item.id}">
                     <a href="html/list.html" target="_blank">
                             <img src="${item.url}" alt="">
                             <p>${item.title}</p>
                             <p class="price">￥${item.price}</p>
                             <p>${item.shou}</p>
                     </a>
                   
                 </li>
           `;

        }).join('');
        // console.log(str22);
        $('.f4 .floor-product').html(str22); //渲染
    });

    //内容 f5
    let instr5 = `SELECT *FROM ingood LIMIT 32,8;`;
    getdata(url2, instr5, res5 => {
        let g = JSON.parse(res5);
        // console.log(g);
        let str22 = g.map(item => {
            return `
          <li data-gid="${item.gid}">
                      <a href="html/list.html" target="_blank">
                              <img src="${item.url}" alt="">
                              <p>${item.title}</p>
                              <p class="price">￥${item.price}</p>
                              <p>${item.shou}</p>
                      </a>
                    
                  </li>
            `;

        }).join('');
        // console.log(str22);
        $('.f5 .floor-product').html(str22); //渲染
    });
})();