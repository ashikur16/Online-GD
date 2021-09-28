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


$key = $_REQUEST['key'];
$gd = $_REQUEST['gd'];
$status = $_REQUEST['status'];

$sql = "UPDATE general_diary SET gd_status='$status' WHERE gd_key='$key'";


$response = array("msg" => "");
if(mysqli_query($dbc, $sql)) {
  $response["msg"] = "GD updated successfully";
} else {
  $response["msg"] = "Error: " . $sql . "; " . mysqli_error($dbc);
}

$json = json_encode($response,JSON_HEX_TAG | JSON_HEX_APOS | JSON_HEX_QUOT | JSON_HEX_AMP | JSON_UNESCAPED_UNICODE);

echo $json;

?>