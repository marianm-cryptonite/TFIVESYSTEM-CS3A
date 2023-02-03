<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
 * {
    margin: 0;
    font-family: 'Poppins', sans-serif;
 }
body{
    background: linear-gradient(rgba(0, 0, 0, 0.4), #b3e0ff), url('02.jpeg');
    height: 100vh;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size:cover;
    background-position: center center;
    position: relative;
    background-size: cover;
}
.sidebar {
  margin: 0;
  padding: 10px;
  width: 200px;
  background: linear-gradient(rgba(0, 0, 0, 0.4), #808080);
  position: fixed;
  height: 100%;
  overflow: auto;
}

.sidebar a {
  display: block;
  color: white;
  padding: 16px;
  text-decoration: none;
}
 
.sidebar a.active {
  background-color: #808080;
  color: white;
}

.sidebar a:hover:not(.active) {
  background-color: #555;
  color: white;
}

.three {
    text-align: center;
    color: #ffff;
    padding-top: 180px;
    }
.three h1 {
    color: #fff;
    font-size: 100px;
    font-family: 'Kaushan Script' italic;
}
.three h1 span{
    color: #80ccff;
    font-family: 'Kaushan Script' italic;
}

.p{
    text-align: center;

}
@media screen and (max-width: 700px) {
  .sidebar {
    width: 100%;
    height: auto;
    position: relative;
  }
  .sidebar a {float: left;}
  div.content {margin-left: 0;}
}

@media screen and (max-width: 400px) {
  .sidebar a {
    text-align: center;
    float: none;
  }
}
.background-image {
    background-image: url('bg.jpeg');
    background-size: contain;
    width: 200px;
    height: 200px;
}
p.hi{
    text-align: center;

}
</style>
</head>
<body>

<div class="sidebar">
  <a class=" " href="#home">Home</a>
  <a href="register.php">Register</a>
  <a href="payroll.php">Payroll</a>
  <a href="payrolllist.php">Payroll Report</a>
  <a href="order.php">POINT OF SALE A </a>
  <a href="salesA.php">POINT OF SALE A REPORT</a>
  <a href="pos1.php">POINT OF SALE B</a>
  <a href="salesB.php">POINT OF SALE B REPORT</a>
  <a href="displaylog.php">USER ACCOUNT</a>
  <a href="loginform.php">LOG OUT</a>

</div>
<div class= "three">

        <h1>Team Five POS <span>System</span></h1>
<div class="content">
  <p class = "hi">Hello! There this is Sample Website that make by group 5.</p>
</div>
<div class = "background-image">

</div>
</body>
</html>

