<?php
	
	session_start();

	include('conn.php');

	$name = $_SESSION['name'];
	$image = $_SESSION['image'];


	$comm = $_POST['comment'];

	
	$post_id = $_POST['postt_id'];

	if ($comm) {
			mysqli_query($conn,"INSERT INTO com_info (name,image,comment,post_id) VALUES ('$name','$image','$comm','$post_id')");			

		
			header("location:../home.php");
	}else{

			header("location:../home.php");
	}

	














 ?>