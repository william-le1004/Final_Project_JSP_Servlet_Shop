<%-- 
    Document   : SingleProdutPage
    Created on : Aug 14, 2023, 10:55:05 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style>
        .rectangle {
            height: 100px;
            width: 1440px;
            background-image: url(${pageContext.request.contextPath}/Image/backgound_login.jpg);
            background-size: cover;
        }

        .info_image img {
            width: 260px;
            height: 250px;
            border-radius: 10px;
            margin-top: 35px;
            margin-left: 206px;
        }


        .info_group {
            height: 63px;
            left: 0;
            top: 0;
            width: 125px;
        }

        .info_overlap-group-wrapper {
            height: 30px;
            left: 1px;
            position: absolute;
            top: 33px;
            width: 32px;
        }

        .info_overlap-group {
            background-color: #b88e2f;
            border-radius: 5px;
            height: 30px;

            width: 30px;
        }


        .info_div {
            color: #ffffff;
            font-family: "Poppins-Regular", Helvetica;
            font-size: 13px;
            font-weight: 400;
            left: 12px;
            letter-spacing: 0;
            line-height: normal;
            position: absolute;
            top: 5px;
        }

        .info_overlap-wrapper {
            height: 30px;
            left: 47px;
            position: absolute;
            top: 33px;
            width: 32px;
        }

        .info_overlap {
            background-color: #f9f1e7;
            border-radius: 5px;
            height: 30px;
            position: relative;
            width: 30px;
        }

        .info_text-wrapper-2 {
            color: #000000;
            font-family: "Poppins-Regular", Helvetica;
            font-size: 13px;
            font-weight: 400;
            left: 8px;
            letter-spacing: 0;
            line-height: normal;
            position: absolute;
            top: 5px;
        }

        .info_div-wrapper {
            height: 30px;
            left: 93px;
            position: absolute;
            top: 33px;
            width: 32px;
        }

        .info_text-wrapper-3 {
            color: #000000;
            font-family: "Poppins-Regular", Helvetica;
            font-size: 13px;
            font-weight: 400;
            left: 7px;
            letter-spacing: 0;
            line-height: normal;
            position: absolute;
            top: 5px;
        }

    </style>


    <title>Product Details</title>
</head>
<body>
<%@include file="../layout/header.jsp" %>
<!------------------------->

<div class="single_product" style="margin-bottom: 100px;">

    <div class="rectangle">

        <div class="rectangle_text" style="margin-left: 110px;top: 37px;">
            
            <span> <a href="../user/homePage.jsp" style="color: #9F9F9F; font-size: 16px;
                font-style: normal;
                font-weight: 400;
                line-height: normal;"> Home </a></span>
            <span> > </span>
            <span> <a href="shopPage.jsp" style="color: #9F9F9F; font-size: 16px;
                font-style: normal;
                font-weight: 400;
                line-height: normal;"> Shop </a></span>
            <span> | </span>
            <span> ${product.productName} </span>

        </div>

    </div>

    <!---------------------------------------------->

    <div class="product_info" style="margin-bottom: 1000px;">

        <div class="info_image" style="display: flex;">
            <img src="./images/${product.productImg}">

            <div class="info_texx">
                <h1 style="margin-top: 30px"> ${product.productName} </h1>
            </div>

            <h3 class="info_price" style="margin-top: -180px; margin-left: 470px;"> $${product.productPrice} </h3>

            <div class="info_group" style="margin-top: 30px; margin-left: 470px;">
                <div class="info_text-wrapper">Size</div>
                <div class="info_overlap-group-wrapper" style="margin-top: 390px; margin-left: 470px;">
                    <div class="info_overlap-group">
                        <div class="info_div">L</div>
                    </div>
                </div>
                <div class="info_overlap-wrapper" style="margin-top: 390px; margin-left: 470px;">
                    <div class="info_overlap">
                        <div class="info_text-wrapper-2">XL</div>
                    </div>
                </div>
                <div class="info_div-wrapper" style="margin-top: 390px; margin-left: 470px;">
                    <div class="info_overlap">
                        <div class="info_text-wrapper-3">XS</div>
                    </div>
                </div>
            </div>
        </div>
        <!------------------------------------------------------>
        <div class="quantity" style="display: flex; margin-top: -940px; margin-left: 470px;">
            <button style="cursor: pointer; border-radius: 10px;">-</button>
            <div style="margin-left: 20px;">1</div>
            <button style="cursor: pointer; margin-left: 20px; border-radius: 10px;">+</button>
        </div>
        <div class="add_to_cart" style="margin-top:-28px; margin-left: 600px;">
            <button style="border-radius: 10px; cursor: pointer;">Add to cart</button>
        </div>
    </div>


    <!------------------------->
    <%@include file="../layout/footer.jsp" %>
</body>
</html>
