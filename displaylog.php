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
    font-family: 'Poppins', sans-serif;
}
body{
    min-height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    background: linear-gradient(135deg, #ffffff,#0088cc)
}
.container{
	max-width: auto;
  width: auto;
  background-color:#ffff;
  padding: 25px 30px;
  border-radius: 40px;
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
@media (max-width: 750px) {
    .container form{
        overflow-y: scroll;
    }
    .container form::-webkit-scrollbar{
       display: none;
    }
    form .fields .input-field{
        width: calc(100% / 2 - 15px);
    }
}
@media (max-width: 550px) {
    form .fields .input-field{
        width: 100%;
    }
}
   </style>
</head>

<body>
<div class="container">
	<h2 style="color:#004080;">USER ACCOUNT</h2>
	<table class="table table-bordered table-hover">
		<thead>
			<tr>
				<t>
                <th> USER ID</th> 
				<th> USERNAME</th>
				<th> USERPASSWORD</th>
				<th> USERTYPE</th>
				
				</t>
			</tr>
			<?php
			
			$conn = $conn = mysqli_connect("localhost","root","","online");
			$sql =  "SELECT * FROM login";
			$result = $conn->query($sql);

			if ($result->num_rows > 0){
				while ($rows = $result-> fetch_assoc()){
					echo '<tr>
                            <td>'.$rows['user_ID'].'</td>
							<td>'.$rows['username'].'</td>
							<td>'.$rows['user_password'].'</td>
							<td>'.$rows['user_type'].'</td>
							
					
					
					</tr>'
					
					;}
			}
			else{
				echo "No Result";
			}
		
			
			
		
			
		?>	
        <div>
                  <button class = "homebtn"
                    onclick="history.back()">GO BACK TO HOME PAGE</button>
                  </div>
		</thead>
		<tbody>
		
			</tbody>
		</table>
	</div>
</body>
</html>