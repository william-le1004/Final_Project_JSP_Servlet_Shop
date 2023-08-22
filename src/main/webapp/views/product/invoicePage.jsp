<%-- 
    Document   : invoicePage
    Created on : Aug 21, 2023, 9:51:27 AM
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


        #invoiceholder {
            width: 100%;
            hieght: 100%;
            padding-top: 50px;
        }

        #headerimage {
            z-index: -1;
            position: relative;
            top: -50px;
            height: 350px;
            background-image: url('http://michaeltruong.ca/images/invoicebg.jpg');

            -webkit-box-shadow: inset 0 2px 4px rgba(0, 0, 0, .15), inset 0 -2px 4px rgba(0, 0, 0, .15);
            -moz-box-shadow: inset 0 2px 4px rgba(0, 0, 0, .15), inset 0 -2px 4px rgba(0, 0, 0, .15);
            box-shadow: inset 0 2px 4px rgba(0, 0, 0, .15), inset 0 -2px 4px rgba(0, 0, 0, .15);
            overflow: hidden;
            background-attachment: fixed;
            background-size: 1920px 80%;
            background-position: 50% -90%;
        }

        #invoice {
            position: relative;
            top: -290px;
            margin: 0 auto;
            width: 700px;
            background: #FFF;
            margin-bottom: -220px;
        }

        [id*='invoice-'] { /* Targets all id with 'col-' */
            border-bottom: 1px solid #EEE;
            padding: 30px;
        }

        #invoice-top {
            min-height: 120px;
        }

        #invoice-mid {
            min-height: 120px;
        }

        #invoice-bot {
            min-height: 250px;
        }

        .logo {
            float: left;
            height: 60px;
            width: 60px;
            background: url(../Image/backgound_login.jpg) no-repeat;
            background-size: 60px 60px;
        }

        .clientlogo {
            float: left;
            height: 60px;
            width: 60px;
            background: url(../Image/backgound_login.jpg) no-repeat;
            background-size: 60px 60px;
            border-radius: 50px;
        }

        .info {
            display: block;
            float: left;
            margin-left: 20px;
        }

        .title {
            float: right;
        }

        .title p {
            text-align: left;
        }

        #project {
            margin-left: 52%;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        td {
            padding: 5px 0 5px 15px;
            border: 1px solid #EEE
        }

        .tabletitle {
            padding: 5px;
            background: #B88E2F;

        }

        .tabletitle h2 {
            color: white;
            font-size: 18px;
        }

        .service {
            border: 1px solid #EEE;
        }

        .item {
            width: 50%;
        }

        .itemtext {
            font-size: .9em;
        }

        #legalcopy {
            margin-top: 30px;
        }


        .effect2 {
            position: relative;
        }

        .effect2:before, .effect2:after {
            z-index: -1;
            position: absolute;
            content: "";
            bottom: 15px;
            left: 10px;
            width: 50%;
            top: 80%;
            max-width: 300px;
            background: #777;
            -webkit-box-shadow: 0 15px 10px #777;
            -moz-box-shadow: 0 15px 10px #777;
            box-shadow: 0 15px 10px #777;
            -webkit-transform: rotate(-3deg);
            -moz-transform: rotate(-3deg);
            -o-transform: rotate(-3deg);
            -ms-transform: rotate(-3deg);
            transform: rotate(-3deg);
        }

        .effect2:after {
            -webkit-transform: rotate(3deg);
            -moz-transform: rotate(3deg);
            -o-transform: rotate(3deg);
            -ms-transform: rotate(3deg);
            transform: rotate(3deg);
            right: 10px;
            left: auto;
        }


        .legal {
            width: 70%;
        }
    </style>


    <title>Invoice Page</title>
</head>
<body>

<%@include file="/views/layout/header.jsp" %>
<!------------------------------->

<div id="invoiceholder">

    <div id="headerimage"></div>
    <div id="invoice" class="effect2">

        <div id="invoice-top">
            <div class="logo"></div>
            <div class="info">
                <h2>From: Group 2</h2>
                <p> group2@gmail.com </br>
                    0987654321
                </p>
            </div><!--End Info-->
            <div class="title">
                <h1>Customer:</h1>
                <p>Name: ${user.name.firstName} ${user.name.lastName}<br>
                    Address: ${user.address} <br>
                    Phone: ${user.phoneNumber} <br>
                    Gmail: ${user.email} <br>
                </p>
            </div><!--End Title-->
        </div><!--End InvoiceTop-->


        <div id="invoice-bot">

            <div id="table">
                <table>
                    <%--                <thead>--%>
                    <tr class="tabletitle">
                        <td class="item"><h2>Item Description</h2></td>
                        <td class="Hours"><h2>Quantitive</h2></td>
                        <td class="subtotal"><h2>Sub-total</h2></td>
                    </tr>
                    <%--                    </thead>--%>
                    <%--                    <tbody>--%>
                    <c:set var="s" value="0"></c:set>
                    <c:forEach items="${sessionScope.cart}" var="i">
                        <c:set var="s" value="${s + i.product.productPrice * i.quantity}"></c:set>
                        <tr class="service">
                            <td class="tableitem"><p class="itemtext">${i.product.productName}</p></td>
                            <td class="tableitem"><p class="itemtext">${i.quantity}</p></td>
                            <td class="tableitem"><p class="itemtext">$${i.product.productPrice * i.quantity}</p></td>
                        </tr>
                    </c:forEach>
                    <%--                    </tbody>--%>

                    <tr class="tabletitle">
                        <td></td>
                        <td class="Rate"><h2>Total</h2></td>
                        <td class="payment"><h2>$${s}</h2></td>
                    </tr>

                </table>
            </div><!--End Table-->


        </div><!--End InvoiceBot-->

        <button style="width: 200px; height: 40px; background-color: #B88E2F; color: white; border-radius: 10px; font-weight: bold; font-size: 16px; border-color: #B88E2F; margin-left: 260px;">
           <a href="${pageContext.request.contextPath}/shop" style="text-decoration: none">
               Return
           </a>
            <%
                request.getSession().removeAttribute("cart");

            %>
        </button>


    </div><!--End Invoice-->


</div><!-- End Invoice Holder-->

<%@include file="/views/layout/footer.jsp" %>


</body>
</html>
