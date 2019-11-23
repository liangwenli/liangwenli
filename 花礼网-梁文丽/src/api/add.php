<?php
header("Content-type:text/html;charset=utf-8");
//连接数据库
include 'conn.php';

//接收前端数据
$src = isset($_REQUEST['src']) ? $_REQUEST['src'] : '';
//三目运算符
$price = isset($_REQUEST['price']) ? $_REQUEST['price'] : ''; //三目运算符
$title = isset($_REQUEST['title']) ? $_REQUEST['title'] : ''; //三目运算符
$yuanjia = isset($_REQUEST['yuanjia']) ? $_REQUEST['yuanjia'] : '';
//三目运算符
$uid = isset($_REQUEST['uid']) ? $_REQUEST['uid'] : ''; //三目运算符
$gid = isset($_REQUEST['gid']) ? $_REQUEST['gid'] : ''; //三目运算符


//查询语句
$sql = "INSERT INTO goodinf(gid,gtitle,src,yuanjia,price,uid,zongjia,num)VALUES ($src,'$title','$src',$yuanjia,$price,$uid,$price,1);";

$conn->set_charset('utf8');
//执行语句
$res = $conn->query($sql);
echo $res;

$conn->close();//关闭数据库
