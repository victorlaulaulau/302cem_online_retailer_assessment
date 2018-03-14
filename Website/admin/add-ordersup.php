<?php
	$pagetitle ="Add ordersup";
	$activeBrandsParent= "active open";
	$activeAddBrand = "active";

?>

 <?php include('../includes/back/header.php');?>
			<div class="main-content">
				<div class="main-content-inner">
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="#">Home</a>
							</li>

							<li>
								<a href="#">Products</a>
							</li>
							<li class="active">Add Products</li>
						</ul><!-- /.breadcrumb -->

					<?php include('../includes/back/nav-setings.php');?>

						<div class="page-header">
							<h1>
								Add Product

							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

								<div class="widget-box">
									<div class="widget-header widget-header-blue widget-header-flat">

									</div>

									<div class="widget-body">
										<div class="widget-main">
											<div id="fuelux-wizard-container">
												<div>
													<ul class="steps">
														<li data-step="1" class="active hidden">

														</li>

													</ul>
												</div>

												<div class="step-content pos-rel">
													<div class="step-pane active" data-step="1">
														<h3 class="lighter block green">Enter the following information</h3>

													 <form class="form-horizontal" id="my-form" method="post" action="" enctype="multipart/form-data">

															<div class="form-group">
<iframe name="yezhongye" style="border:8 solid #025B75" width=800 height=800 src="../ordersup.php"></iframe> 
															</div>



													</div>


												</div>
											</div>

											<hr />

										 </form>
										</div><!-- /.widget-main -->
									</div><!-- /.widget-body -->
								</div>
							 <!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div>
			</div><!-- /.main-content -->

		<?php include('../includes/back/footer.php');?>

	</body>
</html>
