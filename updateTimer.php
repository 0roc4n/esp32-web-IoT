<?php
    include 'conn.php';
    
    // Fetch timer data where is_active = 1
    $sql = 'SELECT * FROM timer WHERE is_active = 1';
    $result = mysqli_query($update, $sql);
    $timer = mysqli_fetch_all($result, MYSQLI_ASSOC);
    mysqli_free_result($result);

    // Loop through each timer entry
    foreach ($timer as $time) {
        $setTime = $time['datetime_value'];
        $dateTime = new DateTime($setTime);
        $timestamp = $dateTime->getTimestamp();
        
        $today_time = time();
        $diff_day = ($timestamp - $today_time);
        $leftTime = ($diff_day / 86400);

        // Check if the trigger_executed flag is 0
        if ($leftTime <= 0.25 && $time['is_active'] == 1 && $time['trigger_executed'] == 0) {
            $timerId = $time['id'];
            $updateSql = "UPDATE timer SET is_active = 0, trigger_executed = 1";
            
            // Execute the update query
            if ($update->query($updateSql) === TRUE) {
                echo "Updated timer $timerId.\n";
            } else {
                echo "Error updating timer $timerId: " . $update->error . "\n";
            }
        }
    }

    // Close the database connection
    $update->close();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
</head>
<body>
    <div class="container">
    <ul>
        <?php foreach ($timer as $time) {?>
            <li><?php echo htmlspecialchars($time['datetime_value']); ?></li>
        <?php }?>
    </ul>
    <?php
        
       
    ?>
   
    </div>
    <script>
        // Reload the page every 10 seconds
        setTimeout(function() {
            location.reload();
        }, 1000);
    </script>
</body>
</html> 