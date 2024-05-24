<?php
include('../config/app.php');
include_once('../controllers/LocationController.php');


if($_SERVER["REQUEST_METHOD"] == "POST")
{
    $inputData=[
        'latitude'=>validateInput($db->conn,$_POST['latitude']),
         'longitude'=>validateInput($db->conn,$_POST['longitude']),
         'comment'=>validateInput($db->conn,$_POST['comment']),
         'email'=>validateInput($db->conn,$_POST['email']),
        
        
    ];
    $location= new ReportController;
    $result=$location->createLocation($inputData);
    if($result)
    { redirect(" <h4 style='color:green; font:200'>Location Added Successfully</h4>","ad_gps.php");


    }
     else
     {
        redirect(" <h4 style='color:red; font:200'>Something Went Wrong Location Not Created</h4>","ad_gps.php");

     }
}


if(isset($_POST['delete_report'])) 
{
   $id=validateInput($db->conn,$_POST['delete_report'] );
   $report=new ReportController;
   $result=$report->delete( $id);
   if($result)
   {
      redirect("Report Deleted Successfully","viewReports.php");
   }
   else
   {
      redirect("Something Went Wrong","viewReports.php");
    }


} 

if(isset($_POST['update_report']))
      {
        $id=validateInput($db->conn,$_POST['report_id']);
    
        $inputData=[
            'title'=>validateInput($db->conn,$_POST['title']),
             'post'=>validateInput($db->conn,$_POST['post']),
            'occurance'=>validateInput($db->conn,$_POST['occurance']),
            'description'=>validateInput($db->conn,$_POST['description']),
            'comment'=>validateInput($db->conn,$_POST['comment'])
        ];
      $report=new ReportController;
      $result=$report->update($inputData,$id);
    if($result)
    {
       redirect("Report Updated Successfully","viewReports.php");
    }
      else
      {
       redirect("Something Went Wrong, Report Cannot Be Updated","editReport.php");
      }
    
    
      }





?>