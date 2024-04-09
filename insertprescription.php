<?php

include 'dbcon.php';

?>
<?php
 $appoinmentid;
$disease;
$allergy;
$prescription;


 $flag=true;

if(isset($_POST['prescribe'])){
     $appoinmentid=$_POST['appoinmentid'];
     $disease=$_POST['textareainput'];
     $allergy=$_POST['textareainput1'];
     $prescription=$_POST['textareainput2'];



}

// appoinment verification

$query3= "select * from `appoinmenttb`";
// prescriptiontbl
$result3=mysqli_query($connections,$query3);

if(!$result3){
 die("Query Failed".mysqli_error());
}

 else{
     while($row=mysqli_fetch_assoc($result3)){
         $verify_appointmentid= $row['appoinmentid'];
         if(($verify_appointmentid==$appoinmentid)){
           $query = "SELECT pid,patname,gender,docid,docname FROM `appoinmenttb` where `appoinmentid`='$appoinmentid'";

           $result = mysqli_query($connections, $query);
          
           while ($row = mysqli_fetch_assoc($result)) {
               $pid = $row['pid'];
               $name = $row['patname'];
               $gender = $row['gender'];
               $docid = $row['docid'];
               $docname = $row['docname'];
           
              
             }
          
       
             
           
           
              
            
       
          
             $query2 = "INSERT INTO `prescriptiontbl` (`appoinmentid`, `pid`, `patname`,`docid`,
             `Doctorname`,`Disease`,`Allergy`,`Prescription`) 
             VALUES ('$appoinmentid','$pid','$name','$docid','$docname','$disease','$allergy','$prescription')";
         
             $result2=mysqli_query($connections,$query2);
         
             if(!$result2){
                 die("Query Failed".mysqli_error());
             }
             else{
                
                 header('location:giveprescription.php?message=You Successfully Prescribed');
                 // header(`location:patient-dashboard.php?message=Welcome ${fullname}`);
                
             }
             
             break;
         }
         else{
           header('location:giveprescription.php?message=Appoinment id not found');
         }
        
     }
     
 }


  

     
 // // Use the retrieved data here 
 // echo "Patient ID: $pid<br>";
 // echo "Name: $fullname <br>";
 // echo "Gender: $gender<br>";
 // echo "Email: $email<br>";
 // echo "Contact: $contact<br>";
 // echo "doctid: $docid <br>";
 // echo $selectdoctor."</br>";
 // echo $doctorfees."</br>";
 // echo $date."</br>";
 // echo $appoinmenttime."<br>";
 // echo "status: $status <br>";




?>





