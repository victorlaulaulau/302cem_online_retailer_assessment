<?php
require('func/config.php');

if(!$user->is_logged_in()){ header('Location: login.php'); }

if(isset($_GET['destination'])){
  $_SESSION['Destination'] = $_GET['destination'];
}

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

include('includes/front/header.php');?>

	<section id="cart_items">
		<div class="container">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
				  <li><a href="#">Home</a></li>
				  <li class="active">Check out</li>
				</ol>
			</div><!--/breadcrums-->


			<div class="review-payment">
				<h2>Review & Payment</h2>
			</div>

			<div class="table-responsive cart_info">
				<table class="table table-condensed">
					<thead>
						<tr class="cart_menu">
							<td class="image">Item</td>
							<td class="description"></td>
							<td class="price">Price</td>
							<td class="quantity">Quantity</td>
							<td class="total">Total</td>
							<td></td>
						</tr>
					</thead>
					<tbody>
						<!-- show product in cart -->
						<?php if ( !isset($_SESSION['cart_info'])  || empty($_SESSION['cart_info']) ): ?>
								<tr>
										<td colspan="20"> <h4>Your Shopping Cart Is Empty</h4> </td>
								</tr>
						<?php else: ?>
								<?php $payment_total = 0;?>
								<?php foreach($_SESSION['cart_info'] as $item): ?>

								<tr>
										<td class="cart_product">
												<a href=""><img style="width: 70px; height: 80px" alt="" src="<?php echo $item['image']?>"></a>
										</td>
										<td class="cart_description">
												<h4><a href=""><?php echo $item['name']?></a></h4>
												<p>ID: <?php echo $item['id']?> </p>
										</td>
										<td class="cart_price">
												<p>$ <?php echo $item['cost']?></p>
										</td>
										<td class="cart_quantity">
												<div class="cart_quantity_button">
														<?php echo $user->dropdown_select('quantity', $item['quantity'], $item['id'], $item['id'] );?>

												</div>
										</td>
										<td class="cart_total">
												<p id="total-item-<?php echo $item['id']?>" class="cart_total_price">$ <?php echo $item['cost'] * $item['quantity'];?></p>
										</td>

								</tr>
										<?php  $payment_total += $item['cost'] * $item['quantity']; ?>

								<?php endforeach; ?>
                <tr>
                  <td colspan="4">&nbsp;</td>
                  <td colspan="2">
                    <table class="table table-condensed total-result">

                        <form class="" action="order.php" method="post">
						
						<label><input type="radio" name="logistic" value="logistic1"> logistic 1 (Fast)</label>&ensp;&ensp;&ensp;
						<label><input type="radio" name="logistic" value="logistic2"> logistic 2 (Slow)</label>
						
                        <tr>
                          <td>Full name</td>
                          <td><input type="text" name="Fullname" /></td>
                        </tr>
                        <tr>
                          <td>Shipping Addresss 1</td>
                          <td>
                            <p><input type="text" name="address1" placeholder="e.g. Flat, Floor, Building" /></p>
                          </td>
                        </tr>
                        <tr>
                          <td>Shipping Addresss 2</td>
                          <td>
                            <p><input type="text" name="address2" placeholder="e.g. No., Street"/></p>
                          </td>
                        </tr>
                        <tr>
                          <td>Shipping Addresss 3</td>
                          <td>
                            <p><input type="text" name="address3" placeholder="e.g District"/></p>
                          </td>
                        </tr>
                        <tr>
                          <td>Shipping Addresss 4</td>
                          <td>
                            <p><input type="text" name="address4" placeholder="e.g. City, Country"/></p>
                          </td>
                        </tr>
                        <tr>
                          <td>Phone number</td>
                          <td><input type="text" name="Phonenumber" pattern='(0|\+?852)(\d){8}' placeholder="e.g. +85212345678"/></td>
                        </tr>
              <?php

                ?>
						  </td>
                        </tr>
                        <tr>
                          <td>Cart Sub Total</td>
                          <td>$ <?php echo $payment_total; ?></td>
                        </tr>
                        <tr>
                          <td>Delivery Cost</td>
                          <td><span id="payment-total">$ <?php $deliverycostA="200";
                            echo $deliverycostA;
                          ?></span></td>
                        </tr>

                        <tr>
                          <td>Total</td>
                          <td><span id="payment-total">$ <?php
                            echo $payment_total+$deliverycostA;
                           ?></span></td>
                        </tr>

                        <tr>
                            <td><button type="submit" class="btn btn-default check_out pull-right" >Check Out</button></td>
                          </form>
                        </tr>

                    </table>
                  </td>
                </tr>
						<?php endif;?>
					</tbody>
				</table>
			</div>
			<div class="payment-options">
					<span>
						<label><input type="radio" name="pay" value="DBT"> Direct Bank Transfer</label>
					</span>
					<span>
						<label><input type="radio" name="pay" value="CheckPayment"> Check Payment</label>
					</span>
					<span>
						<label><input type="radio" name="pay" value="Paypal"> Paypal</label>
					</span>
			</div>
		</div>
	</section> <!--/#cart_items-->
