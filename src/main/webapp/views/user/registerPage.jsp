<!DOCTYPE html>
<html>
<head>
    <title>Resigter Page</title>
    <%--    <link rel="stylesheet" type="text/css" href="fontawesome/css/all.min.css">--%>
    <link rel="icon" href="./Image/cr7.jpg">
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
            margin: 7% auto;
            border-radius: 25px;
            background-color: rgba(0, 0, 0, 0.1);
            box-shadow: 0 0 17px #333;
        }

        .main {
            text-align: center;
            margin-bottom: 100px;
        }

        .main h1 {
            margin-top: -55px;
            padding-top: 20px;
            margin-bottom: 30px;
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
            margin-bottom: 20px;
            border-radius: 10px;
        }

        .main button {
            padding-left: 0;
            background-color: #83acf1;
            letter-spacing: 1px;
            font-weight: bold;
            margin-bottom: 10px;
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
    <div class="main">
        <form action="register" method="POST">
            <h1>RESIGTER</h1>
            <div style="display: flex">
                <span>
                    <i class="bi bi-person-circle" style="margin-left:35px; margin-top: 10px;"></i>
                    <input style="width: 75%;margin-left: 33px;" type="text" placeholder="First Name" name="fName"
                           required autocomplete="off">
                </span>
                <span>
                    <i class="bi bi-person-circle" style="margin-top: 9px; margin-left: 5px;"></i>
                    <input style="width: 75%; margin-right: 30px;" type="text" placeholder="Last Name" name="lName"
                           required autocomplete="off">
                </span><br>
            </div>
            <span>
                <i class="bi bi-person-circle"></i>
                <input type="text" placeholder="Username" name="username" required autocomplete="off">
            </span><br>
            <span>
                <i class="bi bi-person-circle"></i>
                <input type="password" placeholder="Password" name="password" required autocomplete="off">
            </span><br>
            <span>
                <i class="bi bi-person-circle"></i>
                <input type="email" placeholder="Email" name="email" required autocomplete="off">
            </span><br>
            <span>
                <i class="bi bi-person-circle"></i>
                <input type="tel" placeholder="Phone number" name="phoneNumber" required autocomplete="off">
            </span><br>
            <span>
                <i class="bi bi-person-circle"></i>
                <input type="text" placeholder="Address" name="address" required autocomplete="off">
            </span><br>
            <span>
                <button type="submit">REGISTER</button>
                <i class="bi bi-pencil-fill"></i>
            </span>
        </form>

        <a href="${pageContext.request.contextPath}/login"><p
                style="color: white; padding-bottom: 12px; text-decoration: none;"> Already have an
            account ? Login here </p></a>

    </div>
</body>
</html>