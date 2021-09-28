<?php
function connect_db()
{
	$mysql_hostname = "localhost";
	$mysql_user = "root";
	$mysql_password = "";
	$mysql_database = "test";

    $dbc = mysqli_connect($mysql_hostname, $mysql_user, $mysql_password, $mysql_database) or die("Opps some thing went wrong 1");
	return $dbc;
}
$dbc = connect_db();

$response = array("gds" => array());
$q = "SELECT * FROM general_diary";
$r = mysqli_query($dbc, $q);

if(mysqli_num_rows($r)>0){
	while(($row=mysqli_fetch_assoc($r))!=0){
		$response["gds"][] = array("key"=>$row["gd_key"], "value"=>$row["gd_value"], "status"=>$row["gd_status"]);
	}
}

$json = json_encode($response,JSON_HEX_TAG | JSON_HEX_APOS | JSON_HEX_QUOT | JSON_HEX_AMP | JSON_UNESCAPED_UNICODE);
echo $json;

?>