<?php 
include('include/header.php')
?>

<?php 
include('include/sidebar.php')
?>

<style>
    body{
        font-family: sans-serif;
    }
    .location{
        text-align:center;
        font-size:30px;
        border-radius:10px;

    }
    button:hover{
        background-color:green;
        color:white;
        border-radius:10px;

    }
    button{
        border-radius:10px; 
    }
 </style>
<div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12"> 
                     <div>
                          <h2 style="margin:20px; font-family: sans-serif; text-align:center; text-transform: uppercase;">Generate GPS Page</h2>
                       </div>
                     <?php  include('include/message.php'); ?>
                     <h3><strong>Defence Intellengence DSR </strong></h3> 
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
                <div class="row">
               <div class="location">
                <h3>Click On The Button Get Live Location</h3>
               <button onclick="getLocation()">Get Location</button>
               </div>
               

 <script>
     function getLocation() {
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(showPosition, showError);
        } else {
            alert("Geolocation is not supported by this browser.");
        }
    }

     function showPosition(position) {
        var lat = position.coords.latitude;
        var lon = position.coords.longitude;

        // Send the coordinates to the server using AJAX
        var xhr = new XMLHttpRequest();
        xhr.open("POST", "codes/gps_code.php", true);
        xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4 && xhr.status == 200) {
                alert("Location saved!");
            }
        };
        xhr.send("latitude=" + lat + "&longitude=" + lon);
    }

    function showError(error) {
        switch(error.code) {
            case error.PERMISSION_DENIED:
                alert("User denied the request for Geolocation.");
                break;
            case error.POSITION_UNAVAILABLE:
                alert("Location information is unavailable.");
                break;
            case error.TIMEOUT:
                alert("The request to get user location timed out.");
                break;
            case error.UNKNOWN_ERROR:
                alert("An unknown error occurred.");
                break;
        }
    }
</script>
             
               <!-- <form class="user" action="" method="POST"> 
                            

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

                </form>   -->    
			</div>
                 <!-- /. ROW  -->
                <hr />  

<?php   
include('include/footer.php')
?>