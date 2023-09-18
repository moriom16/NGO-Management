<?php include_once("connection.php");   ?>
<?php include_once("manager_header.php");   ?>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>

<!--fetching room details according event name and date-->


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.0-beta1/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>

    <title>Shared Event Info</title>
  </head>
  <body class="d-flex vw-100 vh-100 align-items-center justify-content-center">

<div class="col-lg-9 mx-auto">
<?php

$query ="SELECT * FROM comments";
$run=mysqli_query($link,$query);
while($comments=mysqli_fetch_assoc($run)){
    $events_id = $comments['events_id'];
$query_events ="SELECT * FROM events WHERE id='$events_id'";
$run_events=mysqli_query($link,$query_events);
while($events=mysqli_fetch_assoc($run_events)){
    
?>
    <div class="card col-7 mx-auto"style="width:600px!important; margin-left:180px;">
        <div class="card-header">
        <h5 class="card-title"><?php echo $events['title']; ?></h5>
                </div>
                        <div class="card-body">
                           
                            <p class="card-text"><strong>Info: </strong><?php echo $comments['post']; ?> </p>
                            <p class="card-text"><strong>Note: </strong><?php echo $comments['comment']; ?> </p>
                           
                </div>
            
        </div>
    </div><br/>
    
<?php }?>
<?php }?>
</div>


    <div class="container col-lg-7 col-7 my-2 py-4 mx-auto" style="display:block; margin:0 auto;margin-right:180px;box-shadow: 0 0.1rem 0.5rem rgb(0 0 0 / 15%);">
    <div class="card">
    

</div>
</div>



</body>
</html>