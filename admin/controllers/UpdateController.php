<?php class UpdateController
{
   public function __construct()
   {
    $db=new DatabaseConnection;
    $this->conn=$db->conn;
   }

   public function edit($id)
   {
    $user_id=validateInput($this->conn,$id);
    $userQuery="SELECT * FROM admin WHERE id='$user_id' LIMIT 1";
    $result=$this->conn->query( $userQuery);
    if( $result->num_rows==1)
    {  $data=$result->fetch_assoc();
        return $data;

    }else{
         return false;
    }

   }

   public function update($rank,$region,$subDivision,$number,$id)
   {
   $user_id=validateInput($this->conn,$id);
  $rank= validateInput($this->conn,$_POST['rank']);
  $region= validateInput($this->conn,$_POST['region']);
  $subDivision= validateInput($this->conn,$_POST['subDivision']);
  $number= validateInput($this->conn,$_POST['number']); 

    $userUpdateQuery=" UPDATE admin SET rank='$rank',region='$region',subDivision='$subDivision',number='$number'  WHERE id='$user_id' LIMIT 1";
   $result=$this->conn->query($userUpdateQuery);
   if($result)
   { 
     return true;
   }else 
   { 
    return false;
   }

   }


}
 
?>