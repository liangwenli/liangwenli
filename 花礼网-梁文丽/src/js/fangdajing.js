(function () {
    var bigimgs = document.querySelector('.pic .picr');
    var m1 = document.querySelector('.bigpic .m1');
    var minpics = document.querySelectorAll('.minpic img');
    var m2 = document.querySelector('.img .pic');
    // console.log(minpics);
    // console.log(bigimgs.src);
    //高亮
    for (var i = 0; i < minpics.length; i++) {
        minpics[i].index = i;
        minpics[i].onclick = function () {
            // console.log(minpics[this.index]);
            for (var j = 0; j < minpics.length; j++) {
                minpics[j].className = '';
            }
            minpics[this.index].className = 'mimg'
        }

    }
    //小图换大图
    for (var i = 0; i < minpics.length; i++) {
        minpics[i].index = i;
        minpics[i].onclick = function () {

            m1.src = this.src;
            bigimgs.src = this.src;
            // console.log(this.src);
            // console.log(bigimgRs.src);

        }


    }



    //1.鼠标移入main；mark和bigpic显示；
    var imgbox = document.querySelector('.good .img');
    var m1 = document.querySelector('.bigpic .m1');
    var bigpic = document.querySelector('.img .bigpic');
    var mask = document.querySelector('.img .mask');
    var m2 = document.querySelector('.img .pic');
    // console.log(m2);
    bigpic.onmouseover = function () {
        mask.style.display = 'block';
        m2.style.display = 'block';
    }
    bigpic.onmouseout = function () {
        mask.style.display = 'none';
        m2.style.display = 'none';
    }
    // 3.鼠标滑动的时候，遮罩mark跟着光标走；注意临界值；保持光标在遮罩的中央，但是不能过界；

    // var bigpicMove = biger.children[0];
    bigpic.onmousemove = function (ev) {
        // console.log(imgbox.offsetTop);
        var left = ev.pageX - imgbox.offsetLeft - mask.offsetWidth / 2;
        var top = ev.pageY - imgbox.offsetTop - 170 - mask.offsetHeight / 2;
        // console.log(top);
        if (left <= 0) {
            left = 0;

        } else if (left >= bigpic.offsetWidth - mask.offsetWidth) {
            left = bigpic.offsetWidth - mask.offsetWidth;
        }
        if (top <= 0) {
            top = 0;
        } else if (top >= bigpic.offsetHeight - mask.offsetHeight) {
            top = bigpic.offsetHeight - mask.offsetHeight;
        }
        // console.log(top);
        //遮罩的运动

        mask.style.left = left + 'px';
        mask.style.top = top + 'px';
        //5.难点：遮罩mark在运动的时候，大图bigpic里面的图片要跟着运动，用比例系数约束；大图运动是朝着左上角运动，所以left和top值都是负数；运动计算公式：var left = (大图盒子宽度 - 里面图片宽) * 比例系数；比例系数：var scal = 遮罩的left / 遮罩最大运动距离；
        var pic = document.querySelector('.img .pic');
        var picMove = document.querySelector('.pic .picr');
        // console.log(picMove);
        //大图运动 bigpicMove
        var scalX = left / (bigpic.offsetWidth - mask.offsetWidth);
        // console.log(scalX);
        var scalY = top / (bigpic.offsetHeight - mask.offsetHeight);

        // var iLift = (pic.offsetWidth - picMove.offsetWidth) * scalX;
        // // console.log(iLift);
        // var iTop = (pic.offsetHeight - picMove.offsetHeight) * scalY;
        var iLift = (pic.offsetWidth - picMove.offsetWidth) * scalX;
        // console.log(iLift);
        var iTop = (pic.offsetHeight - picMove.offsetHeight) * scalY;
        picMove.style.left = iLift + 'px';
        picMove.style.top = iTop + 'px';

    }


})();