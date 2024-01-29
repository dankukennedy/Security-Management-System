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
                     <h2>Security </h2>   
                     <?php  include('include/message.php'); ?>
                        <h5>Defence Intellengence . </h5>
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
                <div class="row">
                    <div class="col-md-12">
                <form class="user" action="" method="POST">
                                <div class="form-group">
                               <input type="hidden" name="user_id" value="<?=$data['id'];  ?> " >
                                    
                                    <input type="password" class="form-control "
                                        id="password"  name="currentPassword"
                                        placeholder="Enter Your Current Password" required>
                                </div>
                                <div class="form-group">
                                    <input type="password" class="form-control "
                                        id="newPassword"  name="newPassword"
                                        placeholder="Enter New Password" required>
                                </div>
                                <div class="form-group">
                                    <input type="password" class="form-control "
                                        id="repeatPassword"  name="rePassword"
                                        placeholder="Repeat Password" required>
                                </div>

                                <div class="form-group">
                            <button type="submit" class="btn btn-success btn-user btn-block"   name="resetPassword"
                                >Reset Password </button>
                        </div>
                              
                            </form>
                    </div>
                   
           
			</div>
                 <!-- /. ROW  -->
                <hr /> 




<?php   
include('include/footer.php')
?>