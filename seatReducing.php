<?php 
if (!session_id()) {
	session_start();
} 
include 'db.php';



$seat=$_POST['seat']-$_POST['seatnum'];
$seatnum=50-$seat;

$bs=mysqli_query($conn,"update showOrder set bookedseat=".$seatnum."  where showOrderId=".$_POST['showOrderId'].";");

$sql="update showOrder set seat=".$seat."  where showOrderId=".$_POST['showOrderId'].";";
if($seat>=0){
if ($conn->query($sql) === TRUE) {
	//echo "succeed";
	$_SESSION['msg']="Ticket Booking Confirm";
	
}
}
else{
	$_SESSION['msg']="Ticket not avilable";
	echo "Error: " . $sql . "<br>" . $conn->error;

}

header('Location: customerPage.php')
?>

