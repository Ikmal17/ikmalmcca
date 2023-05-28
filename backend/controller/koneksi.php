<?php 
 
$server = "db_mysql";
$user = "root";
$pass = "root";
$database = "hellopets";
 
$con = mysqli_connect($server, $user, $pass, $database);
 
if (!$con) {
    die("<script>alert('Gagal tersambung dengan database.')</script>");
}

?>