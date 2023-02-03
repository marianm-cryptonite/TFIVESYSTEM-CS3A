<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Team Five Menu</title>
    <link rel="stylesheet" href="assets1/css/pos1.css">
</head>
<body>
<?php
    $quantity = '';
    $item_name = '';
    $price = '';
    $discount_amount = '';
    $discounted_amout = '';
    $total_quantity = '';
    $total_discount_amount = '';
    $total_discounted_amount = '';
    $cash= '';
    $change = '';

if($_SERVER['REQUEST_METHOD'] == 'POST'){
    $quantity = (int)$_POST['quantity'];
    $price = (int)$_POST['price'];
    $cash = (int)$_POST['cash'];
    $item_name = $_POST['item_name'];
    $change = $_POST['change'];
    $newchange = "";
    $total_quantity = $quantity;
    $total_discount_amount = ((int)$quantity*(int)$price)* .25;
    $total_discounted_amount = ((int)$quantity*(int)$price)- (int)$total_discount_amount;
    $change = ((int)$cash - (int)$total_discounted_amount);
    
}
    ?>
    <div class="main">
        <div class="section-title">
        <h2> Team Five Menu</h2>  
        </div>
        <div class="menus">
            <div class="menu-column">
            <h4> Frappuccino Blended Beverages </h4>
            <div class="single-menu">
                <img src="assets1/img/1.jpg" alt="">
                <div class="menu-content">
                    <h5>Pistachio Frappuccino<span> 159</span></h5>
                    <p>420 calories</p>
                </div>
            </div>
            <div class="single-menu">
                <img src="assets1/img/2.jpg" alt="">
                <div class="menu-content">
                    <h5> Peppermint Mocha Frappuccino  <span> 189</span></h5>
                    <p>430 calories</p>
                </div>
            </div>
            <div class="single-menu">
                <img src="assets1/img/3.jpg" alt="">
                <div class="menu-content">
                    <h5>Caramel Brulée Frappuccino <span> 199 </span></h5>
                    <p>400 calories</p>
                </div>
            </div>
            <div class="single-menu">
                <img src="assets1/img/4.jpg" alt="">
                <div class="menu-content">
                    <h5>Mocha Cookie Crumble Frappuccino<span>205</span></h5>
                    <p>480 calories</p>
                </div>
            </div>
        </div>
        <div class="menu-column">
            <h4> Cold Brews </h4>
            <div class="single-menu">
                <img src="assets1/img/5.jpg" alt="">
                <div class="menu-content">
                    <h5>Vanilla Sweet Cream Cold Brew<span>130</span></h5>
                    <p>110 calories</p>
                </div>
            </div>
            <div class="single-menu">
                <img src="assets1/img/6.jpg" alt="">
                <div class="menu-content">
                    <h5>Salted Caramel Cream Cold Brew<span>189</span></h5>
                    <p>240 calories</p>
                </div>
            </div>
            <div class="single-menu">
                <img src="assets1/img/7.jpg" alt="">
                <div class="menu-content">
                    <h5>Irish Cream Cold Brew <span>109 </span></h5>
                    <p>200 calories</p>
                </div>
            </div>
            <div class="single-menu">
                <img src="assets1/img/8.jpg" alt="">
                <div class="menu-content">
                    <h5>Chocolate Cream Cold Brew<span>189</span></h5>
                    <p>250 calories</p>
                </div>
            </div>
        </div>
        <div class="menu-column">
            <h4> Hot Coffees </h4>
            <div class="single-menu">
                <img src="assets1/img/9.jpg" alt="">
                <div class="menu-content">
                    <h5>Honey Almondmilk Flat White<span>109</span></h5>
                    <p>15 calories</p>
                </div>
            </div>
            <div class="single-menu">
                <img src="assets1/img/10.jpg" alt="">
                <div class="menu-content">
                    <h5>Caffè Americano<span>109</span></h5>
                    <p>15 calories</p>
                </div>
            </div>
            <div class="single-menu">
                <img src="assets1/img/11.jpg" alt="">
                <div class="menu-content">
                    <h5>Veranda Blend<span>109</span></h5>
                    <p>5 calories</p>
                </div>
            </div>
            <div class="single-menu">
                <img src="assets1/img/11.jpg" alt="">
                <div class="menu-content">
                    <h5>Caffè Misto<span>139</span></h5>
                    <p>5 calories</p>
                </div>
            </div>
        </div>
    </div>
        <form action="" method = "POST">
            <label><b>Order Details: </b></label><br>
            <label class="word">Name of an Item: </label>
            <input type="text" name = "item_name" value = "<?php echo $item_name?>" required><br>
            <label class="word">Quantity: </label>
            <input type="number" name = "quantity" value = "<?php echo $quantity?>" required><br>
            <label class="word">Price: </label>
            <input type="number" name = "price" value = "<?php echo $price?>"required><br>
            <label class="word">Discount Amount: </label>
            <input type="number" name = "dis" value = "<?php echo $total_discount_amount?>" readonly><br>
            <label class="word">Discounted Amount:</label>
            <input type="number" name = "counted" value = "<?php echo $total_discounted_amount?>"readonly><br>
            <label class="word">Total Quantity: </label>
            <input type="number" name = "" value = "<?php echo $quantity?>"readonly><br>
            <label class="word">Total Discounted Given: </label>
            <input type="number" name = "" value = "<?php echo ($total_discount_amount)?>"readonly><br>
            <label class="word">Total Discounted: </label>
            <input type="number" name = "" value = "<?php echo ($total_discounted_amount)?>" readonly><br>
            <label><b>Amount: </b></label><br>
            <label class="word">Cash Given </label>
            <input type="number" name = "cash" value = "<?php echo $cash?>"required><br>
            <label class="word">Change: </label>
            <input type="number" name = "change"   value = "<?php echo ($change)?>"readonly><br>
            <div class="button">
                    <input type="submit" name = "submit" value="CALCULATE:">
                  </div>
                  <div class="button">
                    <input type="submit" value="CHANGE:">
                  </div>
                  <div class="button">
                    <input type="submit" value="NEW:">
                  </div>
                  <div>
                  <button class = "homebtn" onclick="myfunction()">EXIT</button>
                    <script>
                    function myfunction() {
                    location.href = "loginform.php";
            }
            </script>
            
                  </div>
        </form>
        <?php


