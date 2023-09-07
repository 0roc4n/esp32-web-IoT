<?php
session_start();
include 'conn.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $selectedDatetime = $_POST['datetime'];
    if (isset($_POST['led_set'])) {
        $led_set = $_POST['led_set'];
        $leds = implode(",",$led_set);
        echo $leds;
        $_SESSION['selectedValue'] = $_POST['led_set'];
    

    // Convert the datetime string to a DateTime object
        $dateTime = new DateTime($selectedDatetime);

        // Perform further processing with the $dateTime object
        $formattedDatetime = $dateTime->format('Y-m-d H:i:s');

        //echo "You selected: " . $formattedDatetime;
        $sql = "INSERT INTO timer (datetime_value, is_active, choose_led) VALUES ('$formattedDatetime', '1', '$leds')";

        if ($update->query($sql) === TRUE) {
            echo "Datetime value inserted successfully!";
        } else {
            echo "Error: " . $sql . "<br>" . $update->error;
        }
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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Timer</title>
</head>
<body>
    <div class="container">
        <form method="post" action="">

            <label for="datetime">Select a Date and Time:</label>
            <div class="chck">
                <!-- <select class="form-select" aria-label="Default select example" name="led_set">
                    <option value="LED1">One</option>
                    <option value="LED2">Two</option>
                    <option value="LED3">Three</option>
                </select> -->
                <div class="form-check form-switch">
                    <input class="form-check-input" type="checkbox" id="flexSwitchCheckChecked" name="led_set[]" value="led1">
                    <label class="form-check-label" for="flexSwitchCheckChecked">LED 1</label>
                </div>
                <div class="form-check form-switch">
                    <input class="form-check-input" type="checkbox" id="flexSwitchCheckChecked" name="led_set[]" value="led2">
                    <label class="form-check-label" for="flexSwitchCheckChecked">LED 2</label>
                </div>
                <div class="form-check form-switch">
                    <input class="form-check-input" type="checkbox" id="flexSwitchCheckChecked" name="led_set[]" value="led3">
                    <label class="form-check-label" for="flexSwitchCheckChecked">LED 3  </label>
                </div>
            </div>
            
            <input type="datetime-local" id="datetime" name="datetime">
            <button type="submit">Submit</button>
        </form>
</body>
</html>

