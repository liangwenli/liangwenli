// var box = document.getElementById('J_navMenu');
var box = document.querySelector('.dropdown-cate .stature');
var as = box.getElementsByTagName('a');
var headerlist = [];
for (var i = 0; i < as.length; i++) {
    var headerCh = {};
    headerCh.text = as[i].inerHTML;
    headerlist.push(headerCh);
}

var box = document.querySelector('.dropdown-cate .stature');
var imgs = box.getElementsByTagName('a');
var headerlist = [];
for (var i = 0; i < imgs.length; i++) {
    var headerCh = {};
    headerCh.url = imgs[i].src;
    headerlist.push(headerCh);
}
var box = document.querySelector('.dropdown-cate .lright-menu .link-img');
var as = box.getElementsByTagName('a');
var list = [];
for (var i = 0; i < as.length; i++) {
    var headerCh = {};
    headerCh.text = as[i].text;
    list.push(headerCh);
}


let box1 = document.querySelector('.floor .floor-products')[0];
let imgs2 = document.querySelectorAll('floor .floor-products img');
var list2 = [];
for (var i = 0; i < imgs2.length; i++) {
    list2.src = imgs2[i].src;
}

let a56 = document.querySelectorAll('.navigation .itemm a');
var a567 = [];
for (var i = 0; i < cons.length; i++) {
    var headerCh = {};
    headerCh.item = cons[i].innerHTML;
    a567.push(headerCh);
}
JSON.stringify(a567);