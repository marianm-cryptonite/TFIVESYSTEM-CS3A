<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Employee List View</title>

	<style>
		@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
		*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins',sans-serif;
}
body{
  height: auto;
  width: auto;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 20px;
  background: linear-gradient(100deg, #ffffff,#0088cc)
}
.container {
  overflow: hidden;
  background-color: #e9e9e9;
  
}

.container input[type=text] {
  float: right;
  padding: 6px;
  border: none;
  margin-top: 8px;
  margin-right: 16px;
  font-size: 17px;
}

@media screen and (max-width: 600px) {
  .container input[type=text] {
    float: none;
    display: block;
    text-align: left;
    width: 100%;
    margin: 0;
    padding: 14px;
  }
  .container input[type=text] {
    border: 1px solid #ccc;
  }
}
.container{
  max-width: auto;
  width: auto;
  background-color:#ffff;
  padding: 30px;
  border-radius: 5px;
  box-shadow: 0 5px 10px rgba(0,0,0,0.15);
}

table tr:hover{
			cursor:pointer;
		
}
table thead{
			background:#ffff;
			letter-spacing: 1px;
}
table thead tr th{
			color:#004080 ;
		}
</style>


</head>

<body>
<div class="container">
<h2 style="color:#004080;">Employee Payroll List View <input type="text" placeholder="Search.."></h2>
	<table class="table table-bordered table-hover">
		<thead>
			<tr>
				<t>
                <th> Employee Number</th> 
				<th> Employee Name</th>
				<th> Civil Status</th>
				<th> Department</th>
				<th> Designation</th>
				<th> Employee Status  </th>
				<th> Qualified Dependents Status</th>
				<th> Pay Date</th>
				</t>
			</tr>
			<?php
			
			$conn = $conn = mysqli_connect("localhost","root","","online");
			$sql =  "SELECT employee_number, fname, mname, surname, department, civil_status,quali,paydate, employee_status
			, designation FROM payroll ";
			$result = $conn->query($sql);
			if ($result->num_rows > 0){
				while ($rows = $result-> fetch_assoc()){
					echo '<tr>
                            <td>'.$rows['employee_number'].'</td>
							<td>'.$rows['fname']." ".$rows['mname']." ". $rows['surname'].'</td>
							<td>'.$rows['civil_status'].'</td>
							<td>'.$rows['department'].'</td>
							<td>'.$rows['designation'].'</td>
							<td>'.$rows['quali'].'</td>
							<td>'.$rows['paydate'].'</td>
							<td>'.$rows['employee_status'].'</td>
					
					
					</tr>'
					
					;}
			}
			else{
				echo "No Result";
			}
		
		?>	
		<div>
                  <button class = "homebtn"
                    onclick="myfunction()">GO BACK TO HOME PAGE</button>
					<script>
					function myfunction() {
                    location.href = "nav.php";
            }
					</script>
                  </div>
		</thead>
		<tbody>
		
			</tbody>
		</table>
	</div>
</body>
</html>