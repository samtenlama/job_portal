<?php
session_start();
include('connection/db.php');

$login= $_SESSION['email'];
$Job_Title=$_POST['job_title'];
$Description=$_POST['Description'];
$country=$_POST['country'];
$state=$_POST['state'];
$city=$_POST['city'];
$category=$_POST['category'];
$Keyword=$_POST['Keyword'];

$query= mysqli_query($conn,"insert into all_jobs(customer_email,job_title,des,country,state,city,category,Keyword)values('$login','$Job_Title','$Description','$country','$state','$city','$category','$Keyword')");
// var_dump($query);
if ($query){
    echo "Data has been successfully Inserted !";
}else{
    echo "Some error please try again !";
}

?>