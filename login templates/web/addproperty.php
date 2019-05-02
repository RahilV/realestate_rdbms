<?php
   $host        = "host = 127.0.0.1";
  $port        = "port = 5432";
  $dbname      = "dbname = RealEstate";
  $credentials = "user = postgres password=123";
  session_start();
  $db = pg_connect("$host $port $dbname $credentials");
   
  if($_SERVER["REQUEST_METHOD"] == "POST") {
      // username and password sent from form 
      
      $pid = pg_escape_string($db,$_POST['sid']);
      $pname = pg_escape_string($db,$_POST['sname']);
	  $psize = pg_escape_string($db,$_POST['ssize']);
	  $prooms = pg_escape_string($db,$_POST['srooms']);
	  $ppark = pg_escape_string($db,$_POST['spark']);
	  $please = pg_escape_string($db,$_POST['slease']);
	  $paddress = pg_escape_string($db,$_POST['saddress']);
	  $pbuilder = pg_escape_string($db,$_POST['sbuilder']);
	  $pseller = pg_escape_string($db,$_POST['sseller']);
	  $pimage = pg_escape_string($db,$_POST['simage']);
	  $pprize = pg_escape_string($db,$_POST['sprize']);
	  $pbroker = pg_escape_string($db,$_POST['sbroker']);
	  $sql2 = "INSERT INTO property VALUES('$pid','$pname','$psize sq.ft.','$prooms','$ppark','$please','$paddress','$pbuilder','$pseller','$pimage','$pprize','$pbroker')";
	  pg_query($db,$sql2);
	  header("location: site/buy.php");
	 
	  
}
	  
?>
