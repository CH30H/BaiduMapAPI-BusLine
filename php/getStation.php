<?php
header('Content-Type:text/plain;charset=utf-8');
$lineName = $_POST['linename'];
$stationNo = $_POST['stationNo'] + 1;
$stationName = $_POST['stationname'];
$lng = $_POST['lng'];
$lat = $_POST['lat'];
$enterStatus = $_POST['status'];

$mysql_server_name = '***';
$mysql_user_name = '***';
$mysql_passwd = '***';
$mysql_database = '***';
$con = mysqli_connect($mysql_server_name, $mysql_user_name, $mysql_passwd, $mysql_database);	// connect mysql
mysqli_query($con, 'SET NAMES utf8');

if($enterStatus == 0)// new
{
	$insertsql = "INSERT INTO station (line, stationno, stationname, x, y) VALUES ('{$lineName}', '{$stationNo}', '{$stationName}', '{$lng}', '{$lat}');";
	if(mysqli_query($con, $insertsql))
	{
		$status = 0;//success
		$arr = array('status'=>$status);
		$json_b2f = json_encode($arr);
		echo $json_b2f;				
	}
	else
	{
		$status = 3;	//mysql wrong
		$arr = array('status'=>$status);
		$json_b2f = json_encode($arr);
		echo $json_b2f;				
	}	
}
else if($enterStatus == 1)
{
	$checksql = "SELECT * FROM station WHERE line = '{$lineName}' AND stationname = '{$stationName}';";
	if($result = mysqli_query($con, $checksql))
	{
		if(mysqli_num_rows($result))		// line exist
		{
			$status = 1;	//exist
			mysqli_close($con);				// disconnect mysql

			//echo $status;
			$arr = array('status'=>$status);
			$json_b2f = json_encode($arr);
			echo $json_b2f;			

		}
		else								// line doesn't exist
		{
			$insertsql = "INSERT INTO station (line, stationno, stationname, x, y) VALUES ('{$lineName}', '{$stationNo}', '{$stationName}', '{$lng}', '{$lat}');";
			if(mysqli_query($con, $insertsql))
			{
				$status = 0;				//success
				mysqli_close($con);
				$arr = array('status'=>$status);
				$json_b2f = json_encode($arr);
				echo $json_b2f;				
			}
			else
			{
				$status = 3;				//mysql wrong
				mysqli_close($con);
				$arr = array('status'=>$status);
				$json_b2f = json_encode($arr);
				echo $json_b2f;				
			}
		}
	}
	else
	{
		$status = 2;					// mysql wrong
		mysqli_close($con);				// disconnect mysql

		//echo $status;
		$arr = array('status'=>$status);
		$json_b2f = json_encode($arr);
		echo $json_b2f;
	}
}
else
{
	$status = 4;						//status wrong
	$arr = array('status'=>$status);
	$json_b2f = json_encode($arr);
	echo $json_b2f;		
}
?>
