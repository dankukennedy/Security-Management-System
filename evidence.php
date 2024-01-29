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
                     <h2> Proof & Evidence Page</h2>   
                     <?php  include('include/message.php'); ?>
                        <h5>Defence Intellengence </h5>
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
                <div class="row">
               
              
             
                    <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-green set-icon">
                    <i class="fa fa-laptop"></i>
                </span>
                <div class="text-box" >
                    <p class="main-text"><a href="writeEvidence.php"  style="text-decoration:none ;">
                   Proof </a></p>
                    <p class="text-muted">Write</p>
                </div>
             </div>
		     </div>
             
             <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-red set-icon">
                <i class="fa fa-desktop"> </i> 
                </span>
                <div class="text-box" >
                    <p class="main-text"><a href="viewEvidence.php"  style="text-decoration:none ;">Proofs</a></p>
                    <p class="text-muted">View</p>
                </div>
             </div>
		     </div>
             
			</div>
                 <!-- /. ROW  -->
                <hr />  

<?php   
include('include/footer.php')
?>