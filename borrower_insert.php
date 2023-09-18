<?php
$connect = mysqli_connect("localhost", "root", "", "final");
if(isset($_POST["first_name"], $_POST["last_name"], $_POST["address"], $_POST["contact"], 
         $_POST["account"],$_POST["tax_id"], $_POST["nid"]))
{
 $first_name = mysqli_real_escape_string($connect, $_POST["first_name"]);
 $last_name = mysqli_real_escape_string($connect, $_POST["last_name"]);
 $address = mysqli_real_escape_string($connect, $_POST["address"]);
 $contact = mysqli_real_escape_string($connect, $_POST["contact"]);
 $account = mysqli_real_escape_string($connect, $_POST["account"]);
 $tax_id = mysqli_real_escape_string($connect, $_POST["tax_id"]);
 $nid = mysqli_real_escape_string($connect, $_POST["nid"]);
 
 $query = "INSERT INTO user(first_name, last_name, address, contact, account, tax_id, nid)
           VALUES('$first_name', '$last_name', '$address', '$contact', '$account', '$tax_id', '$nid')";
 if(mysqli_query($connect, $query))
 {
  echo 'Data Inserted';
 }
}
?>