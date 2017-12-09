<?php
include("connect.php");
function redirect_to($new_location) {
  header("Location: " . $new_location);
  exit;
}
function counter($pid) {
  $ip=$_SERVER['REMOTE_ADDR'];
  global $connection;
  $query ="select * from count where pid='$pid' and ip='$ip'";
  $result = mysqli_query($connection, $query);
  if(mysqli_affected_rows($connection)==1)
  {
    $query ="update count set view=view+1 where pid='$pid' and ip='$ip'";
    $result = mysqli_query($connection, $query);
  }
  else {
  $query = "insert into count values ('$pid','$ip',1)";
  $result = mysqli_query($connection, $query);
  }
}
?>
