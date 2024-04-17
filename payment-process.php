<?php 

require('connection.inc.php');
session_start();
 date_default_timezone_set("Asia/Calcutta");

$paymentid=$_POST['payment_id'];
$productid=$_POST['OrderId'];
$pay_status = $_POST['payment_Status'];
$dt=date('Y-m-d h:i:s');

$sql= "update `order` set txnid='".$paymentid."', payment_status ='".$pay_status."' where id='".$productid."'";

$result=mysqli_query($con,$sql);

if($result)
{
	echo 'done';
	$_SESSION['paymentid']=$paymentid;
}
else 
{
	echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

?>