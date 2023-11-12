<%--&lt;%&ndash; --%>
<%--    Document   : CartPage--%>
<%--    Created on : Aug 15, 2023, 1:08:03 AM--%>
<%--    Author     : Administrator--%>
<%--&ndash;%&gt;--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <link rel="icon" href="./Image/cr7.jpg">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

    <style>
        .content {
            height: 316px;
            width: 100%;
            background-image: url(${pageContext.request.contextPath}/Image/product_layout.webp);
            background-size: cover;

        }

        .text {
            color: black;
            position: absolute;
            top: 10px;
            left: 70px;

        }

        .text h1 {
            margin-top: 200px;
            margin-left: 600px;
            font-weight: bold;
        }

        .text h5 {
            margin-left: 605px;
        }

        .quality_box {
            display: flex;
            justify-content: space-between;
            background-color: #FAF3EA;
        }


        .shopping-cart {
            width: 750px;
            height: 650px;
            margin: 80px auto;
            background: #FFFFFF;
            box-shadow: 1px 2px 3px 0px rgba(0, 0, 0, 0.10);
            border-radius: 6px;

            display: flex;
            flex-direction: column;
        }

        .title {
            height: 60px;
            border-bottom: 1px solid #E1E8EE;
            padding: 20px 30px;
            color: #5E6977;
            font-size: 18px;
            font-weight: 400;
        }

        .item {
            padding: 20px 30px;
            height: 120px;
            display: flex;
        }

        .item:nth-child(3) {
            border-top: 1px solid #E1E8EE;
            border-bottom: 1px solid #E1E8EE;
        }

        .buttons {
            position: relative;
            padding-top: 30px;
            margin-right: 60px;
        }

        .delete-btn,
        .like-btn {
            display: inline-block;
            Cursor: pointer;
        }

        .delete-btn {
            width: 18px;
            height: 17px;
            background: url(&amp;quot;delete-icn.svg&amp;quot;) no-repeat center;
        }

        .like-btn {
            position: absolute;
            top: 9px;
            left: 15px;
            background: url('twitter-heart.png');
            width: 60px;
            height: 60px;
            background-size: 2900%;
            background-repeat: no-repeat;
        }

        .is-active {
            animation-name: animate;
            animation-duration: .8s;
            animation-iteration-count: 1;
            animation-timing-function: steps(28);
            animation-fill-mode: forwards;
        }

        @keyframes animate {
            0% {
                background-position: left;
            }
            50% {
                background-position: right;
            }
            100% {
                background-position: right;
            }
        }

        .image {
            margin-right: 50px;
        }


        .description {
            padding-top: 10px;
            margin-right: 60px;
            width: 115px;
        }

        .description span {
            display: block;
            font-size: 14px;
            color: #43484D;
            font-weight: 400;
        }

        .description span:first-child {
            margin-bottom: 5px;
        }

        .description span:last-child {
            font-weight: 300;
            margin-top: 8px;
            color: #86939E;
        }

        .quantity {
            padding-top: 20px;
            margin-right: 60px;
        }

        .quantity input {
            -webkit-appearance: none;
            border: none;
            text-align: center;
            width: 32px;
            font-size: 16px;
            color: #43484D;
            font-weight: 300;
        }

        button[class*=btn] {
            width: 30px;
            height: 30px;
            background-color: #E1E8EE;
            border-radius: 6px;
            border: none;
            cursor: pointer;
        }

        .minus-btn img {
            margin-bottom: 3px;
        }

        .plus-btn img {
            margin-top: 2px;
        }

        button:focus,
        input:focus {
            outline: 0;
        }

        .total-price {
            width: 83px;
            padding-top: 27px;
            text-align: center;
            font-size: 16px;
            color: #43484D;
            font-weight: 300;
        }

        @media (max-width: 800px) {
            .shopping-cart {
                width: 100%;
                height: auto;
                overflow: hidden;
            }

            .item {
                height: auto;
                flex-wrap: wrap;
                justify-content: center;
            }

            .image img {
                width: 50%;
            }

            .image,
            .quantity,
            .description {
                width: 100%;
                text-align: center;
                margin: 6px 0;
            }

            .buttons {
                margin-right: 20px;
            }
        }
    </style>
    <title>Cart Page</title>
