<?php include('server.php'); ?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="shortcut icon" href="logo.ico">
	<title>Services</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<header id='entete'>
	<div id="titre" >
	<div id='myVideo'>
		<video autoplay muted loop >
 		 <source src="video2.mp4" type="video/mp4">
		</video>
	</div>
	<img src="logo.png" id="logo"> <h1 id="sweety">Sweety </h1>
	<h1 id="pastries">Pastries</h1>
	</div>
	<div id="connection"><?php if (isset($_SESSION['success'])): 
			?>
			<div><h3><p>
				<?php 
					echo $_SESSION['success'];
					
				?>
				
			</div>
			<?php if (isset($_SESSION["username"])): ?>
				<strong><?php echo $_SESSION['username']; ?></strong></p></h3>
				<p><a href="index.php?logout='1'" style="color: red;">Logout</a></p>
			<?php endif ?>
		<?php else:
			echo"<a href='login.php'><span>Login</span></a>
  	 <a href='register.php'><span>Register</span></a>" ?>
  	 <?php endif ?>
	</div>
	</header>
	<section id="thevoice">
	<div class='menu'>
 	 <a href='index.php' ><span>Home</span></a>
 	 <a href='about.php' ><span>History</span></a>
  	 <a href='services.php'><span id="lock">Services</span></a>
  	 <a href='video.php'><span >Video</span></a>
 	 <a href='contact.php'><span>Contact</span></a>
</div>
<input  name="search" placeholder="Search recipes" >
</section>
<div id="global">
<div>
		<img src="download/lecookie.png" id="miniature">
	 <figcaption><a id="cookie" href="download/Chocolate_Cookies.pdf" download="Chocolate_Cookies">Click here to download recipe <a/>
</figcaption>
</div>
</div>
<script src='js/main.js'></script>
</body>
</html>