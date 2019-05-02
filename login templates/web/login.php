<?php
	$host        = "host = 127.0.0.1";
  $port        = "port = 5432";
  $dbname      = "dbname = RealEstate";
  $credentials = "user = postgres password=123";
  session_start();
  $db = pg_connect("$host $port $dbname $credentials");
    if($_SERVER["REQUEST_METHOD"] == "POST") {
      // username and password sent from form 
      
      $myusername = pg_escape_string($db,$_POST["lemail"]);
      $mypassword = pg_escape_string($db,$_POST["lpwd"]); 
      $user = pg_escape_string($db,$_POST["buyer"]);
      if ($_POST['buyer'] == 'buyer')
      { 
        $sql = "SELECT buyer_id FROM buyer WHERE email = '$myusername' and password = '$mypassword' ";
      }
      elseif ($_POST['seller'] == 'seller') 
      {
        $sql = "SELECT seller_id FROM seller WHERE email = '$myusername' and password = '$mypassword' ";
      }
      elseif ($_POST['broker'] == 'broker') 
      {
        $sql = "SELECT broker_id FROM broker WHERE email = '$myusername' and password = '$mypassword' ";
      }
      else
      {
        $sql = "SELECT buyer_id FROM buyer WHERE email = '$myusername' and password = '$mypassword' ";
      }
      $result = pg_query($db,$sql);
      
      $arr = pg_fetch_array($result, 0, PGSQL_NUM);      
      $active = $row['active'];
      
      $count = pg_num_rows($result);
      // If result matched $myusername and $mypassword, table row must be 1 row
		//echo $count;
      if($count >= 1) 
	  {
      //echo "hua";
        $cc=pg_query($db,"SELECT buyer_id FROM buyer WHERE email = '$myusername' and password = '$mypassword'");
        $rot = pg_fetch_assoc($cc);
        $ids=$rot['id'];
        $_SESSION["uid"] = $ids;
        header("location: site/index.html");
      }
	  else 
	  {
      //echo "nai hua"; 
   header("location: index.html");
      }
   }
?>