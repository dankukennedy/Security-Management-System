<?php
include_once('controllers/ProofController.php');
include('include/header.php')
?>

<?php
include('include/sidebar.php')
?>

<?php

$proof=new ProofController;
$result=$proof->Index();
if($result)
{
    foreach($result as $row )
    {

        ?>

<style>
    body{
        font-family: sans-serif;
    }
 </style>
 
<div class="container">

        <!-- Trigger the modal with a button -->
        <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Click To View Evidence</button>
        <!-- Modal -->
        <div id="myModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-lg">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">View Evidence</h4>
                    </div>
                    <div class="modal-body">
                        <?//=$row['id'];  ?><br>
                        Title:<?= $row['title'] ?><br>
                        Post: <?= $row['post'] ?><br>
                        Description: <?= $row['description'] ?><br>
                        Comment:  <?= $row['comment'] ?><br>
                        <iframe src="files/<?= $row['file_url'] ?>" width="90%" height="500px">
                        </iframe>


                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
        ?>
 <?php
}

} else
{
    echo " No Records Found ";
}
?>





<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
