<?php
  session_start();
  $host        = "host = 127.0.0.1";
  $port        = "port = 5432";
  $dbname      = "dbname = RealEstate";
  $credentials = "user = postgres password=123";
  session_start();
  $db = pg_connect("$host $port $dbname $credentials");
  if(!$db)
  {
  	echo "nai hua";
  }
  
  $query = 'select * from property order by id asc';

	$result = pg_query($query);

$i = 0;
echo '<html><body><table><tr>';
while ($i < pg_num_fields($result))
{
	$fieldName = pg_field_name($result, $i);
	echo '<td>' . $fieldName . '</td>';
	$i = $i + 1;
}
echo '</tr>';
$i = 0;

while ($row = pg_fetch_row($result)) 
{
	echo '<tr>';
	$count = count($row);
	$y = 0;
	while ($y < $count)
	{
		$c_row = current($row);
		echo '<td>' . $c_row . '</td>';
		next($row);
		$y = $y + 1;
	}
	echo '</tr>';
	$i = $i + 1;
}
pg_free_result($result);

echo '</table></body></html>';
?>    
