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

                    
                     <h2>View Profile </h2>   
                        <h5>Defence Intellengence  </h5>
                       
                    </div>
                </div>
                 <!-- /. ROW  -->
                 <hr />
                 <div>
                 <section class="bg-light">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 mb-4 mb-sm-5">
                <div class="card card-style1 border-0">
                    <div class="card-body p-1-9 p-sm-2-3 p-md-6 p-lg-7">
                        <div class="row align-items-center">
                            <div class="col-lg-6 mb-4 mb-lg-0">
                                <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="...">
                            </div>
                            <div class="col-lg-6 px-xl-10">
                                <div class="bg-secondary d-lg-inline-block py-1-9 px-1-9 px-sm-6 mb-1-9 rounded">
                                    <h3 class="h2 text-white mb-0"><?=$data['fName'] ." ".$data['lName']." ".$data['otherName']; ?></h3>
                                    <span class="text-primary">Officer</span>
                                </div>
                                <ul class="list-unstyled mb-1-9">
                                    <li class="mb-2 mb-xl-3 display-28"><span class="display-26 text-secondary me-2 font-weight-600"><h4>Position:</span> <?=$data['rank'];  ?></li><span class="text-primary">Personal Details</span></h4>
                                    <li class="mb-2 mb-xl-3 display-28"><span class="display-26 text-secondary me-2 font-weight-600"><h4>NIA: </span> <?=$data['nia'];  ?></li></h4>
                                    <li class="mb-2 mb-xl-3 display-28"><span class="display-26 text-secondary me-2 font-weight-600"><h4>Email: </span> <?=$data['email'];  ?></li></h4>
                                    <li class="mb-2 mb-xl-3 display-28"><span class="display-26 text-secondary me-2 font-weight-600"><h4>Region: </span> <?=$data['region'];  ?></li></h4>
                                    <li class="mb-2 mb-xl-3 display-28"><span class="display-26 text-secondary me-2 font-weight-600"><h4>Sub Division: </span> <?=$data['subDivision'];  ?></li></h4>
                                    <li class="mb-2 mb-xl-3 display-28"><span class="display-26 text-secondary me-2 font-weight-600"><h4>Gender: </span> <?=$data['gender'];  ?></li></h4>
                                    <li class="display-28"><span class="display-26 text-secondary me-2 font-weight-600"><h4>Phone: </span><?=$data['number'];  ?></li></h4>
                                </ul>
                                <ul class="social-icon-style1 list-unstyled mb-0 ps-0">
                                    <li><a href="#!"><i class="ti-twitter-alt"></i></a></li>
                                    <li><a href="#!"><i class="ti-facebook"></i></a></li>
                                    <li><a href="#!"><i class="ti-pinterest"></i></a></li>
                                    <li><a href="#!"><i class="ti-instagram"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-12 mb-4 mb-sm-5">
                <div>
                    <span class="section-title text-primary mb-3 mb-sm-4">About Me</span>
                    <p class="mb-0">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. </p>
                </div>
            </div>
            
        </div>
    </div>
</section>
                 </div>
               
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>



<?php   
include('include/footer.php')
?>