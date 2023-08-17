<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> 
<style>
h1 {
  color: green;
   font-size: 70px;
}
</style>
</head>
 <style>
 .button {
  background-color: gray; /* Green */
  border: none;
  color: white;
  padding: 16px 40px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 100px;
   margin: 20px 2px;
   cursor: pointer;
   outline: none;
   border-radius: 15px;
   box-shadow: 0 9px #999;
}
.button:hover {background-color: #3e8e41}
.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(15px);
}
.wrapper {
    text-align: center;
}

.btnon {padding: 50px 202px;}
.btnoff {padding: 50px 178px;}
 </style>
 
<body>

<form action="" method="POST">

<div class="wrapper">
<h1>CE TEAM</h1>
<div class="row m-4 p-3">
	<div class="col p-3">
		<button class="btn btn-primary" type="submit" name = "ON1" >ON1</button><br>	
		<button class="btn btn-danger mt-2"  type="submit" name = "OFF1" >OFF1</button>
	</div>
	<div class="col p-3">
		<button class="btn btn-primary" type="submit" name = "ON2" >ON2</button><br>	
		<button class="btn btn-danger mt-2"  type="submit" name = "OFF2" >OFF2</button>
	</div>
	<div class="col p-3">
		<button class="btn btn-primary" type="submit" name = "ON3" >ON3</button><br>	
		<button class="btn btn-danger mt-2"  type="submit" name = "OFF3" >OFF3</button>
	</div>
</div>
</div>

</body>
	
</html>




<?php

$server 	= "localhost";	// Change this to correspond with your database port
$username 	= "root";			// Change if use webhost online
$password 	= "root";
$DB 		= "qlda";			// database name


$update = new mysqli($server, $username, $password, $DB);	// Check database connection
			if ($update->connect_error) {
				die("Connection failed: " . $update->connect_error);
			} 
			
			
if(isset($_POST['ON1']))			// If press ON
{	
			
			$sql = "UPDATE stat_tbl SET status = 1 WHERE id = 1";	// Update present status to database
			// If don't put this If , we can't change the value in database
			if ($update->query($sql) === TRUE) {	// Because it's been a long time , so i forgot
				//$_GET[] = 1;						// why i have to put this line but it still run when it's commented
			} 
}

if(isset($_POST['OFF1']))		// If press OFF
{					
					
			$sql = "UPDATE stat_tbl SET status = 0 WHERE id = 1";	// Update present status to database
			// Echo "0" , equivalent with send data to App to toast OFF
			if ($update->query($sql) === TRUE) {	// Because it's been a long time , so i forgot
				//$_GET[] = 0;						// why i have to put this line but it still run when it's commented
			} 
	
	
}		

//-------------- separation testting----------	
if(isset($_POST['ON2']))			// If press ON
{	
			
			$sql = "UPDATE stat_tbl SET is_on = 'true' WHERE id = 2";	// Update present status to database
			// If don't put this If , we can't change the value in database
			if ($update->query($sql) === TRUE) {	// Because it's been a long time , so i forgot
				//$_GET[] = 1;						// why i have to put this line but it still run when it's commented
			} 
}

if(isset($_POST['OFF2']))		// If press OFF
{					
					
			$sql = "UPDATE stat_tbl SET status = 0 WHERE id = 2";	// Update present status to database
			// Echo "0" , equivalent with send data to App to toast OFF
			if ($update->query($sql) === TRUE) {	// Because it's been a long time , so i forgot
				//$_GET[] = 0;						// why i have to put this line but it still run when it's commented
			} 
	
	
}		
//-------------- separation testting----------	
if(isset($_POST['ON3']))			// If press ON
{	
			
			$sql = "UPDATE stat_tbl SET status = 1 WHERE id = 3";	// Update present status to database
			// If don't put this If , we can't change the value in database
			if ($update->query($sql) === TRUE) {	// Because it's been a long time , so i forgot
				//$_GET[] = 1;						// why i have to put this line but it still run when it's commented
			} 
}

if(isset($_POST['OFF3']))		// If press OFF
{					
					
			$sql = "UPDATE stat_tbl SET status = 0 WHERE id = 3";	// Update present status to database
			// Echo "0" , equivalent with send data to App to toast OFF
			if ($update->query($sql) === TRUE) {	// Because it's been a long time , so i forgot
				//$_GET[] = 0;						// why i have to put this line but it still run when it's commented
			} 
	
	
}	
	
?>