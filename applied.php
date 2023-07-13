<?php
// error_reporting(0);
include('connection/db.php');
include('include/header.php');
// include('include/my_profile.php');
$query = mysqli_query($conn, "select * from profiles where user_email='{$_SESSION['email']}'");
while ($row = mysqli_fetch_array($query)) {
  $img = $row['img'];
  $name = $row['name'];
  $dob = $row['dob'];
  $number = $row['number'];
  $email = $row['email'];
}
?>

<div class="hero-wrap js-fullheight" style="background-image: url('images/bg_2.jpg');"
  data-stellar-background-ratio="0.5">
  <div class="overlay"></div>
  <div class="container">
    <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start"
      data-scrollax-parent="true">
      <div class="col-md-8 ftco-animate text-center text-md-left mb-5"
        data-scrollax=" properties: { translateY: '70%' }">
        <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-3">
            <a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Profile</span>
        </p>
        <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Jobs Applied</h1>
      </div>
    </div>
  </div>
</div>

<br>

<div style="margin-left: 25%; width: 50%; border: 1px solid gray; padding: 10px;">
  <table class="table">
    <thead>
      <tr>
        <th scope="col">#</th>
        <th scope="col">Job Title</th>
        
        <th scope="col">Salary</th>
        <th scope="col">Status</th>
        <th scope="col">Remarks</th>
      </tr>
    </thead>
    <tbody>
      <?php
      include('connection/db.php');

      $query = mysqli_query($conn, "
      SELECT * FROM job_apply LEFT JOIN all_jobs ON job_apply.id =all_jobs.job_id WHERE job_apply.job_seeker='{$_SESSION['email']}'");
      // $query=mysqli_query($conn,$sql);
// var_dump($sql);
      $a = 0;

      while ($row = mysqli_fetch_array($query)) {
        ?>

        <tr>
          <th scope="row"><?php echo ++$a; ?></th>
          <td><?php echo $row['job_title']; ?></td>
          
          <td><?php echo $row['salary']; ?></td>
          <td><?php echo $row['job_status']; ?></td>
          <td><?php echo $row['remarks']; ?></td>
        </tr>
      <?php } ?>
    </tbody>
  </table>
</div>
<br>
<section class="ftco-section-parallax">
  <div class="parallax-img d-flex align-items-center">
    <div class="container">
      <div class="row d-flex justify-content-center">
        <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
          <h2>Subcribe to our Newsletter</h2>
          <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there
            live the
            blind texts. Separated they live in</p>
          <div class="row d-flex justify-content-center mt-4 mb-4">
            <div class="col-md-8">
              <form action="#" class="subscribe-form">
                <div class="form-group d-flex">
                  <input type="text" class="form-control" placeholder="Enter email address">
                  <input type="submit" value="Subscribe" class="submit px-3">
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<?php
include('include/footer.php');
?>
<!-- <script>
  $(document).ready(function(){
    $("#submit").click(function(){
      var data=$("#profile_form").serialize();
       $.ajax({
        type:"POST",
        url:"profile_add.php",
        data:data,
        success:function(data){
        alert(data);

        }
      });
    })
  });

</script> -->