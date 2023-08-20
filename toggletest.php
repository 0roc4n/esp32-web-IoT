<?php
    include "con.php";
    $sql = 'select * from ledstat';

    $result = mysqli_query($update, $sql);

    $status = mysqli_fetch_all($result, MYSQLI_ASSOC);

    mysqli_free_result($result);

?>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        /* Add some basic styling to the toggle button */
        .toggle-button {
            width: 50px;
            height: 25px;
            background-color: gray;
            border-radius: 12.5px;
            display: flex;
            align-items: center;
            cursor: pointer;
        }
        
        .toggle-indicator {
            width: 20px;
            height: 20px;
            background-color: white;
            border-radius: 50%;
            margin-left: 2.5px;
            transition: margin-left 0.2s;
        }
        .toggled {
            background-color: blue;
        }
    </style>
</head>
<body>
    
    <div class="toggle-button" onclick="toggle()">
        <div class="toggle-indicator" id="toggle-indicator"></div>
    </div>
    <input type="hidden" id="toggle-value" value="0">
    <div class="container">
        <table class="table">
    
    

        
            <thead>
                <tr>
                <th scope="col">LED ID</th>
                <th scope="col">Status</th>
                
                </tr>
            </thead>
            <tbody>
            <?php foreach ($status as $stat) {?>
                <tr>
                
                <td><?php echo htmlspecialchars($stat['ledID']); ?></td>
                <td>
                    <?php
                    if($stat['status'] == 1){
                        echo '<p><a href="activate.php?id='.$stat['ledID'].' &status=0" class="btn btn-primary">On</a></p>';
                    }else{
                        echo '<p><a href="activate.php?id='.$stat['ledID'].' &status=1" class="btn btn-danger">Off</a></p>';
                    }
                    ?>
                </td>
                
                </tr>
                <tr>
            
            </tbody>
            <?php }?>
        </table>
        <div class="lowe">
            

        </div>
    
    </div>
    
    <script>
        function toggle() {
            var indicator = document.getElementById("toggle-indicator");
            var valueField = document.getElementById("toggle-value");
            
            if (indicator.style.marginLeft === "2.5px") {
                indicator.style.marginLeft = "27.5px";
                valueField.value = "1";
                indicator.parentElement.classList.add("toggled");
            } else {
                indicator.style.marginLeft = "2.5px";
                valueField.value = "0";
                indicator.parentElement.classList.remove("toggled");
            }
        }
    </script>
</body>
</html>