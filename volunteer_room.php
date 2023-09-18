<?php include_once("connection.php");   ?>
<?php include_once("manager_header.php");   ?>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
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
<!--fetching room details according event name and date-->





<!--member sidebar -->




<!--Middle part for post and assignment-->
<?php
$get_id =$_GET['id'];
$query ="SELECT * FROM events WHERE id='$get_id'";
$run=mysqli_query($link,$query);
$events=mysqli_fetch_assoc($run)
?>

<div class=Wrapper2>


    <div class="container col-7 my-2 py-4" style="display:block; margin:0 auto;margin-right:180px;box-shadow: 0 0.1rem 0.5rem rgb(0 0 0 / 15%);">
        <center><h4>Event Title: <strong><?php echo $events['title'];?></strong></h4></center>
        <center> <p style='line-height:30px; display: inline-block;'><b>Date & Time:<?php echo $events['date'];?> </b> </p></center> <br>
       
        <div class="task_box">
            <a href="#" id="postBtn" style="color:black;"><i class="fas fa-pen" style='margin-right: 5px;'></i>Post</a>
            
            <a href="#" id="taskBtn" style="color:black;"><i class="fas fa-file" style='margin-left: 15px;'></i>  task Section</a>

        </div>
    </div>

    
   
    <div class="container col-2 my-2" style="float:left;margin-left:450px;display:block;box-shadow: 0 0.1rem 0.5rem rgb(0 0 0 / 15%);">
       <h4>Coordinator:</h4><a href="#"></a>
        <hr>
        <p>Member List</p>
    </div>

    <div class="container col-5 my-2 py-4" style="float:right;margin-right:175px;box-shadow: 0 0.1rem 0.5rem rgb(0 0 0 / 15%);">
        <div class="row"  style="margin:0 auto;" id="first">
        <form class="form" method="POST">
            <div class="form-group">
            <textarea name='post_text' id='post_text_area' placeholder='Share something...'></textarea><br/>
            <input name='comment_text' id='post_text_area' placeholder='Comment something...'>
            
            <input class='btn btn-success btn-sm' type='submit' name='post' id='post_button' value='post'>    
            </div>
        </form>
        </div>
    </div>
    
    <div class="container col-5 my-2 py-5" style="float:right;margin-right:175px;box-shadow: 0 0.1rem 0.5rem rgb(0 0 0 / 15%);">
    <div class="row" style="margin:0 auto;" id="second">
            
        </div>
    </div>
        
          
         
    </div>


</div>


<?php
include 'connection.php';
if(isset($_POST['post'])){
    $get_id =$_GET['id'];
    $post =$_POST['post_text'];
    $comment =$_POST['comment_text'];
   
    $status=1;
    $insertqry="INSERT INTO comments VALUES (NULL,'$get_id','$post','$comment')";
	$insertqry=mysqli_query($conn,$insertqry);
}

?>