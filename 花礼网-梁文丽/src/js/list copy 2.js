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
    let zhoonghe = document.querySelector('.zhoonghe');
    let xiaoliang = document.querySelector('.xiaoliang');

    filterbar.onclick = function (ev) {
        if (ev.target.className == 'xiaoliang') {
            let url33 = '../api/select.php';
            let prestr33 = `SELECT *FROM nav LIMIT 0,5;`;
            

        }
    }
    xiaoliang.onclick = function () {

        zonghe();
    }
    // let isok1 = true;
    zhoonghe.onclick = function () {

        zonghe();
    }

    function zonghe() {
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
    }
    zonghe();


    //左边的导航
    let url = '../api/select.php';
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



})();