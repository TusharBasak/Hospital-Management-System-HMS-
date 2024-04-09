<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Give Prescription</title>
    <!-- <link rel="stylesheet" href="patient.css"> -->
    <!-- <link rel="stylesheet" href="feedback.css"> -->
    <link rel="stylesheet" href="prescription.css">
</head>
<body>
    

    <div class="supercontainer">
    <button class="btn"><a href="doctor-dashboard.php">Go Back </a></button>
        <div class="container">

            <h1 style="color: red;"> Write Prescription </h1>
              <form action="insertprescription.php" method="post">
              <div class="subcontainer">
                 &nbsp;
                 &nbsp;
                 &nbsp;
                 &nbsp;
                 &nbsp;  &nbsp;
                 &nbsp;
                 &nbsp;  &nbsp;
                 &nbsp;  &nbsp;   &nbsp;  &nbsp;
              <input type="number" name="appoinmentid" placeholder="Enter Appoinmentt ID" class="search" required>
              
                 </div>
                 <br>
              
                 <div class="subcontainer">
                 <label for="textid" class="text"><b>Disease:</b></label> 
                 &nbsp;
                 &nbsp;
                 &nbsp;
                 &nbsp;
                 &nbsp;
                 &nbsp;
                <textarea name="textareainput" class="textareaid"  id="textid" >
  
              </textarea>
              
                 </div>
                 <br><br><br>
                 <div class="subcontainer1">
                 <label for="textid1" class="text"><b>Allergy:</b></label> 
                 &nbsp;
                 &nbsp;
                 &nbsp;
                 &nbsp;
                 &nbsp;
                 &nbsp;
                <textarea name="textareainput1" class="textareaid"  id="textid1" >
  
              </textarea>
                 </div>
                 <br><br><br>
                 <div class="subcontainer2">
                 <label for="textid2" class="text"><b>Prescription:</b></label> 
                 &nbsp;
                 &nbsp;
                 &nbsp;
                
                 
                <textarea name="textareainput2" class="textareaid"  id="textid2" >
  
              </textarea>
                 </div>
               <br>
               <br>
               <div class="subcontainer3">
               &nbsp;
                 &nbsp;
                 &nbsp;
                 &nbsp;
                 &nbsp;
                 &nbsp;
                 &nbsp;
                 &nbsp;
                 &nbsp;
                
                 <a href="insertappoinment.php">   <input type="submit" name="prescribe" value="Prescribe"></input>      </a>
               <!-- <input type="submit" name="prescribe" value="Prescribe"></input> -->
        
                <input type="reset" value="Reset"></input> <br><br>
               </div>
             
        
              </form>
             
               <?php
                if(isset($_GET['message'])){
                    echo "<h3>".$_GET['message']."</h3>";
                }
               ?>
        
        </div>

    </div>
    


</body>
</html>




