<?php include("connect.php");
    include("function.php");
 ?>

<!DOCTYPE html>

 <html class="no-js">
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Kwynch &mdash; Politics</title>
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
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="js/modernizr-2.6.2.min.js"></script>


	</head>
	<body>

	<div id="fh5co-offcanvass">
		<a href="#" class="fh5co-offcanvass-close js-fh5co-offcanvass-close">Menu <i class="icon-cross"></i> </a>
		<h1 class="fh5co-logo"><a class="navbar-brand" href="index.html">Kwynch</a></h1>
		<ul>
			<li><a href="index.html">Home</a></li>
			<li class="active"><a href="about.html">About</a></li>
			<li><a href="authors.php">Authors</a></li>
			<li><a href="contact.html">Contact Us</a></li>
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
					<a class="navbar-brand" href="poli.html">
            <?php
              $tid = $_GET['tid'];
              $query = "select * from topics where tid=$tid";
              $result = mysqli_query($connection, $query);
            while($row = mysqli_fetch_array($result)) {
              echo $row['tname'];
            }
            ?>
          </a>
				</div>
			</div>
		</div>
	</header>
	<!-- END .header -->
  <?php
    $pid = $_GET['pid'];
    counter($pid);
    $query = "select * from content natural join post natural join authors where vis=1 and pid=$pid";
    $result = mysqli_query($connection, $query);
  while($row = mysqli_fetch_array($result)) {
  ?>

	<div id="fh5co-main">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2">
					<h4>
        		<div class="fh5co-desc"><?php echo $row['title']; ?></h4>

          <div class="row">
            <div class="col-md-0">

            </div>
            <div class="col-md-8">
              <a href="authors.html#rohan"><p>By <?php echo $row['aname']; }?> </p></a>
            </div>
            <div class="col-md-2">

              <?php $query = "select sum(view) a from count group by pid having pid='$pid'";
                    $result = mysqli_query($connection, $query);
                    while($row = mysqli_fetch_array($result)) {
               echo "<i style=\"font-size:16px\" class=\"fa fa-eye\" >".$row['a']."</i>";} ?>


            </div>

          </div>

					<div class="fh5co-spacer fh5co-spacer-sm"></div>


					<img src="
                <?php $query = "select * from content where pid='$pid'";
                $result = mysqli_query($connection, $query);
                while($row = mysqli_fetch_array($result)) {  echo urldecode($row['img']);?>

          " alt="Kwynch Photo" class="img-rounded img-responsive">
					<p><?php echo nl2br($row['text']);} ?></p>








				</div>

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
