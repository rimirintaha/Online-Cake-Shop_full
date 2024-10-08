<?php include("inc/connect.inc.php"); ?>
<?php
ob_start();
session_start();
if (!isset($_SESSION['user_login'])) {
	$user = "";
} else {
	$user = $_SESSION['user_login'];
	$result = mysqli_query($con, "SELECT * FROM user WHERE id='$user'");
	$get_user_email = mysqli_fetch_assoc($result);
	$uname_db = $get_user_email != null ? $get_user_email['firstName'] : null;
}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Online Cake Shop</title>
	<link rel="stylesheet" type="text/css" href="css/pro_style.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body style="min-width: 980px;">

<div class="homepageheader" style="position: relative;">
		<div class="signinButton loginButton">
			<div class="uiloginbutton signinButton loginButton" style="margin-right: 40px;">
				<?php
				if ($user != "") {
					echo '<a style="text-decoration: none; color: #fff;" href="logout.php">LOG OUT</a>';
				} else {
					echo '<a style="color: #fff; text-decoration: none;" href="signin.php">SIGN UP</a>';
				}
				?>

			</div>
			<div class="uiloginbutton signinButton loginButton" style="">
				<?php
				if ($user != "") {
					echo '<a style="text-decoration: none; color: #fff;" href="user_profile.php?uid=' . $user . '">Hi ' . $uname_db . '</a>';
				} else {
					echo '<a style="text-decoration: none; color: #fff;" href="login.php">LOG IN</a>';
				}
				?>
			</div>
		</div>
		<div style="float: left; margin: 5px 0px 0px 23px;">
			<a href="index.php">
				<img style=" height: 75px; width: 130px;" src="image/logo.png">
			</a>
		</div>

	</div>



<div class="container">
		<h2>User Profile View</h2>
		
			<div class="all-product">
				<div class="product">
					<div class="product-img">
						<a href="my_order.php"> <img src="image/profile/o2.png" width="500" itemprop="image" data-imagezoom="true"></a>
					</div>
					
				</div>
                <div class="product">
					<div class="product-img">
						<a href="my_delivery.php"> <img src="image/profile/d2.jpg" width="500" itemprop="image" data-imagezoom="true"></a>
					</div>
					
				</div>

				<div class="product">
					<div class="product-img">
						<a href="settings.php"> <img src="image/profile/s3.webp" width="500" itemprop="image" data-imagezoom="true"></a>
					</div>
					
				</div>
				

			</div>
		
	</div>


    </body>
    </html>	