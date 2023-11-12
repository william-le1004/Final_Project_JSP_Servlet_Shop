<%-- 
    Document   : AdminPage
    Created on : Aug 15, 2023, 1:40:33 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Wishlist Page</title>
    <style>
        .content {
            height: 316px;
            width: 1440px;
            background-image: url(${pageContext.request.contextPath}/Image/backgound_login.jpg);
            background-size: cover;

        }

        .text {
            color: black;
            position: absolute;
            top: 10px;
            left: 70px;

        }

        .text h1 {
            margin-top: 160px;
            margin-left: 550px;
            font-weight: bold;
        }

        .text h5 {
            margin-left: 570px;
        }

    </style>
</head>
<body>
<%@include file="../layout/header.jsp" %>
<!-------------------------------------------->
<div class="content">
    <div class="text">
        <h1>WISHLIST</h1>
        <h5>
            <a href="HomePage.jsp" style="color: black; text-decoration: none;"> Home </a> > <a href="WishListPage.jsp"
                                                                                                style="color: black; text-decoration: none;">
            Wishlist </a></h5>
    </div>
</div>
<h1>PRODUT MANAGEMENT</h1>

<h3>Inser bảng của mấy sản phẩm đã thả tim ở đây</h3>


<!-- Nếu bấm add to cart thì bỏ sản phẩm đấy vào giỏ hàng luôn -->
<button>Add to cart</button>
<a href="../user/homePage.jsp">
    <button>Return</button>
</a>
<a href="checkoutPage.jsp">
    <button>Check out</button>
</a>


<!-------------------------------------------->

<%@include file="../layout/footer.jsp" %>
</body>
</html>
