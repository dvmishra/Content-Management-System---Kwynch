<?php include("connect.php");
  include("function.php");
 ?>
<?php session_start();
if(!isset($_SESSION['user'])) {
  redirect_to("login.php");
}
else {
    $aid = $_SESSION['user'];
}
?>
<!DOCTYPE html>

 <html class="no-js">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Kwynch &mdash; Authors</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="images/favicon.ico" rel="shortcut icon" type="image/x-icon" />


	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />


	<link rel="shortcut icon" href="favicon.ico">

	<!-- Google Webfonts -->
	<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,100,500' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>

	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">
	<!-- Salvattore -->
	<link rel="stylesheet" href="css/salvattore.css">
	<!-- Theme Style -->
	<link rel="stylesheet" href="css/style.css">
	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>

	<div id="fh5co-offcanvass">
		<a href="#" class="fh5co-offcanvass-close js-fh5co-offcanvass-close">Menu <i class="icon-cross"></i> </a>
		<h1 class="fh5co-logo"><a class="navbar-brand" href="index.html">Kwynch</a></h1>
		<ul>
			<li><a href="index.html">Home</a></li>
			<li><a href="about.html">About</a></li>
			<li class="active"><a href="authors.html">Authors</a></li>
			<li><a href="contact.html">Contact</a></li>
		</ul>
		<h3 class="fh5co-lead">Connect with us</h3>
		<p class="fh5co-social-icons">
			<a href="#"><i class="icon-twitter"></i></a>
			<a href="#"><i class="icon-facebook"></i></a>
			<a href="#"><i class="icon-instagram"></i></a>

		</p>
	</div>
	<header id="fh5co-header" role="banner">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<a href="#" class="fh5co-menu-btn js-fh5co-menu-btn">Menu <i class="icon-menu"></i></a>
					<a class="navbar-brand" href="index.php">Kwynch</a>
				</div>
			</div>
		</div>
	</header>
	<!-- END .header -->
<div id="fh5co-main">
		<div class="container">
      <br><br><br>
      <div class="row" style="vertical-align;">
        <div class="col-md-1"></div>
        <div class="col-md-3 col-xs-6 ">
      <a href="admin.php"><button type="button" class="btn btn-link">Logged  In As : <?php
      $query = "select admin from admin where adminid=$aid";
      $result = mysqli_query($connection, $query);
    while($row = mysqli_fetch_array($result)) {
      echo $row['admin'];
      }
      ?></button></a>
    </div>
    <div class="col-md-2">
      <a href="admin.php?allpost=1"> <button type="button" class="btn btn-link">All Post</button></a>
    </div>
    <div class="col-md-2">
      <a href="admin.php?authors=1"> <button type="button" class="btn btn-link">Authors</button></a>
    </div>
    <div class="col-md-2">
      <a href="login.php"> <button type="button" class="btn btn-link">Log Out</button></a>
    </div>
    <?php
      if(isset($_GET['authors']))
      {
       ?>
        <div class="row">

        <div class="col-md-8 col-md-offset-2" style="font-size:17px;">
          <table class="table table-sm table-dark">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">Authors</th>
                <th scope="col" style="float:right;">Delete</th>
              </tr>
            </thead><tbody>
            <?php

              $query = "select * from authors";
              $result = mysqli_query($connection, $query);
              $count = 0;
            while($row = mysqli_fetch_array($result)) {
            ?>
            <tr>
                <td><?php echo $count +=1; ?></td>
                <td><a href="#" style="color:white;text-decoration:none;" ><?php echo $row['aname']; ?></a></td>
                <td><a href="delete.php?aid=<?php echo $row['aid'];?>&direct=1"><button type="button" class="btn btn-success btn-xs" style="float:right;margin-bottom:2px;">OK</button></a></td>
            </tr>
          <?php } ?>
          </tbody>
          </table>


          </div>

        </div>
      <?php  } ?>

    <?php
      if(!isset($_GET['allpost']) && !isset($_GET['authors']))
      {
       ?>
			  <div class="row">

				<div class="col-md-8 col-md-offset-2" style="font-size:17px;">
          <table class="table table-sm table-dark">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">Pending Posts</th>
                <th scope="col" style="float:right;">Approve</th>
              </tr>
            </thead><tbody>
            <?php

              $query = "select * from content where vis=0";
              $result = mysqli_query($connection, $query);
              $count = 0;
            while($row = mysqli_fetch_array($result)) {
            ?>
						<tr>
                <td><?php echo $count +=1; ?></td>
                <td><a href="adminedit.php?pid=<?php echo $row['pid']; ?>" style="color:white;text-decoration:none;" ><?php echo $row['title']; ?></a></td>
                <td><a href="approve.php?pid=<?php echo $row['pid'];?>&direct=1"><button type="button" class="btn btn-success btn-xs" style="float:right;margin-bottom:2px;">OK</button></a></td>
            </tr>
          <?php } ?>
          </tbody>
          </table>


					</div>

				</div>
      <?php  } ?>
      <?php
        if(isset($_GET['allpost']))
        {
         ?>
  			  <div class="row">

  				<div class="col-md-8 col-md-offset-2" style="font-size:17px;">
            <table class="table table-sm table-dark">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Pending Posts</th>
                </tr>
              </thead><tbody>
              <?php

                $query = "select * from content";
                $result = mysqli_query($connection, $query);
                $count = 0;
              while($row = mysqli_fetch_array($result)) {
              ?>
  						<tr>
                  <td><?php echo $count +=1; ?></td>
                  <td><a href="adminedit.php?pid=<?php echo $row['pid'];?>&allpost=1" style="color:white;text-decoration:none;" ><?php echo $row['title']; ?></a></td>

              </tr>
            <?php } ?>
            </tbody>
            </table>


  					</div>

  				</div>
        <?php  } ?>

        	</div>
       </div>
	</div>

	<footer id="fh5co-footer">

		<div class="container">
			<div class="row row-padded">
				<div class="col-md-12 text-center">
					<p class="fh5co-social-icons">
						<a href="#"><i class="icon-twitter"></i></a>
						<a href="#"><i class="icon-facebook"></i></a>
						<a href="#"><i class="icon-instagram"></i></a>
					</p>
					<p><small>Copyright &copy; Kwynch. All Right Reserved. </small></p>
				</div>
			</div>
		</div>
	</footer>


	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<!-- Salvattore -->
	<script src="js/salvattore.min.js"></script>
	<!-- Main JS -->
	<script src="js/main.js"></script>




	</body>
</html>
