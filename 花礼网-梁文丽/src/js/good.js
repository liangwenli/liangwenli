//商品列表


// let list = document.getElementById('list');
let good = document.querySelector('.grid-wrapper .good ');
// console.log(good);
// let more = document.getElementById('pages');
let load = document.getElementById('loading');
let ipage = 1;
let num = 8;

//初始化数据渲染
function init() {
    ajax({
        type: 'get',
        url: '../api/getpage.php',
        data: {
            page: ipage,
            num: num
        },
        success: str => {
            // console.log(str);
            let arr = JSON.parse(str);
            // console.log(arr);
            //渲染数据到页面
            creat(arr);
            isok = true;
        }
    });
}

init();

function creat(arr) {
    // console.log(arr);
    let str = arr.list.map(item => {
        return ` 
            <li class="" data-gid="${item.num}">
                <a href="###" class="box">
                    <img src="${item.src}" alt="">
                    <p class="price">￥${item.price}</p>
                    <p class="title1">${item.title}</p>
                    <p class="title2">${item.name}</p>

                </a>
                <div class="ico">
                    <a href="###">
                        <span class="icon icon-icon-test"></span>收藏
                    </a>
                    <a href="###">
                        <span class="icon icon-gouwuche"></span>购物车
                    </a>
                </div>
            </li>
          `;
    }).join('');
    // console.log(str);
    good.innerHTML += str; //渲染数据
    //点击获取商品的id
    let lis = document.querySelectorAll('.grid-wrapper li');
    // console.log(lis);
    good.onclick = function (ev) {

        let g1 = ev.target.parentNode.parentNode;
        let g2 = ev.target.parentNode.parentNode.parentNode;
        if (g1.tagName == 'LI') {

            let id = g1.getAttribute('data-gid');
            location.href = 'detail.html?' + id;

        } else if (g2.tagName == 'LI') {
            let id = g2.getAttribute('data-gid');
            location.href = 'detail.html?' + 'id='
            id;

        }



    }




    //加载更多按钮的显示隐藏
    let total = Math.ceil(arr.total / arr.num);
    if (total >= 2 && arr.page != total) {
        //可以显示
        load.style.display = 'block';
    } else {
        load.style.display = 'none';
        window.onscroll = null; //如果没有新数据了，就不能发送请求，减少服务器负担
    }
}

//滚动加载更多：懒加载款式2
let isok = true;
window.onscroll = () => {
    let scrollTop = window.scrollY;
    let ih = good.offsetTop + good.offsetHeight - window.innerHeight;
    if (scrollTop >= ih) {
        //加载下一页
        if (isok) {
            ipage++;
            isok = false; //进来就关掉开发防止多次达到临界值，不断ipage++
            load.style.display = 'block';
            setTimeout(() => {
                load.style.display = 'none';
                init();
            }, 0);
        }

    }
}