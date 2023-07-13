<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="/docs/4.0/assets/img/favicons/favicon.ico">

    <title>Signin Template for Bootstrap</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/sign-in/">

    <!-- Bootstrap core CSS -->
    <link href="https://getbootstrap.com/docs/4.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../css/signin.css" rel="stylesheet">
  </head>

  <body class="text-center">
    <form class="form-signin" action="emp_sign_up.php" method="post">
      <img class="mb-4" src="https://getbootstrap.com/docs/4.0/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
      <h1 class="h3 mb-3 font-weight-normal">Please sign up</h1>
      <label for="inputEmail" class="sr-only">Email address</label>
      <input type="email" name="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>

      <label for="inputEmail" class="sr-only">Username</label>
      <input type="text" name="username" id="username" class="form-control" placeholder="Enter your username" required autofocus>

      <label for="inputPassword" class="sr-only">Password</label>
      <input type="password" name="password" id="inputPassword" class="form-control" placeholder="Password" required>

      <label for="inputEmail" class="sr-only">First Name</label>
      <input type="text" id="first_name" class="form-control" name="first_name" placeholder="Enter Your First Name" required autofocus>
       
      <label for="inputEmail" class="sr-only">Last Name</label>
      <input type="text" id="last_name" class="form-control" name="last_name" placeholder="Enter Your Last Name" required autofocus>
      
      <label for="inputEmail" class="sr-only">Admin Type</label>
      <input type="hidden" id="admin" class="form-control" name="admin" value="2" required autofocus> 
<br>
      <input type="submit" class="btn btn-lg btn-primary btn-block" name="submit" value="Sign up">
      <a href="admin_login.php">Already Account</a>
      
    </form>
  </body>
</html>

<?php
include('connection/db.php');
if (isset($_POST['submit'])){
  $email=$_POST['email'];
  $password=$_POST['password'];
  $username = $_POST['username'];
  $first_name=$_POST['first_name'];
  $last_name=$_POST['last_name'];
  $admin_type=$_POST['admin'];

  

  $query=mysqli_query($conn,"insert into admin_login(admin_email,admin_password,admin_username,first_name,last_name,admin_type)values('$email','$password','$username','$first_name','$last_name','$admin_type')");
  var_dump($query);
  if ($query) {
    echo "<script>alert('Now You Can Login!')</script>";
    header('location:admin_login.php');
  }else{
   echo "<script>alert('Some Error Please Try Again!')</script>";
  }
  
  
  }
?>
