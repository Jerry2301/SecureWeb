<?php 
$host = "localhost";
$user  = "root";
$password = "";
$database = "spw";

$con = mysqli_connect($host, $user, $password, $database);
if (!$con)
  {
  die('Could not connect: ' . mysqli_connect_error());
  }
?>