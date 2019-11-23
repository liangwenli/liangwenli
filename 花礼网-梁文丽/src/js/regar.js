(function () {
    //获取随机验证码
    var text1 = document.getElementById('text1');
    var btn1 = document.getElementById('btn1');
    var code;
    btn1.onclick = function () {
        createCode()
    }

    function createCode() {
        code = "";
        var codeLength = 4; //验证码的长度
        var checkCode = document.getElementById("btn1");
        var codeChars = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
            'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's',
            't', 'u',
            'v', 'w', 'x', 'y', 'z',
            'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S',
            'T', 'U',
            'V', 'W', 'X', 'Y', 'Z'); //所有候选组成验证码的字符，当然也可以用中文的
        for (var i = 0; i < codeLength; i++) {
            var charNum = Math.floor(Math.random() * 52);
            code += codeChars[charNum];
        }
        if (checkCode) {
            // checkCode.className = "code";
            checkCode.value = code;
        }
    }
    createCode();
    // var val = btn1.val;
    var ipt = document.querySelector("#text1");
    var pan = document.querySelector(".pan");
    ipt.onblur = function () {
        var inputCode = document.querySelector("#btn1").value.trim();
        var val = document.querySelector("#text1").value;
        if (inputCode.length <= 0) {
            pan.innerText = "x";
            pan.style.color = "red";
        } else if (inputCode.toUpperCase() != val.toUpperCase()) {
            pan.innerText = "x";
            pan.style.color = "red";
            // createCode();
        } else {
            pan.innerText = "√";
            pan.style.color = "green";
        }
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
    //手机号验证
    let inputs = document.querySelectorAll('.attr2 input');
    let t1 = inputs[0].value.trim();
    let t2 = inputs[1].value.trim();
    let t5 = inputs[5].value.trim();
    // console.log(inputs)

    inputs[0].onblur = function () {
        let t1 = inputs[0].value.trim();
        let span1 = document.querySelector('.account .pan1');
        if (t1) {
            let url = '../api/check.php';
            let str = `SELECT *FROM useinf WHERE tel=${t1}`;
            ajax({
                type: 'get',
                url: url,
                data: {
                    sql1: str
                },
                success: str => {
                    // console.log(str);

                    resolve(str); //把DOM操作放到外面进行
                    // fn(str);
                }
            });

        } else {
            span1.innerText = "x";
            span1.style.color = "red";
        }

        function resolve(data) {
            // console.log(data);
            if (data == 1) {
                var res = checkReg.tel(t1);
                // console.log(res);
                if (res == true) {
                    span1.innerText = "√";
                    span1.style.color = "green";
                } else {
                    span1.innerText = "x";
                    span1.style.color = "red";

                }
            } else {
                alert('手机号已注册');
            }
        }



    }

    //注册验证
    let login = document.querySelector('.login-btn');
    login.onclick = function () {
        let inputs = document.querySelectorAll('.attr2 input');
        let t1 = inputs[0].value.trim();
        let t2 = inputs[1].value.trim();
        let t5 = inputs[5].value.trim();
        // console.log(t1, t2, t5);
        if (t1 && t5 && t2) {
            let url = '../api/other.php';
            let prestr = `INSERT INTO useinf(tel, PASSWORD) VALUES(${t1}, '${t5}')`;
            getdata(url, prestr, res => {
                console.log(res);
                if (res == 1) {
                    let isok = confirm('是否前往登录？');
                    if (isok) {
                        location.href = 'login.html?';
                    }

                }

            });
        } else {
            alert('请输入手机号码、密码或验证码');
        }
    }







})();