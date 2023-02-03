<?php
error_reporting(0);
$conn = mysqli_connect("localhost","root","","salesa");


			$conn = $conn = mysqli_connect("localhost","root","","salesa");
			if(isset($_POST['submit'])){              
                $itemname = $_POST['item_name'];
                $price = $_POST['price'];     
                $quan = $_POST['quantity'];       
                $discount = $_POST['discount'];
                $discounted = $_POST['discounted'];
                $cash = $_POST['cash'];  
                $cha = $_POST['change'];
                
               
                $sql = "INSERT INTO `salesa`(`itemname`, `price`, `quantity`, `discount`, `discounted`, `cash`, `change`) 
                VALUES ('$itemname','$price','$quan','$discount','$discounted','$cash','$cha')";
                $insert = mysqli_query($conn,$sql);
            
                if($insert){
                    echo"Data Save!";
            
                } else{
                    
                   echo "Failed!";
                }
            }
		
			
?>

