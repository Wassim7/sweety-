<?php
session_start() ;
$username="";
$email="";
$errors= array();
$host="localhost";
$dbname="ww05";
$name="ww05";
$pass="v9GHuvVZ";
$bdd= new PDO('mysql:host='.$host.';dbname='.$dbname, $name, $pass);
if (isset($_POST['register'])) {
	$username=$_POST['username'];
	$email=$_POST['email'];
	$password_1=$_POST['password_1'];
	$password_2=$_POST['password_2'];
	if (empty($username)) {
		array_push($errors, "Username is required");
	}
	if (empty($email)) {
		array_push($errors, "Email is required");
	}
	if (empty($password_1)) {
		array_push($errors, "Password is required");
	}
	if ($password_1 != $password_2) {
		array_push($errors, "The two passwords do not match");
	}
	if (count($errors) ==0) {
		$req = $bdd->prepare("INSERT INTO users (username, email, password) VALUES (:username, :email, :password)") ;
		$req->execute(array(
			'username' => $username,
			'email' => $email,
			'password' => $password_1
		));
		$_SESSION['username'] = $username;
		$_SESSION['success'] = "Hello ";
		header('location: index.php');
	}
}
if (isset($_POST['login'])) {
	$username=$_POST['username'];
	$password=$_POST['password'];
	if (empty($username)) {
		array_push($errors, "Username is required");
	}
	if (empty($password)) {
		array_push($errors, "Password is required");
	}
	if (count($errors) == 0) {
		$reponse = $bdd->prepare("SELECT * FROM users WHERE username=? AND password=?");
		$reponse->execute(array($username,$password));
		$donnees=$reponse->fetchAll();
		if (count($donnees)==0)
		{
			array_push($errors, "Wrong username/Password combination");
			header('location: login.php');
		}else{
			$_SESSION['username'] = $username;
			$_SESSION['success'] = "Hello ";
			header('location: index.php');
		}
		$reponse->closeCursor();
	}
}
if (isset($_GET['logout'])) 
{
	session_destroy();
	unset($_SESSION['username']);
	header('location: index.php');
}
?>