<?php include('server.php'); ?>
<!DOCTYPE html>
<html>
<head>
	<title>register</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

	<div>
		<?php if (isset($_SESSION['success'])): 
			?>
			<div><h3>
				<?php 
					echo $_SESSION['success'];
					unset($_SESSION['success']); 
				?>
				
			</h3></div>
			<?php if (isset($_SESSION["username"])): ?>
				<p>Welcome <strong><?php echo $_SESSION['username']; ?></strong></p>
				<p><a href="index.php?logout='1'" style="color: red;">Logout</a></p>
			<?php endif ?>
		<?php endif ?>	


	</div>
</body>
</html>
