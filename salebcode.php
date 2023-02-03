<?php


$conn = mysqli_connect("localhost","root","","online");
$newchange = "";

if(isset($_POST['submit'])){
    
    $item_name = $_POST['item_name'];
    $price = $_POST['price'];
    $quantity = $_POST['quantity'];
    $dis = $_POST['dis'];
    $counted = $_POST['counted'];
    $cash = $_POST['cash'];
    $cha = $_POST["change"];
    $_SESSION['$cha'] = $cha;
    @$newchange = (int)$row["change"];
 
    
    $sql = "INSERT INTO `online`(`item_name`, `price`, `quantity`, `discount`, `discounted`, `cash`, `cha`) VALUES 
    ('$item_name','$price','$quantity','$dis','$counted','$cash','$cha')";
    $insert = mysqli_query($conn,$sql);

    if($insert){
        echo "Data Saved!";

    } else{
        
       echo "Failed!";
    }
}

?>