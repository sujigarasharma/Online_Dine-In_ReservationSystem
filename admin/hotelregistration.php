<?php
error_reporting(0);
session_start();
 include('config.php');
 
    $Admin_ID = $_POST["Admin_ID"];  
    $userpassword = $_POST["Password"];  
   	$getAdmin_ID = "NULL";
  	$getuserpassword = "NULL";
 
    
$sql = "INSERT INTO restaurant_details (Hotel_ID, Hotel_name, Email_ID,Password,Location,Hotel_GST_code,Phone_number,Landline_number,Opening_timing,Closing_timing,Hotel_Image,Hotel_Special,Hotel_rating,Hotel_dish_analysis)
	VALUES ('$_POST[Hotel_ID]','$_POST[Hotel_name]','$_POST[Email_ID]','$_POST[Password]','$_POST[Location]','$_POST[Hotel_GST_code]','$_POST[Phone_number]','$_POST[Landline_number]','$_POST[Opening_timing]','$_POST[Closing_timing]','$_POST[Hotel_Image]','$_POST[Hotel_Special]','4','$_POST[high_price]')";

$Hotel_name = $_POST["Hotel_name"];
$Hotel_name = str_ireplace (' ', '_',$Hotel_name);

if ($conn->query($sql) === TRUE) 
{
	$sql = "CREATE TABLE $Hotel_name(
    `S_NO` varchar(100) NOT NULL,
    `Dish_name` varchar(100) NOT NULL,
    `Veg/Nonveg` varchar(100) NOT NULL,
    `Cuisne_type` varchar(100) NOT NULL,
    `Dish_Price` varchar(100) NOT NULL,
    `Dish_Image` longblob NOT NULL,
    `Type_of_Meals` varchar(100) NOT NULL,
     PRIMARY KEY (`Dish_name`),
     KEY `S_NO` (`S_NO`)
  	 )";
   $sql_1="INSERT INTO `restaurant_banner`(`Hotel_ID`, `Total_banners`, `Banner_image_1`, `Image_name[1]`, `Banner_image_2`, `Image_name[2]`, `Banner_image_3`, `Image_name[3]`, `Banner_image_4`, `Image_name[4]`, `Banner_image_5`, `Image_name[5]`) VALUES 
                                    ('$_POST[Hotel_ID]','','','','','','','','','','','')";
	mysqli_query($conn,$sql_1);
	if ($conn->query($sql) === TRUE) 
	{
		echo'
		<script>
	
		  if (confirm("Restaurant Registered successfully")) 
		  {
			  history.go(1);
	   
		  } 
		  else 
		  {
		     history.go(-2);
		  }
	
		</script>';
	}
	
} 
else 
{
	echo'
	<script>
	
	  if (confirm("Hotel_ID Already Exits.")) 
	  {
		  history.go(-1);
	   
	  } 
	  else 
	  {
	    history.go(-1);
	  }
	
	</script>';
}

$conn->close();
?>