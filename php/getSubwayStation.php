<?php
header('Content-Type:text/plain;charset=utf-8');
$lineName = $_POST['linename'];
$stationNo = $_POST['stationNo'] + 1;
$stationName = $_POST['stationname'];
$lng = $_POST['lng'];
$lat = $_POST['lat'];

$mysql_server_name = '***';
$mysql_user_name = '***';
$mysql_passwd = '***';
$mysql_database = '***';
$con = mysqli_connect($mysql_server_name, $mysql_user_name, $mysql_passwd, $mysql_database);	// connect mysql
mysqli_query($con, 'SET NAMES utf8');

$insertsql = "INSERT INTO subwaystation (line, stationno, stationname, x, y) VALUES ('{$lineName}', '{$stationNo}', '{$stationName}', '{$lng}', '{$lat}');";
if(mysqli_query($con, $insertsql))
{
	$status = 0;
	$arr = array('status'=>$status);
	$json_b2f = json_encode($arr);
	echo $json_b2f;				
}
else
{
	$status = 3;
	$arr = array('status'=>$status);
	$json_b2f = json_encode($arr);
	echo $json_b2f;				
}
?>
