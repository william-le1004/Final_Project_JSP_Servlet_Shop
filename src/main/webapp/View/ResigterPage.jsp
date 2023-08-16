<!DOCTYPE html>
<html>
<head>
	<title>Login Page</title>
	<link rel="stylesheet" type="text/css" href="fontawesome/css/all.min.css">
	
        <style>
            body {
	font-family: sans-serif;	
	background-image: url(../Image/backgound_login.jpg);
	background-repeat: no-repeat;
	overflow: hidden;
	background-size: cover;
}

.container {
	width: 380px;
	margin:7% auto;
	border-radius: 25px;
	background-color: rgba(0,0,0,0.1);
	box-shadow: 0 0 17px #333;
}

.header {
	text-align: center;
	padding-top: 75px;
}

.header h1 {
	color: white;
	font-size: 45px;
	margin-bottom: 80px;
}

.main {
	text-align: center;
        margin-bottom: 100px;
}

.main input, button {
	width: 300px;
	height: 40px;
	border:none;
	outline: none;
	padding-left: 40px;
	box-sizing: border-box;
	font-size: 15px;
	color: #333;
	margin-bottom: 40px;
        border-radius: 10px;
}

.main button {
	padding-left: 0;
	background-color: #83acf1;
	letter-spacing: 1px;
	font-weight: bold;
	margin-bottom: 70px;
}

.main button:hover {
	box-shadow: 2px 2px 5px #555;
	background-color: #7799d4;
        cursor:pointer; 
}
.main input:hover {
	box-shadow: 2px 2px 5px #555;
	background-color: #ddd;        
}

.main span {
	position: relative;
}

.main i {
	position: absolute;
	left: 15px;
	color: #333;
	font-size: 16px;
	top: 2px;
}
        </style>
</head>
<body>
 <div class="container">
 	<div class="header">
 		<h1>RESIGTER FORM</h1>
 	</div>
 	<div class="main">
 		<form>
 			<span>
 				<i class="fa fa-user"></i>
 				<input type="text" placeholder="Username" name="">
 			</span><br>
 			<span>
 				<i class="fa fa-lock"></i>
 				<input type="password" placeholder="Password" name="">
 			</span><br>
 				<button>LOGIN</button>
                                
                                <a href="LoginPage.html"><p style="color: white; margin-bottom: 20px; text-decoration: none;">Already have account ? Login here</p> </a>
 		</form>
 	</div>
 </div>
</body>
</html>