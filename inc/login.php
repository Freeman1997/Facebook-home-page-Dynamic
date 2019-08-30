<?php

	session_start();
	
	 include('conn.php');

	 $email = $_POST['email'];
	 $pass = $_POST['pass'];

	 $data = mysqli_query($conn,"SELECT * FROM user_info where email= '$email' and pass='$pass'");

	$rows_num = mysqli_num_rows($data);

	if ($rows_num == 1) {

		$user = mysqli_fetch_array($data);

		$_SESSION['name'] = $user['name'];
		$_SESSION['image'] = $user['u_image'];




		header("location: ../home.php");
		
	}else{

		header("location: ../index.php?res=not_found");

	}













 ?>