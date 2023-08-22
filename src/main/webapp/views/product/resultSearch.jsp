<%--
    Document   : ShopPage
    Created on : Aug 14, 2023, 2:19:11 AM
    Author     : Administrator
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="icon" href="./Image/cr7.jpg">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .content {
            height: 316px;
            width: 100%;
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
            margin-top: 200px;
            margin-left: 606px;
            font-weight: bold;
        }

        .text h5 {
            margin-left: 608px;
        }


        .quality_box {
            display: flex;
            justify-content: space-between;
            background-color: #FAF3EA;
        }

        .frame {
            align-items: flex-start;
            border: 1px none;
            display: inline-flex;
            gap: 38px;
            overflow-x: hidden;
            padding: 30px 0px 0px;
            position: relative;
            margin-left: 500px;
            margin-bottom: 85px;
        }

        .frame .frame_group {
            height: 60px;
            position: relative;
            width: 62px;
        }

        .frame .overlap-group {
            background-color: #b88e2f;
            border-radius: 10px;
            height: 60px;
            position: relative;
            width: 60px;
        }

        .frame .text-wrapper {
            color: #ffffff;
            font-family: "Poppins-Regular", Helvetica;
            font-size: 20px;
            font-weight: 400;
            left: 27px;
            letter-spacing: 0;
            line-height: normal;
            position: absolute;
            top: 15px;
        }

        .frame .overlap {
            background-color: #f9f1e7;
            border-radius: 10px;
            height: 60px;
            position: relative;
            width: 60px;
        }

        .frame .div {
            color: #000000;
            font-family: "Poppins-Regular", Helvetica;
            font-size: 20px;
            font-weight: 400;
            left: 24px;
            letter-spacing: 0;
            line-height: normal;
            position: absolute;
            top: 15px;
        }

        .frame .overlap-wrapper {
            height: 60px;
            margin-right: -2px;
            position: relative;
            width: 100px;
        }

        .frame .div-wrapper {
            background-color: #f9f1e7;
            border-radius: 10px;
            height: 60px;
            position: relative;
            width: 98px;
        }

        .frame .text-wrapper-2 {
            color: #000000;
            font-family: "Poppins-Light", Helvetica;
            font-size: 20px;
            font-weight: 300;
            left: 28px;
            letter-spacing: 0;
            line-height: normal;
            position: absolute;
            top: 15px;
        }


        .quality_box {
            display: flex;
            justify-content: space-between;
            background-color: #FAF3EA;
        }





        .dropbtn {
            background-color: #F9F1E7;
            color: white;
            padding: 16px;
            font-size: 16px;
            border: none;
            cursor: pointer;
        }

        .dropbtn:hover, .dropbtn:focus {
            background-color: #F9F1E7;
        }


        #myInput {
            box-sizing: border-box;
            background-image: url('searchicon.png');
            background-position: 14px 12px;
            background-repeat: no-repeat;
            font-size: 16px;
            padding: 14px 20px 12px 45px;
            border: none;
            border-bottom: 1px solid #ddd;
        }


        #myInput:focus {outline: 3px solid #ddd;}


        .dropdown {
            position: relative;
            display: inline-block;
        }


        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f6f6f6;
            min-width: 230px;
            border: 1px solid #ddd;
            z-index: 1;
        }


        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }


        .dropdown-content a:hover {background-color: #f1f1f1}
        .show {display:block;}




        .d-flex {
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
        }

        .align-center {
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
        }

        .flex-centerY-centerX {
            justify-content: center;
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            justify-content: center;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
        }



        .page-wrapper {
            height: 100%;
            display: table;
        }

        .page-wrapper .page-inner {
            display: table-cell;
            vertical-align: middle;
        }

        .el-wrapper {
            width: 360px;
            padding: 15px;
            margin: 15px auto;
            border: 1px solid #b88e2f;
            border-radius: 10px;
            background-color: white;
        }

        @media (max-width: 991px) {
            .el-wrapper {
                width: 345px;
            }
        }

        @media (max-width: 767px) {
            .el-wrapper {
                width: 290px;
                margin: 30px auto;
            }
        }

        .el-wrapper:hover .h-bg {
            left: 0px;
        }

        .el-wrapper:hover .price {
            left: 20px;
            -webkit-transform: translateY(-50%);
            -ms-transform: translateY(-50%);
            -o-transform: translateY(-50%);
            transform: translateY(-50%);
            color: #818181;
        }

        .el-wrapper:hover .add-to-cart {
            left: 50%;
        }

        .el-wrapper:hover .img {
            webkit-filter: blur(7px);
            -o-filter: blur(7px);
            -ms-filter: blur(7px);
            filter: blur(7px);
            filter: progid:DXImageTransform.Microsoft.Blur(pixelradius='7', shadowopacity='0.0');
            opacity: 0.4;
        }

        .el-wrapper:hover .info-inner {
            bottom: 155px;
        }

        .el-wrapper:hover .a-size {
            -webkit-transition-delay: 300ms;
            -o-transition-delay: 300ms;
            transition-delay: 300ms;
            bottom: 50px;
            opacity: 1;
        }

        .el-wrapper .box-down {
            width: 100%;
            height: 60px;
            position: relative;
            overflow: hidden;
        }

        .el-wrapper .box-up {
            width: 100%;
            height: 300px;
            position: relative;
            overflow: hidden;
            text-align: center;
        }

        .el-wrapper .img {
            padding: 20px 0;
            -webkit-transition: all 800ms cubic-bezier(0, 0, 0.18, 1);
            -moz-transition: all 800ms cubic-bezier(0, 0, 0.18, 1);
            -o-transition: all 800ms cubic-bezier(0, 0, 0.18, 1);
            transition: all 800ms cubic-bezier(0, 0, 0.18, 1);
            /* ease-out */
            -webkit-transition-timing-function: cubic-bezier(0, 0, 0.18, 1);
            -moz-transition-timing-function: cubic-bezier(0, 0, 0.18, 1);
            -o-transition-timing-function: cubic-bezier(0, 0, 0.18, 1);
            transition-timing-function: cubic-bezier(0, 0, 0.18, 1);
            /* ease-out */
        }

        .h-bg {
            -webkit-transition: all 800ms cubic-bezier(0, 0, 0.18, 1);
            -moz-transition: all 800ms cubic-bezier(0, 0, 0.18, 1);
            -o-transition: all 800ms cubic-bezier(0, 0, 0.18, 1);
            transition: all 800ms cubic-bezier(0, 0, 0.18, 1);
            /* ease-out */
            -webkit-transition-timing-function: cubic-bezier(0, 0, 0.18, 1);
            -moz-transition-timing-function: cubic-bezier(0, 0, 0.18, 1);
            -o-transition-timing-function: cubic-bezier(0, 0, 0.18, 1);
            transition-timing-function: cubic-bezier(0, 0, 0.18, 1);
            /* ease-out */
            width: 660px;
            height: 100%;
            background-color: #B88E2F;
            position: absolute;
            left: -659px;
        }

        .h-bg .h-bg-inner {
            width: 50%;
            height: 100%;
            background-color: #464646;
        }

        .info-inner {
            -webkit-transition: all 400ms cubic-bezier(0, 0, 0.18, 1);
            -moz-transition: all 400ms cubic-bezier(0, 0, 0.18, 1);
            -o-transition: all 400ms cubic-bezier(0, 0, 0.18, 1);
            transition: all 400ms cubic-bezier(0, 0, 0.18, 1);
            /* ease-out */
            -webkit-transition-timing-function: cubic-bezier(0, 0, 0.18, 1);
            -moz-transition-timing-function: cubic-bezier(0, 0, 0.18, 1);
            -o-transition-timing-function: cubic-bezier(0, 0, 0.18, 1);
            transition-timing-function: cubic-bezier(0, 0, 0.18, 1);
            /* ease-out */
            position: absolute;
            width: 100%;
            bottom: 25px;
        }

        .info-inner .p-name,
        .info-inner .p-company {
            display: block;
        }

        .info-inner .p-name {
            font-family: 'PT Sans', sans-serif;
            font-size: 18px;
            color: #252525;


        }

        .info-inner .p-company {
            font-family: 'Lato', sans-serif;
            font-size: 12px;
            text-transform: uppercase;
            color: #8c8c8c;
        }


        .a-size {
            -webkit-transition: all 300ms cubic-bezier(0, 0, 0.18, 1);
            -moz-transition: all 300ms cubic-bezier(0, 0, 0.18, 1);
            -o-transition: all 300ms cubic-bezier(0, 0, 0.18, 1);
            transition: all 300ms cubic-bezier(0, 0, 0.18, 1);
            /* ease-out */
            -webkit-transition-timing-function: cubic-bezier(0, 0, 0.18, 1);
            -moz-transition-timing-function: cubic-bezier(0, 0, 0.18, 1);
            -o-transition-timing-function: cubic-bezier(0, 0, 0.18, 1);
            transition-timing-function: cubic-bezier(0, 0, 0.18, 1);
            /* ease-out */
            position: absolute;
            width: 100%;
            bottom: -20px;
            font-family: 'PT Sans', sans-serif;
            color: #828282;
            opacity: 0;
        }

        .a-size .size {
            color: #252525;
        }

        .cart {
            display: block;
            position: absolute;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            font-family: 'Lato', sans-serif;
            font-weight: 700;
        }

        .cart .price {
            -webkit-transition: all 600ms cubic-bezier(0, 0, 0.18, 1);
            -moz-transition: all 600ms cubic-bezier(0, 0, 0.18, 1);
            -o-transition: all 600ms cubic-bezier(0, 0, 0.18, 1);
            transition: all 600ms cubic-bezier(0, 0, 0.18, 1);
            /* ease-out */
            -webkit-transition-timing-function: cubic-bezier(0, 0, 0.18, 1);
            -moz-transition-timing-function: cubic-bezier(0, 0, 0.18, 1);
            -o-transition-timing-function: cubic-bezier(0, 0, 0.18, 1);
            transition-timing-function: cubic-bezier(0, 0, 0.18, 1);
            /* ease-out */
            -webkit-transition-delay: 100ms;
            -o-transition-delay: 100ms;
            transition-delay: 100ms;
            display: block;
            position: absolute;
            top: 50%;
            left: 50%;
            -webkit-transform: translate(-50%, -50%);
            -ms-transform: translate(-50%, -50%);
            -o-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
            font-size: 16px;
            color: #252525;
        }

        .cart .add-to-cart {
            -webkit-transition: all 600ms cubic-bezier(0, 0, 0.18, 1);
            -moz-transition: all 600ms cubic-bezier(0, 0, 0.18, 1);
            -o-transition: all 600ms cubic-bezier(0, 0, 0.18, 1);
            transition: all 600ms cubic-bezier(0, 0, 0.18, 1);
            /* ease-out */
            -webkit-transition-timing-function: cubic-bezier(0, 0, 0.18, 1);
            -moz-transition-timing-function: cubic-bezier(0, 0, 0.18, 1);
            -o-transition-timing-function: cubic-bezier(0, 0, 0.18, 1);
            transition-timing-function: cubic-bezier(0, 0, 0.18, 1);
            /* ease-out */
            -webkit-transition-delay: 100ms;
            -o-transition-delay: 100ms;
            transition-delay: 100ms;
            display: block;
            position: absolute;
            top: 50%;
            left: 110%;
            -webkit-transform: translate(-50%, -50%);
            -ms-transform: translate(-50%, -50%);
            -o-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
        }

        .cart .add-to-cart .txt {
            font-size: 12px;
            color: #fff;
            letter-spacing: 0.045em;
            text-transform: uppercase;
            white-space: nowrap;
        }
    </style>

    <title>Shop Page</title>
</head>
<body>
<%@include file="/views/layout/header.jsp" %>
<!---------------------------------------------------->

<div class="content">
    <div class="text">
        <h1>SHOP</h1>
        <h5><a href="${pageContext.request.contextPath}/home" style="color: black; text-decoration: none;"> Home </a> >
            <a href="${pageContext.request.contextPath}/shop" style="color: black; text-decoration: none;"> Shop </a>
        </h5>
    </div>
</div>

<!---------------------------------------------------->

<div class="group" style="background-color: #75897e; padding: 20px">
    <hgroup class="mb20">
        <h1>Search Results</h1>
        <h2 class="lead"><strong class="text-danger">${amountOfProduct}</strong> results were found for the search for <strong class="text-danger">"${keyword}"</strong></h2>
    </hgroup>
    <div class="div" style="display: flex; margin-left: 98px; margin-bottom: 10px; margin-top: 30px;">
    </div>
</div>
<!---------------------------------------------------->
<div class="container page-wrapper">
    <div class="page-inner">
        <div class="row" style="display: flex;">
            <c:forEach items="${productList}" var="o">
                <div class="el-wrapper" style="margin-right: 20px;">
                    <div class="box-up">
                        <img class="img" src="./images/${o.productImg}" alt="" style="width: 200px; height: 200px;">
                        <div class="img-info">
                            <div class="info-inner" >
                                <span class="p-name" style="font-weight: bold;">${o.productName}</span>
                                <span class="p-company">${o.category.categoryName}</span>
                            </div>
                            <div class="a-size">From Group 2</div>
                        </div>
                    </div>

                    <div class="box-down">
                        <div class="h-bg">
                            <div class="h-bg-inner"></div>
                        </div>

                        <a class="cart" href="#">
                            <span class="price" style="color: red; font-size: 24px;">$${o.productPrice}</span>
                            <span class="add-to-cart">
                <span class="txt" style="font-size: 20px; margin-left: 40px;">View Detail</span>
            </span>


                        </a>
                    </div>
                    <div style="margin-top: 30px; margin-left: 60px;">
                        <button style="width: 100px; height: 40px; background-color: #B88E2F; color: white; font-weight: bold; font-size: 16px; border-radius: 10px; cursor: pointer; margin-right: 30px;">Buy now</button>
                        <button style="width: 100px; height: 40px; background-color: #B88E2F; color: white; font-weight: bold; font-size: 15px;; border-radius: 10px; cursor: pointer;">Add to cart</button>
                    </div>
                </div>
            </c:forEach>





        </div>

        <!---------------ANOTHER ROW -------------------------------->





    </div>
</div>

<!---------------------------------------------------->



<nav aria-label="Page navigation example">
    <ul class="pagination justify-content-center">
        <c:if test="${tag > 1}">
            <li class="page-item">
                <a class="page-link"
                   href="${pageContext.request.contextPath}/shop?positionPage=${tag-1}">Previous</a>
            </li>
        </c:if>

        <c:forEach begin="1" end="${endP}" var="i">
            <li class="page-item">
                <a class="page-link ${tag == i ? "active" : ""}"
                   href="${pageContext.request.contextPath}/shop?positionPage=${i}">${i}</a>
            </li>
        </c:forEach>

        <c:if test="${tag < 1}">
            <li class="page-item">
                <a class="page-link" href="${pageContext.request.contextPath}/shop?positionPage=${tag+1}">Next</a>
            </li>
        </c:if>
    </ul>
</nav>
<!---------------------------------------------------->

<div class="quality_holder" style="background-color:#FAF3EA; height: 300px;">
    <div class="quality_box" style="background-color:#FAF3EA; vertical-align: central; align-items: center; margin-left: 98px; margin-right: 98px;">
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
<%@include file="/views/layout/footer.jsp" %>
</body>
