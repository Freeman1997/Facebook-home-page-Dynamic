<?php

	session_start();
	
	include('conn.php');
	
	$post = $_POST['post'];

	$post_img = $_FILES['post_img']['name'];
	$post_img_tmp = $_FILES['post_img']['tmp_name'];

	$name = $_SESSION['name'];
	$image = $_SESSION['image'];

	$date = date('dS F,Y');

	

	if ($post || $post_img) {
		move_uploaded_file($post_img_tmp, '../post_img/'.$post_img);


		mysqli_query($conn,"INSERT INTO post (name,date,image,post,up_image) VALUES ('$name','$date','$image','$post','$post_img')");

		header("location:../home.php");
	}else{

		header("location:../home.php");
	}


 ?>