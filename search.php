<?php
include("connection.php");
      $sc = mysqli_real_escape_string($db,$_POST['search']);

$fname='';
$output='';
if(isset($_POST['search'])){
$query=$_POST['search'];
$query=preg_replace("#[^0-9a-z]#i","","$query");
$sql="SELECT * from products where Name = 'gopro'";
$squery= mysqli_query($db,$sql) or die ("Could not open search");
$count=mysqli_num_rows($squery);
if($count==0){
  echo "No Results!";
  }
else
{
 while($row=mysqli_fetch_array($squery)){
	$fname=$row['Name'];
	$des=$row['Description'];
	$pri=$row['Price'];
	$pid=$row['PID'];

	echo $fname.'<br/>';
	echo $des.'<br/>';
	echo $pri.'<br/>';
	echo $pid.'<br/>';
 }
}
}


?>