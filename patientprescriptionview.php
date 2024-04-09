<link rel="stylesheet" href="table.css">

<div class="supercontainer">
<button class="btn"><a href="patientprescription.php">Go Back </a></button>
    <div class="container">

    <?php
 include 'dbcon.php';
 $flag=false;
global $patid;
if(isset($_POST['dbsearch'])){
    $patid=$_POST['patientid'];
}


$query= "select * from `prescriptiontbl`";

 $result1=mysqli_query($connections,$query);

 if(!$result1){
  die("Query Failed".mysqli_error());
 }

  else{
      while($row=mysqli_fetch_assoc($result1)){
        $verify_patid= $row['pid'];
          if( $verify_patid==$patid){
              $flag=true;
              break;
          }
          
      }
     
  }

  if($flag!=true){
    header('location:patientappoinmentstatus.php?message1=Your Patient ID is not found');
  }
   
  else{
    ?>
    <h2 style="color: red;"> Search Result </h2>
  <table style="width:80%">
  <thed>
  <tr>
  
    <th>Prescription Id</th>
    <th>Appoinment Id</th>
    <th>Pid</th>
    <th>Patient Name</th>
    <th>Doctor Name</th>
    <th>Disease</th>
    <th>Allergy</th>
    <th>Prescription</th>
  
  </tr>
</thead>
  <tbody>

  <?php 



                     
                    
                    
                    
                  
              
                $query = "select * from `prescriptiontbl` where `pid`='$patid' ";
                     $result = mysqli_query($connections,$query);
                     while ($row = mysqli_fetch_assoc($result)){
              
                     ?>
                    
                       <tr>
                      
                        <td><?php echo $row['prescribeid'];?></td>
                        <td><?php echo $row['appoinmentid'];?></td>
                        <td><?php echo $row['pid'];?></td>
                        <td><?php echo $row['patname'];?></td>
                        <td><?php echo $row['Doctorname'];?></td>
                        <td><?php echo $row['Disease'];?></td>
                        <td><?php echo $row['Allergy'];?></td>
                        <td><?php echo $row['Prescription'];?></td>
                       
                   </tr> 
                      <?php } ?> 
                
                    


</tbody>
 
</table>
<?php } ?> 
    </div>
</div>