<?php
    include "conn.php";
    $sql = 'select * from ledstat';

    $result = mysqli_query($update, $sql);

    $status = mysqli_fetch_all($result, MYSQLI_ASSOC);

    mysqli_free_result($result);

?>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<body>
    
   
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
            <div class="tem" onload="temp();">
                    <div class="shows" id="temper">

                    </div>
            </div>
        </div>
    
    </div>
        <!-- <script>
            // Reload the page every 10 seconds
            setTimeout(function() {
                location.reload();
            }, 1000);
        </script> -->
    <script type="text/javascript">
        function temp(){
            const xhttp = new XMLHttpRequest();
            xhttp.onload = function(){
                document.getElementById("temper").innerHTML = this.responseText;

            }
            xhttp.open("GET", "response.php");
            xhttp.send();
        }
        setInterval(function(){
        temp();
        }, 1);
    </script>
</body>
</html>