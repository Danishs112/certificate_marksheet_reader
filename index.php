<?php
session_start();
$host = "localhost"; /* Host name */
$user = "root"; /* User */
$password = ""; /* Password */
$dbname = "intelligent_certificate"; /* Database name */


# connection between the host and user
$con = mysqli_connect($host, $user, $password,$dbname);
// Check connection
if (!$con) {
  die("Connection failed: " . mysqli_connect_error());
}


?>
<?php
$a = session_id();  #session_id started
#echo $a;
if(isset($_POST['but_upload'])){
  $certificateId = time();    # certificate Id  will have name of the time
  $name = $_FILES['file']['name']; #name of the image filled
  #echo $name;
  $target_dir = "img/";  #target folder where the image stored for the the processing
  $target_file = $target_dir . basename($_FILES["file"]["name"]); #target_file 
  $date = date("Y-m-d h:i:s");
  // Select file type
  $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
  echo "\n"; 
  $filepath = filesize($target_file);
  
  // Valid file extensions
  $extensions_arr = array("jpg","jpeg","png","gif");

  // Check extension
  if( in_array($imageFileType,$extensions_arr) ){
 
     // Insert record into the certificate_upload table where the certificate have been stored
  $query = "insert into certificate_uploads(certificate_id,certificate_location,submitted_on) values('$certificateId','".$target_dir.$name."','$date')";

  #connection between the connection and the query
     mysqli_query($con,$query);
  
     #move_uploaded_file($_FILES['file']['tmp_name'],$target_dir.$name);

     #integration between the python file and the php
   echo shell_exec('python third.py');

   #location of  the image is changed when stored 
   header("location:second.php");

  }
  else
  {
    echo "<script>alert('unappropriate type')</script>";
  }
 
}
?>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<script src= "https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"> 
</script>
 
  

<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script>
  //the file name of the image stored in the database
    $(document).ready(function(){
        $('input[type="file"]').change(function(e){
            var fileName = e.target.files[0].name;

         document.getElementById("demo").innerHTML = fileName;
        });
    });
</script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>




<script>
$(document).ready(function(){

 $("#tbUser").on('click','.btnDelete',function(){
       $(this).closest('tr').remove();
     });

});

</script>

<script>
  var control = $("#upload"),
    clearBn = $("#clear");

// Setup the clear functionality
clearBn.on("click", function(){
    control.replaceWith( control.val('').clone( true ) );
});

// Some bound handlers to preserve when cloning
control.on({
    change: function(){ console.log( "Changed" ) },
     focus: function(){ console.log(  "Focus"  ) }
});

  </script>
<style>


input[type="file"] {
  position: absolute;
  z-index: -1;
  top: 6px;
  left: 0px;
  font-size: 15px;
  color: rgb(153,153,153);
}

.button-wrap {
  position: relative;
}

.new-button {
    display: inline-block;
    padding: 8px 12px; 
    cursor: pointer;
    border-radius: 4px;
    background-color: white;
    font-size: 20px;
    color:black;
}
</style>
</head>
<body>

<section>
  <div class="container">
    <div class="row">
      <div class="col text-center">
        <h1>Certificate Reader</h1>
        <br />
  
  <!-- form the inserting the data into the database -->
  <form method="post" action="" enctype='multipart/form-data'>
        <div class="container bg-primary">

          <div class="row">

            <div class="col ml-2 mr-2 mb-2 mt-2" style="border-style: dashed;border-color:white; border-margin:20px;">
          

          <i class="fa fa-cloud-upload fa-5x text-white" aria-hidden="true"></i>
          <br>
          <p class="text-white h5"> Drop file here</p>

    



           <!--<input type='file' name='file' />-->
    
   
   <!--   <input type="file" name="file"  id="customFile"> -->

     <div class="button-wrap">
    <label class ="new-button" for="upload"> <i class="fa fa-search" aria-hidden="true"></i> Choose File
    <input id="upload" type="file" name="file" >
    </div>


      
       </div>
      </div>

      
      </div>
      <br>
<table id="tbUser" class="table table-striped">
<tbody>
 <tr>
<td>
<td ><p id="demo"></p></td> 
<td class="text-center" style="margin-left:50px;"><p id="demo1"></p></td>
<td class="text-right mr-5"><button class="btnDelete btn btn btn-danger text-right">Delete</button></td>
</tr>

</tbody>
 </table> 
      <input type="submit" name="but_upload" value="Start" class="btn btn-success">
    </form>
<br>

 
      </div>
    </div>
  </div>
</section>
<script> 
      // it sends the size of the image to the user
        $('#upload').on('change', function() { 
            $('#demo1').text(Math.round((this.files[0].size)/1024) + " KB"); 
        }); 
    </script> 
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
<script>
var i = 0;
function move() {
  if (i == 0) {
    i = 1;
    var elem = document.getElementById("myBar");
    var width = 1;
    var id = setInterval(frame, 100);
    function frame() {
      if (width >= 100) {
        clearInterval(id);
        i = 0;
      }
      
      if(width === 100){
      document.getElementById("demo").innerHTML="Done";
}
      
      else {
        
        width++;
        elem.style.width = width + "%";
      }
    }
  }
}
</script>

</body>
</html>
