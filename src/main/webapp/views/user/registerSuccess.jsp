<head>
    <title>Login Page</title>
    <link rel="stylesheet" type="text/css" href="fontawesome/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <style>
        body {
            font-family: sans-serif;
            background-image: url(${pageContext.request.contextPath}/Image/backgound_login.jpg);
            background-repeat: no-repeat;
            overflow: hidden;
            background-size: cover;
        }

        .container {
            width: 380px;
            /*margin: 7% auto;*/
            margin: 50px auto auto;
            border-radius: 25px;
            background-color: rgba(0, 0, 0, 0.1);
            box-shadow: 0 0 17px #333;
        }

        .header {
            text-align: center;
            padding-top: 45px;
        }

        .header h1 {
            color: white;
            font-size: 40px;
            margin-bottom: 80px;
        }

        .main {
            text-align: center;
            margin-bottom: 100px;
        }

        .main input, button {
            width: 300px;
            height: 40px;
            border: none;
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
            margin-bottom: 50px;
        }

        .main button:hover {
            box-shadow: 2px 2px 5px #555;
            background-color: #7799d4;
            cursor: pointer;
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
    <p style="color: red">${message}</p>
    <div class="main">

 			<span>
 				<i class="bi bi-person-circle"></i>
 				<label>Your Username :
                </label>
                    <input> ${username}
 			</span><br>
            <span>
 				<i class="bi bi-key"></i>
                <label>Your Password :
                </label>
 				<input> ${password}
 			</span><br>
        <%--            <div>--%>
            <span>
                <button type="submit">LOGIN</button>
                <i class="bi bi-pencil"></i>
            </span><br>
        <%--            </div>--%>
        <a href="${pageContext.request.contextPath}/login"><p
                style="color: white;margin-top: -20px;padding-bottom: 20px;text-decoration: none;"> Return Login Page </p></a>
    </div>
</div>
</body>
