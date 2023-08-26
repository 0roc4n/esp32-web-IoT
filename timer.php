<?php
include 'conn.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $selectedDatetime = $_POST['datetime'];
        

    // Convert the datetime string to a DateTime object
    $dateTime = new DateTime($selectedDatetime);

    // Perform further processing with the $dateTime object
    $formattedDatetime = $dateTime->format('Y-m-d H:i:s');

    //echo "You selected: " . $formattedDatetime;
    $sql = "INSERT INTO timer (datetime_value, is_active) VALUES ('$formattedDatetime', '1')";

    if ($update->query($sql) === TRUE) {
        echo "Datetime value inserted successfully!";
    } else {
        echo "Error: " . $sql . "<br>" . $update->error;
    }

    // Close the database connection
    $update->close();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Timer</title>
</head>
<body>
    <div class="container">
        <form method="post" action="">

            <label for="datetime">Select a Date and Time:</label>
            <div class="chck">
                <label for="checkbox">Led 1</label>
                <input type="checkbox" name="choose_led" value="led1">
                <label for="checkbox">Led 2</label>
                <input type="checkbox" name="choose_led" value="led1">
                <label for="checkbox">Led 3</label>
                <input type="checkbox" name="choose_led" value="led1">
            </div>
            
            <input type="datetime-local" id="datetime" name="datetime">
            <button type="submit">Submit</button>
        </form>
</body>
</html>

