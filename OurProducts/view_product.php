<?php include("../inc/connect.inc.php"); ?>
<?php
ob_start();
session_start();
if (!isset($_SESSION['user_login'])) {
	$user = "";
} else {
	$user = $_SESSION['user_login'];
	$result = mysqli_query($con, "SELECT * FROM user WHERE id='$user'");
	$get_user_email = mysqli_fetch_assoc($result);
	$uname_db = $get_user_email['firstName'];
}
if (isset($_REQUEST['pid'])) {

	$pid = mysqli_real_escape_string($con, $_REQUEST['pid']);
} else {
	header('location: index.php');
}


$getposts = mysqli_query($con, "SELECT * FROM products WHERE id ='$pid'") or die(mysqlI_error($con));
if (mysqli_num_rows($getposts)) {
	$row = mysqli_fetch_assoc($getposts);
	$id = $row['id'];
	$pName = $row['pName'];
	$price = $row['price'];
	$piece = $row['piece'];
	$description = $row['description'];
	$picture = $row['picture'];
	$item = $row['item'];
	$available = $row['available'];
}



?>

<!DOCTYPE html>
<html>

<head>
	<title>Online Cake Shop</title>
	<link rel="stylesheet" type="text/css" href="../css/style.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>
	<?php include("../inc/mainheader.inc.php"); ?>
	<div class="categolis">
		<table>
			<tr>
				<th>
					<a href="chocholate.php"
						style="text-decoration: none;color: #040403;padding: 4px 12px;background-color: #e6b7b8;border-radius: 12px;">Chocholate</a>
				</th>
				<th><a href="vanilla.php"
						style="text-decoration: none;color: #040403;padding: 4px 12px;background-color: #e6b7b8;border-radius: 12px;">Vanilla</a>
				</th>
				<th><a href="mango.php"
						style="text-decoration: none;color: #040403;padding: 4px 12px;background-color: #e6b7b8;border-radius: 12px;">Mango</a>
				</th>
				<th><a href="orange.php"
						style="text-decoration: none;color: #040403;padding: 4px 12px;background-color: #e6b7b8;border-radius: 12px;">Orange</a>
				</th>
				<th><a href="redVelvet.php"
						style="text-decoration: none;color: #040403;padding: 4px 12px;background-color: #e6b7b8;border-radius: 12px;">Redvelvet</a>
				</th>
				<th><a href="bento.php"
						style="text-decoration: none;color: #040403;padding: 4px 12px;background-color: #e6b7b8;border-radius: 12px;">Bento</a>
				</th>
				<th><a href="lemon.php"
						style="text-decoration: none;color: #040403;padding: 4px 12px;background-color: #e6b7b8;border-radius: 12px;">Lemon</a>
				</th>
				<th><a href="jar.php"
						style="text-decoration: none;color: #040403;padding: 4px 12px;background-color: #e6b7b8;border-radius: 12px;">Jar</a>
				</th>
				<th><a href="tub.php"
						style="text-decoration: none;color: #040403;padding: 4px 12px;background-color: #e6b7b8;border-radius: 12px;">Tub</a>
				</th>
			</tr>
		</table>
	</div>
	<div style="margin: 0 97px; padding: 10px">

		<?php
		echo '
				<div style="float: left;">
				<div>
					<img src="../image/product/' . $item . '/' . $picture . '" style="height: 500px; width: 500px; padding: 2px; border: 2px solid #c7587e;">
				</div>
				</div>
				<div style="float: right;width: 40%;color: #067165;background-color: #ddd;padding: 10px;">
					<div style="">
						<h3 style="font-size: 25px; font-weight: bold; ">' . $pName . '</h3><hr>
						<h3 style="padding: 20px 0 0 0; font-size: 20px;">Price: ' . $price . 'Tk</h3><hr>
						<h3 style="padding: 20px 0 0 0; font-size: 22px; ">Available:' . $available . '</h3>
						<h3 style="padding: 20px 0 0 0; font-size: 22px; ">Description:</h3>
						<p>
							' . $description . '
						</p>

						<div>
							<h3 style="padding: 20px 0 5px 0; font-size: 20px;">Want to buy this product? </h3>
							<div id="srcheader">
								
								<form id="" method="post" action="../orderform.php?poid=' . $pid . '">
								        <input type="submit" value="Order Now" class="srcbutton" >
								</form>
								<div class="srcclear"></div>
							</div>
						</div>

					</div>
				</div>

			';
		?>

	</div>
</body>

</html>