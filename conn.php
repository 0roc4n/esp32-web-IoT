<<<<<<< HEAD
<?php
        $server 	= "localhost";	// Change this to correspond with your database port
        $username 	= "root";			// Change if use webhost online
        $password 	= "root";
        $DB 		= "qlda";			// database name
        
        
        $update = new mysqli($server, $username, $password, $DB);	// Check database connection
                    if ($update->connect_error) {
                        die("Connection failed: " . $update->connect_error);
                    } 
            
?>
=======
<?php
        $server 	= "localhost";	// Change this to correspond with your database port
        $username 	= "root";			// Change if use webhost online
        $password 	= "root";
        $DB 		= "qlda";			// database name
        
        
        $update = new mysqli($server, $username, $password, $DB);	// Check database connection
                    if ($update->connect_error) {
                        die("Connection failed: " . $update->connect_error);
                    } 
            
?>
>>>>>>> e3ffe1b0b64f8766f5262a670a493aee8f8f3e3f
