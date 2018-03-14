<?php require('func/config.php'); ?>
<?php include('includes/front/header.php');?>

	<section id="form"><!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<div class="login-form"><!--login form-->
						<h2>Login to your account</h2>
						<?php

            	//process login form if submitted
            	if(isset($_POST['submit_login'])){

            		$user_email = trim($_POST['user_email']);
            		$password = trim($_POST['password']);

            		if($user->login($user_email,$password))
                {
                  //check if account is activated
                  $stmt = $db->prepare('SELECT * FROM profilemaster WHERE Email = :user_email');
                  $stmt->execute(array(
                		':user_email' => $user_email
                	));
                  while($row=$stmt->fetch(PDO::FETCH_ASSOC))
    		          {
                    $status = $row['Status'];
										$_SESSION["username"] = $row['Email'];
										$_SESSION["Role"] = $row['Role'];
										$_SESSION["uid"] = $row['Id'];

                  }
                  if( $status=="Y")
                  {
                    //logged in return to index page
                    header('Location: index.php');
                    exit;

                  }else{
                    $user->logout();
                    $message = '
                      <div class="alert alert-danger">
                        Your account is not activated. Kindly visit your email address to activate it.
                      </div>
                    ';
                  }

            		} else {
            			$message = '
                  <div class="alert alert-danger">
                      Wrong username or password.
                  </div>
                  ';
            		}

            	}//end if submit

            	if(isset($message)){ echo $message; }
            	?>
							<form action="" method ='post'>
		            <input type="email" name ="user_email" placeholder="Email Address" value='<?php if(isset($message)){ echo $_POST['user_email'];}?>' required/>
								<input type="password" name="password" placeholder="Password" value='<?php if(isset($message)){ echo $_POST['password'];}?>' required/>
								<button type="submit" name ="submit_login" class="btn btn-default">Login</button>
							</form>
					</div><!--/login form-->
				</div>
				<div class="col-sm-1">
					<h2 class="or">OR</h2>
				</div>
				<div class="col-sm-4">
					<div class="signup-form"><!--sign up form-->
						<h2>New User Signup!</h2>
						<?php

          	//if form has been submitted process it
          	if(isset($_POST['submit']))
            {

          		//collect form data
          		extract($_POST);

          		//very basic validation
          		if($customer_name ==''){
          			$error[] = '
                <div class="alert alert-danger">
                    Please enter your name.
                </div>
                ';
          		}

              if($phone ==''){
          			$error[] = '
                <div class="alert alert-danger">
                    Please enter your phone number.
                </div>
                ';
          		}

              if($idnumber ==''){
                $error[] = '
                <div class="alert alert-danger">
                    Please enter your ID number.
                </div>
                ';
              }

              if($email ==''){
          			$error[] = '
                <div class="alert alert-danger">
                    Please enter your email address.
                </div>
                ';
          		}

          		if($password ==''){
          			$error[] = '
                <div class="alert alert-danger">
                    Please enter the password.
                </div>
                ';
          		}

          		if($passwordConfirm ==''){
          			$error[] = '
                <div class="alert alert-danger">
                    Please confirm the password.
                </div>
                ';
          		}

          		if($password != $passwordConfirm){
          			$error[] = '
                <div class="alert alert-danger">
                    Passwords do not match.
                </div>
                ';
          		}
              if($user->check_if_exists($email) == true){

                $error[] = '
                <div class="alert alert-danger">
                    Account with the email provided already exists. Kindly use a different email address.
                </div>
                ';

              }


          		if(!isset($error)){
                $code = md5(uniqid(rand()));
              	$hashedpassword = $user->password_hash($password, PASSWORD_BCRYPT);
                $role = 2;
								$status = "Y";

          			try {

          				//insert into database $idnumber
          				$stmt = $db->prepare('INSERT INTO profilemaster(Name, Email, PhoneNumber, IdNumber, Password, Role, Status, tokenCode) VALUES (:Name, :Email, :PhoneNumber, :IdNumber, :Password, :Role, :Status, :tokenCode)') ;
          				$stmt->execute(array(
          					':PhoneNumber' => $phone,
          					':IdNumber' => $idnumber,
                    ':Name' => $customer_name,
          					':Email' => $email,
                    ':Password' => $hashedpassword,
                    ':Role' => $role,
										':Status' => $status,
                    ':tokenCode' => $code
          				));



                //  $message = ;

                  ;
          		  	if(isset($message)){ echo $message; }
          				exit;

          			} catch(PDOException $e) {
          			    echo $e->getMessage();
          			}

          		}

          	}


          	if(isset($error)){
          		foreach($error as $error){
          			echo '<p class="error">'.$error.'</p>';
          		}
          	}
          	?>
						<form action="" method='post'>

							<input type="text" name ="customer_name" maxlength = '30' placeholder="Name" value='<?php if(isset($error)){ echo $_POST['customer_name'];}?>' required/>
              <input type="tel" pattern='(0|\+?852)(\d){8}' title='Invalid phone number format' name ="phone" placeholder="Phone number +852xxxxxxxx" value='<?php if(isset($error)){ echo $_POST['phone'];}?>' required/>
              <input type="text"  name ="idnumber"  maxlength = '8' placeholder="ID number" value='<?php if(isset($error)){ echo $_POST['idnumber'];}?>' required/>
						  <input type="email" name ="email" placeholder="Email Address" value='<?php if(isset($error)){ echo $_POST['email'];}?>' required/>
							<input type="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" name="password" placeholder="Password" value='<?php if(isset($error)){ echo $_POST['password'];}?>' required/>
              <input type="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" name="passwordConfirm" placeholder="Confirm your password" value='<?php if(isset($error)){ echo $_POST['passwordConfirm'];}?>' required/>

							<button type="submit" name='submit' class="btn btn-default">Signup</button>
						</form>
					</div><!--/sign up form-->
				</div>
			</div>
		</div>
	</section><!--/form-->