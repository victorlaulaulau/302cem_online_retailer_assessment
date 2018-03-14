<?php
$company_name = $contact_person = $contact_number = $address = $product_id = $product_name = $quantity = "0";
$company_name =$_POST['company_name'];
$contact_person = $_POST['contact_person'];
$contact_number = $_POST['contact_number'];
$address = $_POST['address'];
$product_id = $_POST['product_id'];
$product_name = $_POST['product_name'];
$quantity = $_POST['quantity'];
$mysql_date_now = date("Y-m-d H:i:s");

$mysqli = new mysqli("localhost","root","@dmin302","eshop");


mysqli_query($mysqli,"INSERT INTO ordersup (company_name,contact_person,contact_number,address,product_id,product_name,quantity,orderdatetime) VALUES ('$company_name','$contact_person','$contact_number','$address','$product_id','$product_name','$quantity','$mysql_date_now')");
?>
<a href="ordersup.php" target="_self"> Keep Order </a>
