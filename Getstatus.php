<?php

$server 	= "localhost";	// Change this to correspond with your database port
$username 	= "root";			// Change if use webhost online
$password 	= "root";
$DB 		= "qlda";			// database name


$conn = new mysqli($server, $username, $password,$DB);		// Check database connection
	if ($conn->connect_error) 
	{
		//die("Connection failed: " . $conn->connect_error);
	} 
	
	// $query ="SELECT * from status";					// Select all data in table "status"
	// $result = $conn->query($query);
	
	// 	while($row = $result->fetch_assoc()) 
	// 	{
	// 		echo $row["status"];					// Echo data , equivalent with send data to esp
	// 	}

	//separate
	$query2 ="SELECT * from ledstat";					// Select all data in table "status"
	$result2 = $conn->query($query2);
	
		while($row2 = $result2->fetch_assoc()) 
		{
			echo $row2["ledID"]."". $row2["status"];				// Echo data , equivalent with send data to esp
		}
?>