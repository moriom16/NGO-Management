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
<div>
    <ul class="nav justify-content-center">
    <li class="nav-item">
        <a class="nav-link" href="manager_task.php"><i class="fas fa-home"></i> Home </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="#"><i class="fa fa-refresh"></i>  Check/Update Task </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="#"><i class="fa fa-file fa-fw"></i> Assign Task</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="#"><i class="fa fa-bell fa-fw"></i>  Check Notice </a>
    </li>
    </ul>
</div>

<div class="container my-2" style="display:block; margin:0 auto;box-shadow: 0 0.1rem 0.5rem rgb(0 0 0 / 15%);">
<div class="container col-10 my-2" style="margin-left:150px;">
    <div class="text-center my-3 pt-3">
    <p>Create Budget</p>
    <hr>
    </div>
<form method="POST">
<div class="container my-2" style="margin-right:150px;">
    <div class="row">
        <div class="col-lg-2"></div>
        <div class="col-lg-8">
            <div class="card p-3">
    <div class="form-group">
        <label for="">Take a note</label>
        <textarea type="text" class="form-control" name="description" placeholder=" "></textarea>
    </div>
    <div class="form-group">
    <label class="form-label" for="customFile">upload file from device</label>
    <input type="file" class="form-control" id="customFile" />
    </div>

    <div>
    <button <?php echo" <a href='#' class='btn btn-success btn-sm'>Save</a>";?> </button>
    </div>
            </div>
        </div>
</div>
</form>

<div class="container col-9" style="margin-left:90px;">
    <div class="text-center my-3 pt-3">
        <p>Volunteer List</p>
        <hr>
    </div>
<form method="POST" action="assign.php">
<table class="table table-bordered">
  <thead>
     
      <th>ID</th>
      <th>Volunteer Name</th>
      <th>Contact</th>
      <th>Location</th>
      <th>Responsibility</th>
    </tr>
  </thead>
    <?php
        $query ="SELECT * FROM volunteer_info";
        $run=mysqli_query($link,$query);
        while($user=mysqli_fetch_assoc($run)){
    ?>
  
    <tr>
     
      <td><input type="checkbox" name="vid" value="<?php echo $user['v_id'];?>">  
        &nbsp; <?php echo $user['v_id'];?></td>
      <td><input type="hidden" name="v_first_name" class="form-control"><?php echo $user['v_first_name'];?></td>
      <td><input type="hidden" name="v_phone" class="form-control"><?php echo $user['v_phone'];?></td>
      <td><input type="hidden" name="v_add" class="form-control"><?php echo $user['v_add'];?></td>
      <td>
      <input type="text" name="v_resibility" placeholder=" " class="form-control">
      </td>
    </tr>

    <?php } ?> 

</table>
<button name="assign" type="submit" class='btn btn-success btn-sm'>Create </button>
        
<div class="container col-2 my-4" style="margin:0 auto; padding-bottom:30px;">
<!-- <button<?php echo" <a href='#' class='btn btn-success btn-sm'>Share  </a>";?><i class="fas fa-share"></i></button>  -->
</div>
</form>
</div>

</div>
        </div>
        </div>
               

</body>
</html>
<!--

include 'connection.php';
if(isset($_POST['assign'])){
    $vo_id =$_POST['vid'];
    $v_response = $_POST['v_resibility'];
    $status=1;
    $insertqry="INSERT INTO team VALUES (NULL,'$vo_id[]','$v_response[]','$status')";
	$insertqry=mysqli_query($conn,$insertqry);
}


-->