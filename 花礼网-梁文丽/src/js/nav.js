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


    //楼层1
    // let floor1 = `SELECT *FROM ingood;`;
    // getdata(url, floor1, res1 => {
    //     let fl1 = JSON.parse(res1);
    //     console.log(fl1);
    //     let str1 = '';
    //     for (let i = 1; i <= 8; i++) {
    //         str1 += `
    //         <li data-gid="${i}">
    //                     <a href="html/list.html" target="_blank">
    //                             <img src="${fl1[i].url}" alt="" data-original="${fl1[i].url}">
    //                             <p>${fl1[i].title}</p>
    //                             <p class="price">￥${fl1[i].price}</p>
    //                             <p>${fl1[i].shou}</p>
    //                     </a>

    //                 </li>
    //           `;
    //     }
    //     console.log(str1);
    //     $('.f1 .floor-product').html(str1); //渲染数据
    // });
    // let url2 = 'api/select.php';
    // let instr = `SELECT *FROM ingood LIMIT 0,8;`;
    // getdata(url2, instr, res1 => {
    //     let g = JSON.parse(res1);
    //     // console.log(g);
    //     let str2 = g.map(item => {
    //         return `
    //         <li data-gid="${item.lid}">
    //                     <a href="html/list.html" target="_blank">
    //                             <img src="${item.url}" alt="">
    //                             <p>${item.title}</p>
    //                             <p class="price">￥${item.price}</p>
    //                             <p>${item.shou}</p>
    //                     </a>
                      
    //                 </li>
    //           `;

    //     }).join('');
    //     // console.log(str2);
    //     $('.f1 .floor-product').html(str2); //渲染数据
    // });





    // var img1 = [];
    // for (var i = 0; i < imgs.length; i++) {
    //     var proChs = {};
    //     proChs.url = imgs[i].src;
    //     img1.push(proChs);
    // }
    // JSON.stringify(img1);

    // var a1 = [];
    // for (var i = 0; i < ti.length; i++) {
    //     var t = {};
    //     t.title = ti[i].innerHTML;
    //     a1.push(t);
    // }
    // JSON.stringify(a1);

    // var a2 = [];
    // for (var i = 0; i < pi.length; i++) {
    //     var t = {};
    //     t.price = pi[i].innerHTML;
    //     a2.push(t);
    // }
    // JSON.stringify(a2);

})();