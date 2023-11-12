<%@ page import="com.Model.User" %><%--
    Document   : CheckoutPage
    Created on : Aug 15, 2023, 1:49:32 AM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="icon" href="./Image/cr7.jpg">
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
            margin-left: 570px;
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


        .product-info {
            margin-bottom: 20px;
        }


    </style>


    <title>Checkout Page</title>
</head>
<body>
<%@include file="/views/layout/header.jsp" %>
<!---------------------------------------------------->

<%
    //        String s = request.getSession().getAttribute("uName").toString();
//    User user =
%>

<div style="width: 100%;">
    <div class="content">
        <div class="text">
            <h1>CHECK OUT</h1>
            <h5><a href="HomePage.jsp" style="color: black; text-decoration: none;"> Home </a> > <a
                    href="CheckoutPage.jsp" style="color: black; text-decoration: none;"> Check out </a></h5>
        </div>
    </div>


    <!---------------------------------------------->
    <div style="display: flex;">
        <div id="wrapper">
            <form action="placeOrder" method="post"
                  style="border: 1px solid #B88E2F; width: 700px; margin-top: 30px; margin-bottom: 30px; margin-left: 4px; border-radius: 10px;">
                <h3 style="font-size: 30px; font-weight: bold; margin-left: 220px;">BILLING DETAILS</h3>
                <div style="margin-left: 40px;">

                    <div class="input-name" style="display: flex;">

                        <div class="form-group" style="margin-bottom: 30px;">

                            <input type="text" name="firstname" required placeholder="First name"
                                   style="width: 280px; height: 34px; border-radius: 5px; margin-right: 30px;"
                                   value="${sessionScope.userOB.name.firstName}">
                        </div>

                        <div class="form-group" style="margin-bottom: 30px;">


                            <input type="text" name="lastname" required placeholder="Last name"
                                   style="width: 280px; height: 34px; border-radius: 5px;"
                                   value="${sessionScope.userOB.name.lastName}">
                        </div>
                    </div>


                    <div class="form-group" style="margin-bottom: 30px;">

                        <input type="text" name="username" required placeholder="Username"
                               style="width: 600px; height: 34px; border-radius: 5px;"
                               value="${sessionScope.userOB.username}">
                    </div>


                    <div class="form-group" style="margin-bottom: 30px;">


                        <input type="password" name="password" required placeholder="Password"
                               style="width: 600px; height: 34px; border-radius: 5px;"
                               value="${sessionScope.userOB.password}">
                    </div>


                    <div class="form-group" style="margin-bottom: 30px;">


                        <input type="text" name="streetAddress" required placeholder="Street address"
                               style="width: 600px; height: 34px; border-radius: 5px;"
                               value="${sessionScope.userOB.address}">
                    </div>


                    <div class="form-group" style="margin-bottom: 30px;">


                        <input type="number" name="phone" required placeholder="Phone"
                               style="width: 600px; height: 34px; border-radius: 5px;"
                               value="${sessionScope.userOB.phoneNumber}">
                    </div>


                    <div class="form-group" style="margin-bottom: 30px;">


                        <input type="email" name="email" required placeholder="Email"
                               style="width: 600px; height: 34px; border-radius: 5px;"
                               value="${sessionScope.userOB.email}">
                    </div>
                    <div style="display: flex; margin-left: 80px; margin-bottom: 30px;">
                        <button type="submit" id="btn-login"
                                style="width: 200px; height: 50px; margin-right: 30px; border-radius: 10px; background-color: #B88E2F; color: white; font-weight: bold; font-size: 24px; cursor: pointer;">
                            Place order
                        </button>
                        <button type="submit" id="btn-login"
                                style="width: 200px; height: 50px; border-radius: 10px; background-color: #B88E2F; color: white; font-weight: bold; font-size: 24px; cursor: pointer;">
                            Return
                        </button>
                    </div>
                </div>


            </form>
        </div>

        <div>
            <div class="pro-check-out"
                 style="margin-left: 10px; border: 1px solid #B88E2F; border-radius: 10px; margin-top: 30px; width: 600px;">
                <div style="margin-left: 80px;">
                    <c:set var="s" value="0"></c:set>
                    <c:forEach items="${sessionScope.cart}" var="i">
                        <c:set var="s" value="${s + i.product.productPrice * i.quantity}"></c:set>
                        <!------Sản phẩm 1 --->
                        <div class="product-info" style="margin-top: 30px;">
                        <span style="font-weight: bold;  font-size: 17px;">${i.product.productName}<span
                                style="margin-left: 50px;">${i.quantity}</span><span
                                style="color: red; font-weight: bold; margin-left: 50px;">$${i.product.productPrice * i.quantity}</span></span>
                        </div>
                    </c:forEach>
                    <!----------------------------->


                </div>


                <hr style="width: 500px; margin-left: 43px; margin-top: 30px;">
                <div>
                    <p style="font-size: 26px; font-weight: bold; margin-left: 75px;">Total: <span
                            style="color: red; margin-left: 204px;">$${s}</span></p>

                    <%--                    <div style="display: flex; margin-left: 80px; margin-bottom: 30px;">--%>
                    <%--                        <button type="submit" id="btn-login"--%>
                    <%--                                style="width: 200px; height: 50px; margin-right: 30px; border-radius: 10px; background-color: #B88E2F; color: white; font-weight: bold; font-size: 24px; cursor: pointer;">--%>
                    <%--                            Place order--%>
                    <%--                        </button>--%>
                    <%--                        <button type="submit" id="btn-login"--%>
                    <%--                                style="width: 200px; height: 50px; border-radius: 10px; background-color: #B88E2F; color: white; font-weight: bold; font-size: 24px; cursor: pointer;">--%>
                    <%--                            Return--%>
                    <%--                        </button>--%>
                    <%--                    </div>--%>


                </div>


            </div>

        </div>

    </div>


    <!---------------------------------------------->
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


</div>
<!---------------------------------------------------->
<%@include file="/views/layout/footer.jsp" %>
</body>
</html>
