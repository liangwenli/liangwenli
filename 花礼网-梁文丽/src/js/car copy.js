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
    let user = getCookie('username');
    let url = '../api/select.php';
    let gstr = `SELECT *FROM goodinf WHERE user=${user};`;

    getdata(url, gstr, res => {
        let pre1 = JSON.parse(res);
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
            <span class="price">${item.price}</span></li>
        <li class="num">
            <div class="input-num clearfix">
                <span class="cut" data="cut">-</span>
                <input type="text" value="${item.num}" class="sumnum">
                <span class="add" data="add">+</span>
            </div>
        </li>
        <li class="operate">
            <span>删除</span>
        </li>
         </ul>
           `;
        });
        // console.log(str);
        $('.goodbox .bd').html(str); //渲染数据

        let bd = document.querySelector('.goodbox .bd');

        bd.onclick = function (ev) {
            // console.log(ev.target.parentNode)
            //查询对应商品id的库存量
            let ul = ev.target.parentNode.parentNode.parentNode;
            let id = ul.getAttribute('id');
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
                    ev.target.onchange = function () {
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
                        // console.log();
                        let ul = ev.target.parentNode.parentNode.parentNode;
                        let id1 = ul.getAttribute('id');
                        // console.log(id1);
                        if (post) {
                            let url3 = '../api/other.php';
                            let str3 = `UPDATE goodinf SET num=${sum1} WHERE gid=${id1} and user=${user};`;
                            getdata(url3, str3, res3 => {
                                console.log(res3);

                            });
                        }
                    }
                }
                post = true;
                if (post) {
                    let id = ul.getAttribute('id');
                    let url3 = '../api/other.php';
                    let str3 = `UPDATE goodinf SET num=${num} WHERE gid=${id} and user=${user};`;
                    getdata(url3, str3, res3 => {


                    });
                }

            }



            //选择按钮

            // console.log(ev.target.checked);
            let check = document.querySelector('.bd .check');
            let sumnum = document.querySelector('.bd .sumnum');

            if (ev.target.className == 'check') {

                if (check.checked == true) {
                    // console.log(666);
                    // console.log();
                    console.log(sumnum.value);
                }
            }
            // check.checked = true;
            // console.log(check);
            // if () {

            // }





        }





    });







})();