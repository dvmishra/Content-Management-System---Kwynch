<?php
  // Basic php MYSQL authentication with crypted password
  session_start();
  include("connect.php");
  include("function.php");
  $username = $_POST['username'];
  $password = $_POST['password'];
  if(isset($_POST['submit'])) {
  $salt = "CrazyassLongSALTThatMakesYourUser";
  $password = hash('sha256', $salt.$password);
  //echo $password;

  // Mysql connection
  $query = "CALL login('$username','$password')";
  $result= mysqli_query($connection,$query);




  //"select aid from authors where aname='{$username}' and apass='{$password}' limit 1";
  // // $result = mysqli_query($connection, $query);
   while($row = mysqli_fetch_array($result)) {
   $aid=$row['aid'];
  }
  if(!isset($aid)) {
      redirect_to("login.php");
  }
  else {
    echo "Succesfully enter as". $username;
    $_SESSION['user']=$aid;
    redirect_to("editors.php");
  }
  }
  elseif (isset($_POST['submit1'])) {
    $query = "select * from admin where admin='$username' and pass='$password'";
    $result= mysqli_query($connection,$query);
     while($row = mysqli_fetch_array($result)) {
     $aid=$row['adminid'];
    }
    if(!isset($aid)) {
        redirect_to("login.php");
    }
    else {
      $_SESSION['user']=$aid;
      redirect_to("admin.php");
    }

  }
?>
