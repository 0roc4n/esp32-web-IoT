<html>
<body>

<?php

$dbname = 'qlda';
$dbuser = 'root';  
$dbpass = 'root'; 
$dbhost = 'localhost'; 

$connect = @mysqli_connect($dbhost,$dbuser,$dbpass,$dbname);

if(!$connect){
	echo "Error: " . mysqli_connect_error();
	exit();
}

echo "Connection Success!<br><br>";

$temperature = $_GET["temperature"];
$humidity = $_GET["humidity"]; 


$query = "INSERT INTO temp_humd_tbl (temp, humd) VALUES ('$temperature', '$humidity')";
$result = mysqli_query($connect,$query);

echo "Insertion Success!<br>";

?>
</body>
</html>