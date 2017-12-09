<?php include("connect.php");
  include("function.php");
 ?>
 <?php session_start();
       if(!isset($_SESSION['user'])) {
         redirect_to("login.php");
       }
 ?>
<?php

  if(isset($_GET['pid']) && isset($_POST['submit']))
  {
    $text = $_POST['title'];
    $msg  = $_POST['message'];
    $pid = $_GET['pid'];
    $file_name=$_FILES["upload"]["name"];
    $temp_name=$_FILES["upload"]["tmp_name"];

      $imgtype=$_FILES["upload"]["type"];
      $ext= ".".substr($imgtype,6);
      $imagename=date("d-m-Y")."-".time().$ext;
      $target_path = "images/".$imagename;
     move_uploaded_file( $temp_name, $target_path);
     $t=urlencode($target_path);
    $query = "update content set title='$text', text='$msg', img='$t' where pid=$pid";
    $result = mysqli_query($connection, $query);
    redirect_to("admin.php");
  }

  if(isset($_GET['pid']) && (isset($_POST['submit1']) || isset($_GET['direct'])))
  {
    $pid = $_GET['pid'];
    $query = "update content set vis=1 where pid=$pid";
    $result = mysqli_query($connection, $query);
    redirect_to("admin.php");
  }
?>
