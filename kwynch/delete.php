<?php include("connect.php");
  include("function.php");
 ?>
 <?php session_start();
       if(!isset($_SESSION['user'])) {
         redirect_to("login.php");
       }
 ?>
<?php

  if(isset($_GET['aid']) && isset($_GET['direct']))
  {
    $aid=$_GET['aid'];
    $query = "delete from authors where aid=$aid ";
    $result = mysqli_query($connection, $query);
    redirect_to("admin.php?authors=1");
  }
?>
