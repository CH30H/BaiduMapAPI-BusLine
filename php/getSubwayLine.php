<?php
header('Content-Type:text/plain;charset=utf-8');
$lineName = $_POST['linename'];
$startTime = $_POST['start'];
$endTime = $_POST['end'];
$company = $_POST['company'];

$mysql_server_name = '***';
$mysql_user_name = '***';
$mysql_passwd = '***';
$mysql_database = '***';
$con = mysqli_connect($mysql_server_name, $mysql_user_name, $mysql_passwd, $mysql_database);	// connect mysql
mysqli_query($con, 'SET NAMES utf8');

$checksql = "SELECT * FROM subwaylinename WHERE linename = '{$lineName}';";
if($result = mysqli_query($con, $checksql))
{
	if(mysqli_num_rows($result))		// line exist
	{
		$status = 1;
		//$insertsql = "UPDATE subwaylinename SET company = '{$company}' WHERE linename = '{$lineName}';";
		//mysqli_query($con, $insertsql);
		mysqli_close($con);				// disconnect mysql

		$arr = array('status'=>$status);
		$json_b2f = json_encode($arr);
		echo $json_b2f;
	}
	else								// line doesn't exist
	{
		$insertsql = "INSERT INTO subwaylinename (linename, first, last) 
					VALUES ('{$lineName}', '{$startTime}', '{$endTime}');";
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
	}
}
else
{
	$status = 2;
	mysqli_close($con);				// disconnect mysql

	//echo $status;
	$arr = array('status'=>$status);
	$json_b2f = json_encode($arr);
	echo $json_b2f;
}

?>
