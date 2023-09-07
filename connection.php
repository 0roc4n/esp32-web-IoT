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

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $temperature = $_POST["temperature"];
    $humidity = $_POST["humidity"]; 

    $query = "INSERT INTO temp_humd_tbl (temp, humd) VALUES ('$temperature', '$humidity')";
    $result = mysqli_query($connect, $query);

    if ($result) {
        echo "Insertion Success!<br>";
    } else {
        echo "Error: " . mysqli_error($connect);
    }
} else {
    echo "Invalid request method. This script expects a POST request.";
}

?>
</body>
</html>