</head>
<body>
<%@include file="../layout/header.jsp" %>
<!--------------------------------------------------------------------------------->

<div class="content">
    <div class="text">
        <h1>CART</h1>
        <h5><a href="HomePage.jsp" style="color: black; text-decoration: none;"> Home </a> > <a href="CartPage.jsp"
                                                                                                style="color: black; text-decoration: none;">
            Cart </a></h5>
    </div>
</div>
<div class="shopping-cart" style="border: solid 1px #B88E2F;">
    <!-- Title -->
    <div class="title" style="font-weight: bold; font-size: 26px; color: #B88E2F;">
        Your shopping bag
    </div>

    <!-- Product #1 -->
    <c:set var="s" value="0"></c:set>
    <c:forEach items="${sessionScope.cart}" var="i">
        <c:set var="s" value="${s + i.product.productPrice * i.quantity}"></c:set>
        <div class="item">
            <div class="buttons">
                <div><a href="${pageContext.request.contextPath}/addCart?id=${i.product.productID}&action=delete">
                    <i class="bi bi-trash-fill"></i></a></div>
            </div>

            <div class="image">
                <img src="./images/${i.product.productImg}" alt="" style="width: 80px;"/>
            </div>

            <div class="description">
                <span>${i.product.productName}</span>
                <span>${i.product.category.categoryName}</span>
            </div>

            <div class="quantity">
                <button class="plus-btn" type="button" name="button">
                    <i class="bi bi-dash-lg"></i>
                </button>
                <input type="text" name="name" value="${i.quantity}">
                <button class="minus-btn" type="button" name="button">
                    <i class="bi bi-plus-lg"></i>
                </button>
            </div>

            <div class="total-price">$${i.product.productPrice * i.quantity} </div>
        </div>
    </c:forEach>


    <div class="access" style="margin-left: 151px; margin-bottom: 30px;">
        <div style="font-weight: bold; font-size: 24px; "><p>Total: <span style="color: red;">${s}</span></p></div>
        <a href="${pageContext.request.contextPath}/checkout">
            <button style="width: 200px; height: 50px; background-color: #B88E2F; color: white; font-weight: bold; font-size: 20px; border-radius: 10px; margin-right: 30px; cursor: pointer">
                Check out
            </button>
        </a>
        <a href="${pageContext.request.contextPath}/home">
            <button style="width: 200px; height: 50px; background-color: #B88E2F; color: white; font-weight: bold; font-size: 20px; border-radius: 10px; cursor: pointer;">
                Return
            </button>
        </a>
    </div>


</div>


<!---------------------------------------------------->

<div class="quality_holder" style="background-color:#FAF3EA; height: 300px;">
    <div class="quality_box"
         style="background-color:#FAF3EA; vertical-align: central; align-items: center; margin-left: 98px; margin-right: 98px;">
        <div class="quality_1" style="margin-top: 110px;">
            <img src="./Image/trophy 1.svg">
            <span style="font-weight: bold; margin-top: -0px;">High quality</span></br>
            <span style="margin-left: 62px;">crafted from top materials</span>
        </div>

        <div class="quality_2" style="margin-top: 110px;">
            <img src="./Image/guarantee.svg">
            <span style="font-weight: bold;">Warranty Protection</span></br>
            <span style="margin-left: 62px;">over 2 years</span>
        </div>

        <div class="quality_3" style="margin-top: 110px;">
            <img src="./Image/shipping.svg">
            <span style="font-weight: bold;">Free Shipping</span></br>
            <span style="margin-left: 62px;">Order over 150 $</span>
        </div>

        <div class="quality_4" style="margin-top: 110px;">
            <img src="./Image/customer-support.svg">
            <span style="font-weight: bold;">24 / 7 Support</span></br>
            <span style="margin-left: 62px;">Dedicated support</span>
        </div>
    </div>
</div>
<!---------------------------------------------------->

<!--------------------------------------------------------------------------------->
<%@include file="../layout/footer.jsp" %>
</body>
</html>
