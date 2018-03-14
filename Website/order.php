<?php
//get Cart Items
if(isset($_SESSION['Destination'])){

  header('Location: checkout.php?err=1');

}else {


//將購物車項目存儲到訂單表中

  require('func/config.php');
  //如果未登錄, 重新刷新登錄頁面
  if(!$user->is_logged_in()){ header('Location: login.php'); }

  $CustomerId = $_SESSION["uid"];

  //$Destination = $_SESSION['Destination'];

  //
  // check cookie exist
  if ( isset( $_COOKIE['sids']) &&  $_COOKIE['sids'] !='') {
      $aids = explode(',',$_COOKIE['sids']) ;

      // validate data
      foreach ($aids as $k => $val) {
          if (!is_numeric($val)) {
              unset($aids[$k]);
          }
      }

      $products = $user->getListProductByListIds($aids);


      // init session from cookie.
      foreach ($products as $item) {
          if (!isset($_SESSION['cart_info'][$item['id']]) ) {
              $temp = [];

              $temp['id'] = $item['id'];
              $temp['name'] = $item['name'];
              $temp['cost'] = $item['cost'];
              $temp['image'] = $item['image'];
              $temp['quantity'] = 1;  // default

              $_SESSION['cart_info'][$item['id']] = $temp;
          }
      }
  }
  //係DB 到攞 cart_info 資料
  if ( !isset($_SESSION['cart_info'])  || empty($_SESSION['cart_info']) ){
    header('Location: '.$_SERVER['HTTP_REFERER']);
  }else {


    foreach($_SESSION['cart_info'] as $item){
      $ItemId = $item['id'];
      $ItemName = $item['name'];
      $ItemImage = $item['image'];
      $Price = $item['cost'];
      $Quantity = $item['quantity'];
      $Total = $item['cost'] * $item['quantity'];
      $DateAdded = date('Y-m-d H:i:s');//落單時間格式
      $cartid = date('YmdHi') . $_SESSION['uid'];
	  $Fullname = $_POST['Fullname'];
      $address1 = $_POST['address1'];
      $address2 = $_POST['address2'];
      $address3 = $_POST['address3'];
      $address4 = $_POST['address4'];
	  $Phonenumber = $_POST['Phonenumber'];
      $status = 1;
      //$arr_address= array("$address1","$address2","$address3","$address4");
      //$_SESSION['Address'] = $arr_address;
      //$Address = $_SESSION['Address'];
    echo $Fullname;
    echo $address1;
    echo $address2;
    echo $address3;
    echo $address4;
    echo $Phonenumber;
      //save to table
      $stmt = $db->prepare('INSERT INTO customer_orders(CartId, ItemId, Name, Image, Price, Quantity, Total, DatePlaced, CustomerId, Destination, Fullname, Address1, Address2, Address3, Address4, Phonenumber, Status) VALUES (:CartId,:ItemId, :Name, :Image, :Price, :Quantity, :Total, :DatePlaced, :CustomerId, :Destination,:Fullname , :Address1, :Address2, :Address3, :Address4, :Phonenumber, :Status)') ;
      $stmt->bindParam(':CartId',$cartid);
      $stmt->bindParam(':ItemId',$ItemId);
      $stmt->bindParam(':Name',$ItemName);
      $stmt->bindParam(':Image',$ItemImage);
      $stmt->bindParam(':Price',$Price);
      $stmt->bindParam(':Quantity',$Quantity);
      $stmt->bindParam(':Total',$Total);
      $stmt->bindParam(':DatePlaced',$DateAdded);
      $stmt->bindParam(':CustomerId',$CustomerId);
      $stmt->bindParam(':Destination',$Destination);
      $stmt->bindParam(':Fullname',$Fullname);
      $stmt->bindParam(':Address1',$address1);
      $stmt->bindParam(':Address2',$address2);
      $stmt->bindParam(':Address3',$address3);
      $stmt->bindParam(':Address4',$address4);
      $stmt->bindParam(':Phonenumber',$Phonenumber);
      $stmt->bindParam(':Status',$status);
      $stmt->execute();

      //orders table

//      $deliveryCost = $user->destinationAmount($Destination);
//      $stmt2 = $db->prepare('INSERT INTO deliverycarts(CartId, DeliveryCost) VALUES (:CartId, :DeliveryCost)') ;
//      $stmt2->bindParam(':CartId',$cartid);
//      $stmt2->bindParam(':DeliveryCost',$deliveryCost);
//      $stmt2->execute();



    }

    unset($_SESSION['cart_info']);

    header('Location: order-placed.php');

  }

}
  ?>
