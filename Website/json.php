<?php
require('func/config.php');
$arr = array();
$mysqli = new mysqli("localhost","root","@dmin302","eshop");
$result = mysqli_query($mysqli,"SELECT * FROM ordersup");
while($obj = mysqli_fetch_object($result)){
  $arr[] = $obj;
}
echo json_encode($arr);
var_dump($result);


?>
