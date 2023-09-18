<?php include_once("connection.php");   ?>
<?php include_once("manager_header.php");   ?>
<style>
*{
    margin:0;
    padding:0;
}
.nav{
    background-color:#DCDCDC;
    margin-bottom:20px;       
}
.nav-link{
    color:Black;
        
}
.nav-link:hover{
    color:darkBlue;
	    
}



</style>
<div>
    <ul class="nav justify-content-center">
    <li class="nav-item">
        <a class="nav-link" href="volunteer_home.php"><i class="fas fa-home"></i> Home </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="#"><i class="fa fa-refresh"></i>  Check/Update Task </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="#"><i class="fa fa-file fa-fw"></i>  Assign Task</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="#"><i class="fa fa-bell fa-fw"></i>  Check Notice </a>
    </li>
    </ul>
</div>

<div class="container my-2" style="margin-right:150px;">
        <div class="row">
        <?php
        $query ="SELECT * FROM events";
        $run=mysqli_query($link,$query);
        while($events=mysqli_fetch_assoc($run)){
        ?>
    <div class="col-10 py-2 my-1" style="display:block; margin:0 auto;box-shadow: 0 0.1rem 0.5rem rgb(0 0 0 / 15%);">
        <h4 style="Color:darkblue;"><?php echo $events['title'];?></h4>
        <p><?php echo $events['description'];?></p>
        <p><b> Venue: </b> <?php echo $events['venue'];?></p>
        <p><b> Date: </b><?php echo $events['date'];?></p>
        <p><b> Time: </b><?php echo $events['time'];?></p>
        <?php echo" <a href='assign.php?id=$events[id]' class='btn btn-primary btn-sm'>Assign</a>";?>
        <?php echo" <a href='index.php?id=$events[id]' class='btn btn-success btn-sm'> Budget</a>";?>
        <?php echo" <a href='volunteer_room.php?id=$events[id]'class='btn btn-info btn-sm'>Progress</a>";?><br>
    </div>
<?php } ?>
        

</body>
</html>