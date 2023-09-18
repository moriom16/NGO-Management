<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "final";

$link = mysqli_connect($servername, $username, $password, $database);
$conn  =  $link;
$connection = $link;

if ($link) {
    echo " ";
} else {
    die("Sorry we failed to connect: ");
}

?>
