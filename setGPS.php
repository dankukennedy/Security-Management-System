<?php 
include('include/header.php')
?>

<?php 
include('include/sidebar.php')
?>

<div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2> Generate GPS Page</h2>   
                     <?php  include('include/message.php'); ?>
                        <h5>Defence Intellengence  </h5>
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
                <div class="row">
               
              
             
                <form class="user" action="" method="POST"> 
                            

                            <div class="form-group row">
                                <div class="col-sm-6 mb-3 mb-sm-0">
                                    <input type="text" class="form-control " name="longitude"
                                        id="fNameId" placeholder="Enter Your Longitude" required>
                                </div>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control " name="latitude"
                                        id="lastNameId" placeholder="Enter Your Latitude"required>
                                </div>
                            </div>

                           
                                <div class="form-group">
                                 
                                        <textarea  class="form-control"  name="comment" rows="5" cols="70">Comment Here

                                        </textarea>
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="btn btn-primary btn-user "  id="report" name="send_report">Send GPS Location </button>
                                </div>

                </form>       
			</div>
                 <!-- /. ROW  -->
                <hr />  

<?php   
include('include/footer.php')
?>