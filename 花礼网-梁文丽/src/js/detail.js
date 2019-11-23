(function () {
    let good = document.querySelectorAll(".panel-body .panel-good");
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
    let prestr = `SELECT *FROM lgood LIMIT 0,6;`;
    getdata(url, prestr, res => {
        let pre1 = JSON.parse(res);
        let str = pre1.map(item => {
            return `
            <li data-id="${item.num}">
            <a href="car.html"  data-id="${item.num}">
                <img src="${item.src}" alt="">
                <p class="title">${item.title}</p>
                <p class="price">￥${item.price}</p>
            </a>
        </li>
                    `;
        });
        // console.log(str);
        $('.panel-body .panel-good').html(str); //渲染数据
    });
})();