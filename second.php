<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
  <title>output</title>
</head>
<body style="text-align:center;">
<h1> Certificate Reader</h1>
<div class="container">
  <div class="row">
    <div class="col">
<?php

session_start();
$host = "localhost"; /* Host name */
$user = "root"; /* User */
$password = ""; /* Password */
$dbname = "intelligent_certificate"; /* Database name */

$con = mysqli_connect($host, $user, $password,$dbname);
// Check connection
if ($con) {
  //echo "success";
}
else
{
  echo "fail";
}


?>

<?php  // fetch the data from the table
$sql1="SELECT * FROM certificate_information ORDER BY submitted_on DESC LIMIT 1 ";
$mysql1=mysqli_query($con,$sql1);
while($res=mysqli_fetch_row($mysql1)) 
{
?>
    
   <form method="post" action="">
   <div class="form-group row">
    <label for="inputEmail3" class="col-sm-2 col-form-label"><b>Student Name :</b></label>
    <div class="col-sm-10">
   <input type="text" class="form-control" id="inputEmail3" value="<?php echo $res[3];?>" >
    </div>
  </div>

  <!------------------------------------------------------------------------------------>
  <div class="form-group row">
    <label for="inputEmail3" class="col-sm-2 col-form-label"><b>Course Name:</b></label>
    <div class="col-sm-10">
   <input type="text" class="form-control" id="inputEmail3" value="<?php echo $res[4];?>" >
    </div>
  </div>

  <div class="form-group row">
    <label for="inputEmail3" class="col-sm-2 col-form-label"><b>Instructor Name:</b></label>
    <div class="col-sm-10">
   <input type="text" class="form-control" id="inputEmail3" value="<?php echo $res[5];?>" >
    </div>
  </div>

   <div class="form-group row">
    <label for="inputEmail3" class="col-sm-2 col-form-label"><b>Certifying Authority:</b></label>
    <div class="col-sm-10">
   <input type="text" class="form-control" id="inputEmail3" value="<?php echo $res[6];?>" >
    </div>
  </div>

  <div class="form-group row">
    <label for="inputEmail3" class="col-sm-2 col-form-label"><b>Date On Certificate:</b></label>
    <div class="col-sm-10">
   <input type="text" class="form-control" id="inputEmail3" value="<?php echo $res[7];?>" >
    </div>
  </div>
<?php } ?>
  <a type="submit" value="Submit" name="submit" href="index.php" class="btn btn-lg btn-success">Submit</a>
   <!--<p><b>Student Name: </b><input type="text" name="name" value="<?php echo $res[3];?>"?> </p>
 
   <p><b>Course Name : </b><input type="text" name="name" value="<?php echo $res[4];?>"?> </p>
  <p><b>Instructor Name : </b><input type="text" name="name" value="<?php echo $res[5];?>"?></p>
  <p><b>Certifying Authority: </b><input type="text" name="name" value="<?php echo $res[6];?>"?></p>
   <p><b>Date on certificate :</b> <input type="text" name="name" value="<?php echo $res[7];?>"?></p>
 </form>
 <input type="submit" name ="submit" value="submit"> -->
  <br>


</div>
</div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</body>
</html>