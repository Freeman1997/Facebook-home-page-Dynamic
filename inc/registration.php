<?php

	 include('conn.php');


	 $fname= $_POST['fname'];
	 $sname= $_POST['sname'];

	$name= $fname .' '. $sname;

	$email = $_POST['email'];
	$email2 = $_POST['email2'];

	$pass = $_POST['pass'];

	$day = $_POST['birthday_day'];
	$month = $_POST['birthday_month'];
	$year = $_POST['birthday_year'];

	$dob = $day .'/'. $month .'/'. $year;

	$pic = $_FILES['pro_img']['name'];
	$pic_tmp = $_FILES['pro_img']['tmp_name'];

	$gender = $_POST['gender'];


	




	if ($email == $email2) {

		if ($name && $email && $pass && $dob && $pic) {
			move_uploaded_file($pic_tmp,'../images/'.$pic);
			mysqli_query($conn,"INSERT INTO user_info (name,email,pass,dob,u_image,gender)VALUE('$name','$email','$pass','$dob','$pic','$gender')");

			header("location: ../index.php?res=ok");

		}else{
			header("location: ../index.php?res=fail");

		}
		
	}else{

		header("location: ../index.php?res=not_match");

	}








	


















 ?>