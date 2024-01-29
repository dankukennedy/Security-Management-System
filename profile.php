<?php 
include('include/header.php')
?>

<?php 
include('include/sidebar.php')
?>


    <!-- /. NAV SIDE  -->
    <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>My Profile</h2>   
                     <?php  include('include/message.php'); ?>
                        <h5>Defence Intellengence . </h5>
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
                <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-red set-icon">
                    <i class="fa fa-user"></i>
                </span>
                <div class="text-box" >
                    <p class="main-text"><a href="viewProfile.php"  style="text-decoration:none ;">
                    Profile </a></p>
                    <p class="text-muted">Details</p>
                </div>
             </div>
		     </div>
                  
                    <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-blue set-icon">
                    <i class="fa fa-laptop"></i>
                </span>
                <div class="text-box" >
                    <p class="main-text"><a href="updateProfile.php"  style="text-decoration:none ;">
                    Profile </a></p>
                    <p class="text-muted">Update  </p>
                </div>
             </div>
		     </div>
           
			</div>
                 <!-- /. ROW  -->
                <hr /> 




<?php   
include('include/footer.php')
?>