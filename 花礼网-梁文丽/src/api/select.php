<?php
//接口整理方案二：准备两个接口：select

header("Content-type:text/html;charset=utf-8");

include 'conn.php';

$sql = isset($_REQUEST['sql']) ? $_REQUEST['sql'] : ''; //sql语句是传过来
$conn->set_charset('utf8');

$res = $conn->query($sql);

$arr = $res->fetch_all(MYSQLI_ASSOC);

echo json_encode($arr, JSON_UNESCAPED_UNICODE); //把数组转成字符串，传给前端

//3.关闭连接
$res->close(); //关闭结果集
$conn->close();//关闭数据库
