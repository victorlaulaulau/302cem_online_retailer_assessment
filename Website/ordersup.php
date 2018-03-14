<?php
require('func/config.php');

?>
<h2>Order Form for eshopABC staff</h2>
<form method="post" action="ordersupdb.php">
  Company Name: <input type="text" name="company_name" value="eshopABC"><br><br>
  Contact Person: <input type="text" name="contact_person" value=""><br><br>
  Contact Number: <input type="text" name="contact_number" value=""><br><br>
  Address: <input type="textbox" name="address" value=""><br><br>
  Order Product ID (eshopABC product id): <input type="text" name="product_id" value=""><br><br>
  Order Product Name (eshopABC product Name): <input type="text" name="product_name" value=""><br><br>
Quantity: <input type="text" name="quantity" value="">
<input type="submit" value="Order">
<input type="reset">
