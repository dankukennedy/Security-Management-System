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
                     <h2>Messages Page</h2>   
                        <h5>Defence Intellengence  </h5>
                        <section class="mail-list">
                                        <?php

                                        $message_Qry="SELECT * FROM messages LIMIT 5";
                                        $result=$db->conn->query($message_Qry);
                                        if(!$result)
                                        {
                                            echo "Something Went Wrong";
                                        } else
                                        {
                                            while ($row=$result->fetch_assoc())
                                            {

                                                echo ' 
 <!-- Collapsable Card Example -->
                            <div class="card shadow mb-4">
                                <!-- Card Header - Accordion -->
                                <a href="#" class="d-block card-header py-3" data-toggle="collapse"
                                    role="button" aria-expanded="true" aria-controls="collapseCardExample">
                                    <h6 class="m-0 font-weight-bold text-primary">Subject:<br>'.$row['subject'] .' </h6>
                                </a>
                                <!-- Card Content - Collapse -->
                                <div class="collapse show" ">
                                    <div class="card-body">
                                       Content:<br><form> <textarea  class="form-control"  name="comment" rows="5" cols="70" disabled>'.$row['content'] .' 

                                       </textarea></form>   <strong style="color: seagreen"><br>Time: '.$row['created_at'] .' </strong><strong style="color: #DB0630">  </strong>
                                   </div>
                                      
                      
                                </div>
                            </div>
                            
  ';
                                            }
                                        }

                                        ?>

                                    </section>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
                    </div>
                </div>
                 <!-- /. ROW  -->
                 <hr />
               
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>



<?php   
include('include/footer.php')
?>