$conn = mysqli_connect("localhost","root","","online");
$newchange = "";

if(isset($_POST['submit'])){
    
    $item_name = $_POST['item_name'];
    $price = $_POST['price'];
    $quantity = (int)$_POST['quantity'];
    $dis = (int)$_POST['dis'];
    $counted = (int)$_POST['counted'];
    $cash = $_POST['cash'];
    $cha = $_POST["change"];
    $change = ((int)$cash - (int)$total_discounted_amount);
    $total_discount_amount = ((int)$quantity*(int)$price)* .25;
    $total_discounted_amount = ((int)$quantity*(int)$price)- (int)$total_discount_amount;
    @$newchange = (int)$row["change"];
 
    
    $sql = "INSERT INTO `pos2`(`item_name`, `price`, `quantity`, `discount`, `discounted`, `cash`, `cha`) VALUES 
    ('$item_name','$price','$quantity','$total_discount_amount','$total_discount_amount','$cash','$change')";
    $insert = mysqli_query($conn,$sql);

    if($insert){
        

    } else{
        
       echo "Failed!";
    }
}

?>
        <div class="mydiv">
        <br> 
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        
        <form action="" name="clc">
              
                <!--<input type="text" name="display" style="width: 290px; height: 70px; background-color: #4c555c;color: white;"><br>-->
                <input class="btn" type="button" value="0" onclick="clc.display.value += '0'">
                <input class="btn" type="button" value="1" onclick="clc.display.value += '1'">
                <input class="btn" type="button" value="2" onclick="clc.display.value += '2'">
                <input class="btn" type="button" value="+" onclick="clc.display.value += '+'" style=" background-color: #cc5c11;"><br>
                <input class="btn" type="button" value="3" onclick="clc.display.value += '3'">
                <input class="btn" type="button" value="4" onclick="clc.display.value += '4'">
                <input class="btn" type="button" value="5" onclick="clc.display.value += '5'">
                <input class="btn" type="button" value="-" onclick="clc.display.value += '-'" style="background-color: #ba55d3;"><br>
                <input class="btn" type="button" value="6" onclick="clc.display.value += '6'">
                <input class="btn" type="button" value="7" onclick="clc.display.value += '7'">
                <input class="btn" type="button" value="8" onclick="clc.display.value += '8'">
                <input class="btn" type="button" value="*" onclick="clc.display.value += '*'" style="background-color: #7db1b2;"><br>
                <input class="btn" type="button" value="9" onclick="clc.display.value += '9'">
                <input class="btn" type="button" value="C" onclick="clc.display.value =''" style="background-color:#cc0000;">
                <input class="btn" type="button" value="." onclick="clc.display.value = '.'">
                <input class="btn" type="button" value="&#247;" onclick="clc.display.value += '/'" style="background-color: #1f80c9;">\
                <input class="btn" type="button" value="ENTER" onclick="clc.display.value =eval(clc.display.value)" style="background-color: #4c555c; width: 270px; height: 70px;"> <br>
            </form>
            </div>
            
</div> 

</body>
</html>