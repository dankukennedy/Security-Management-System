
<?php
include_once('controllers/ProofController.php');
include('include/header.php')
?>
<?php
include('include/sidebar.php')
?>



  <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2> View Evidence</h2>
                        <h5>Defence Intelligence  </h5>
                    </div>
                </div>
                 <!-- /. ROW  -->
                  <hr />
                <div class="row">


                    <?php

                    $proof=new ProofController;
                    $result=$proof->Index();
                    if($result)
                    {
                        foreach($result as $row )
                        {

                            ?>

                            <div class="container">

                                <!-- Trigger the modal with a button -->
                                <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>
                                <!-- Modal -->
                                <div id="myModal" class="modal fade" role="dialog">
                                    <div class="modal-dialog modal-lg">

                                        <!-- Modal content-->
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                <h4 class="modal-title">Modal Header</h4>
                                            </div>
                                            <div class="modal-body">
                                                <?//=$row['id'];  ?><br>
                                                Title:<?= $row['title'] ?><br>
                                                Post: <?= $row['post'] ?><br>
                                                Description: <?= $row['description'] ?><br>
                                                Comment:  <?= $row['comment'] ?><br>
                                                <embed src="files/<?= $row['file_url'] ?>"
                                                       frameborder="0" width="100%" height="400px">

                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                   <br>

                            <?php
                        }

                    } else
                    {
                        echo " No Records Found ";
                    }
                    ?>





                    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>




                </div>
                 <!-- /. ROW  -->
                <hr />

<?php
include('include/footer.php')
?>