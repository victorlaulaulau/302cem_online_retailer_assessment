<?php

session_start();

$id = $_REQUEST['post_id'];
$quantity = $_REQUEST['quantity'];

$result = [];
if ( !isset($_SESSION['cart_info'][$id])) {
    //  not exist session
    $result['code'] = -1;
    $result['ms'] = 'Not exist :(';
    echo json_encode($result);
    die;
}

$_SESSION['cart_info'][$id]['quantity'] = (int)$quantity;
// i need return cost of item, and total  ()


$result['code'] = 99;
$result['ms'] = 'Oke ';
$result['cost'] =  $quantity * $_SESSION['cart_info'][$id]['cost'];

$total = 0;
foreach ($_SESSION['cart_info'] as $item) {
    $total += $item['cost'] * $item['quantity'];
}
$result['total'] = $total;

echo json_encode($result);
die;

