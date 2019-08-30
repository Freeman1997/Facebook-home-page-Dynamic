<?php 
	session_start();
 ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title><?php echo $_SESSION['name']; ?></title>
		<!-- font-awsome cdn file -->

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css">

	<!-- Bootstap-4 cdn file  -->
	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

	<!-- jQuery 3.4.1 cdn file  -->

	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

	<!-- Bootstap-4 JavaScript cdn-->
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

	<!-- CSS file -->

	<link type="text/css" rel="stylesheet" href="style_2.css">

</head>
<body>
<div class="header p-1">
	<div class="container">
		<div class="row">
			<div class="col-sm-6 col-md-6">
				<div class="left_header">
					
						<div class="logo_box">
							<img src="images/logo.jpg" alt="" class="img_box">
						</div>
						<div class="search_box">
							<div class="input-group mt-1">
							<input type="search" class="form-control" placeholder="Search">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-search"></i></span>			
							</div>											
							</div>
						</div>
											
						
						
									
				</div>
			</div>
			<div class="col-sm-6 col-md-6">
			<nav class="right_header navbar navbar-expand-lg navbar-light bg-light">
				<div class="collapse navbar-collapse">
					<ul class="navbar-nav">
						<li class="nav-item active "><a class="nav-link m_h_C" href="#"><img src="images/<?php echo $_SESSION['image'] ?>" alt="" class="rounded-circle" alt="Cinque Terre" width="30" height="30"><span> </span><?php echo $_SESSION['name']; ?></a>
						</li>
						<li class="nav-item active "><a class="nav-link m_h_C" href="#">Home</a></li>
						<li class="nav-item active "><a class="nav-link m_h_C" href="#">Create</a></li>
						<li class="nav-item active"><a class="nav-link" href="#"><i class="nav_icon fas fa-user-friends"></i></a></li>
						<li class="nav-item active"><a class="nav-link" href="#"><i class="nav_icon fab fa-facebook-messenger"></i></a></li>
						<li class="nav-item active"><a class="nav-link" href="#"><i class="nav_icon fas fa-bell"></i></a></li>
						<li class="nav-item active"><a class="nav-link" href="#"><i class="nav_icon fas fa-question-circle"></i></a></li>
						<li class="nav-item active">
							<div class="dropdown show">
  								<a class="btn  nav-link" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
   									<i class="nav_icon dropdown-toggle"></i>
 								 </a>

 								 <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
    							<a class="dropdown-item" href="inc/logout.php">Logout</a>
   
 									 </div>
							</div>
						</li>


				</ul>
					

				</div>
			
			</nav>					

			</div>
			
		</div>
	</div>
</div>
<form action="inc/post.php" method="POST" enctype="multipart/form-data">
	<div class="content mx-auto d-block">
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12">
				<hr>				
				 <div class="post_cont">
				 	<img src="images/<?php echo $_SESSION['image']; ?>" alt="" >
				 	<textarea name="post" id="" placeholder="What's on your mind ?"></textarea>
				 </div>
				 <hr>
				 <div class="post_upload">
				 	<input name ="post_img" type="file">
				 	<button type="submit" class="btn">Post</button>	 	
				 </div>				 
			</div>
		</div>
	</div>
</div>
	
</form>

<?php 

	include('inc/conn.php');

	$post=mysqli_query($conn,"SELECT * FROM post ORDER BY id DESC");	

	while ($all_data = mysqli_fetch_array($post)) {		
?>	
	

		<div class="post_area mx-auto d-block">
				<div class="container">
					<div class="row">
						<div class="col-md-12 col-sm-12">

								<div class="id_photo_name">
									<div class="any_thing">
										<img src="images/<?php echo $all_data['image']; ?>" alt="">
									</div>
									
									<div class="id_name">
										<h4><?php echo $all_data['name']; ?></h4>
										<h5><?php echo $all_data['date']; ?></h5>	
									</div>		
															
								</div>
								<div class="post_sec">
									<p><?php echo $all_data['post']; ?></p>
									<img src="post_img/<?php echo $all_data['up_image']; ?>" alt="" width="100%">
									<hr>
								</div>

								<div class="comment_sec navbar navbar-expand-sm bg-light justify-content-center rounded">
									<div class="like navbar-brand">
										<i class="far fa-thumbs-up" aria-hidden="true"><span><a href="">Like</a></span></i>
									</div>
									<div class="comment navbar-brand">
										<i class="far fa-comment" aria-hidden="true"><span><a href="">Comment</a></span></i>
									</div>
									<div class="share navbar-brand">
										<i class="fas fa-share" aria-hidden="true"><span><a href="">Share</a></span></i>
									</div>
								</div>
								<hr>
								<div class="commenter_area">
									<form action="inc/comment.php" method="POST">
									<div class="comment_field">
										<img src="images/<?php echo $_SESSION['image']; ?>" alt="" class="rounded">
										<input name = "comment" type="text" placeholder="Write a comment..." class="rounded">
										<input name="postt_id" value="<?php echo $all_data['id'];?>" type="hidden">
									</div>
									</form>

									<?php

										$post_idd = $all_data['id'];

										$cosmos =mysqli_query($conn,"SELECT * FROM com_info where post_id = '$post_idd'");



										while ($fetch_data = mysqli_fetch_array($cosmos)){

									?>

									<div class="comment_man">
										<img src="images/<?php echo $fetch_data['image']; ?>" alt="" class="rounded">
										<a href=""><?php echo $fetch_data['name']; ?></a>
										<p><?php echo $fetch_data['comment']; ?></p>
									</div>


									<?php		
											
										};


									 ?>

									
								</div>
								

							</div>
							
							 			 
						</div>
					</div>
				</div>





<?php		

		
	};

	



 ?>


	<br>


<div class="img_name">
	<img src="images/<?php echo $_SESSION['image']; ?>" alt="" width="150px" height="100px">
	<h5><?php echo $_SESSION['name']; ?></h5>
</div>



	
</body>
</html>