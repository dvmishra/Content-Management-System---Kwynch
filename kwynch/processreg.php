<?php
  // Basic php MYSQL authentication with crypted password
  include("connect.php");
  include("function.php");
  session_start();
  $username = $_POST['username'];
  $password = $_POST['password'];
  $desc = $_POST['desc'];
  $link = $_POST['link'];
  if(isset($_POST['submit'])) {
  $salt = "CrazyassLongSALTThatMakesYourUser";
  $password = hash('sha256', $salt.$password);
  //echo $password;

  // Mysql connection
  $query = "insert into authors values('','$username','$desc','','link','$password')";
  $result= mysqli_query($connection,$query);
  $last_id = mysqli_insert_id($connection);
  $aid=$last_id;
  if(!isset($aid)) {
      redirect_to("login.php");
  }
  else {
    echo "Succesfully enter as". $username;
    $_SESSION['user']=$aid;
    redirect_to("editors.php");
}
}
?>
