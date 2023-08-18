<%-- 
    Document   : ShopPage
    Created on : Aug 14, 2023, 2:19:11 AM
    Author     : Administrator
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="./css/style.min.css">
    <link rel="stylesheet" href="./css/style.css">


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
            /*z-index: 3;*/
        }

        .text h1 {
            margin-top: 160px;
            margin-left: 570px;
            font-weight: bold;
        }

        .text h5 {
            margin-left: 566px;
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

    </style>

    <title>Shop Page</title>
</head>
<body>
<!-------------------Header---------------------------->
<%@include file="/views/layout/header.jsp" %>
<!-------------------Header---------------------------->


<div class="content">
    <div class="text">
        <h1>SHOP</h1>
        <h5><a href="${pageContext.request.contextPath}/home" style="color: black; text-decoration: none;"> Home </a> >
            <a href="${pageContext.request.contextPath}/shop" style="color: black; text-decoration: none;"> Shop </a></h5>
    </div>
</div>

<!---------------------------------------------------->

<div class="group" style="background-color: #F9F1E7;">
    <div class="div" style="display: flex; margin-left: 98px; margin-bottom: 25px;">
        <div style="margin-top: 28px;">Filter</div>
        <img class="system-uicons" alt="System uicons" style="margin-left: 10px; margin-top: 28px; margin-bottom: 0px;"
             src="./Image/filter_icon.svg"/>
    </div>
</div>
<!---------------------------------------------------->
<section class="page__products products" style="margin-top: 50px;">
    <div class="products__container _container">
        <div class="products__items">
            <c:forEach items="${productList}" var="o">
                <div class="products__item item-product" data-pid="1">
                    <a class="item-product__img _ibg" href="">
                        <picture>
                            <img src="./images/${o.productImg}" alt="">
                        </picture>
                    </a>
                    <div class="item-product__body">
                        <div class="item-product__content">
                            <h5 class="item-product__title">${o.productName}</h5>
                            <div class="item-product__text">${o.category.categoryName}</div>
                        </div>
                        <div class="item-product__prices">
                            <div class="item-product__price">$${o.productPrice}</div>
                        </div>
                        <div class="item-product__actions actions-product">
                            <div class="actions-product__body">
                                <a class="actions-product__btn btn btn_white" href="">View Detail</a>
                                <a class="actions-product__link _icon-favorite" href="">Like</a>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>

        </div>

    </div>
</section>


<!---------------------------------------------------->

<div class="frame">
    <div class="frame_group">
        <div class="overlap-group">
            <div class="text-wrapper">1</div>
        </div>
    </div>
    <div class="frame_group">
        <div class="overlap">
            <div class="div">2</div>
        </div>
    </div>
    <div class="frame_group">
        <div class="overlap">
            <div class="div">3</div>
        </div>
    </div>
    <div class="overlap-wrapper">
        <div class="div-wrapper">
            <div class="text-wrapper-2">Next</div>
        </div>
    </div>
</div>

<!---------------------------------------------------->

<div class="quality_holder" style="background-color:#FAF3EA; height: 300px;">
    <div class="quality_box"
         style="background-color:#FAF3EA; vertical-align: central; align-items: center; margin-left: 98px; margin-right: 98px;">
        <div class="quality_1" style="margin-top: 110px;">
            <img src="./Image/trophy%201.svg">
            <span style="font-weight: bold; margin-top: -0px;">High quality</span><br>
            <span style="margin-left: 62px;">crafted from top materials</span>
        </div>

        <div class="quality_2" style="margin-top: 110px;">
            <img src="./Image/guarantee.svg">
            <span style="font-weight: bold;">Warranty Protection</span><br>
            <span style="margin-left: 62px;">over 2 years</span>
        </div>

        <div class="quality_3" style="margin-top: 110px;">
            <img src="./Image/shipping.svg">
            <span style="font-weight: bold;">Free Shipping</span><br>
            <span style="margin-left: 62px;">Order over 150 $</span>
        </div>

        <div class="quality_4" style="margin-top: 110px;">
            <img src="./Image/customer-support.svg">
            <span style="font-weight: bold;">24 / 7 Support</span><br>
            <span style="margin-left: 62px;">Dedicated support</span>
        </div>
    </div>
</div>

<!-------------------Footer---------------------------->
<%@include file="/views/layout/footer.jsp" %>
<!-------------------Footer---------------------------->
<%--filter--%>
<div class="dropdown">
    <button onclick="myFunction()" class="dropbtn"><img class="system-uicons" style="margin-top: -26px;" alt="System uicons" src="../Image/filter_icon.svg" />
    </button>
    <div id="myDropdown" class="dropdown-content">
        <input type="text" placeholder="Search.." id="myInput" onkeyup="filterFunction()">
        <a href="#about">High → Low Price</a>
        <a href="#base">Low → High Price</a>
        <a href="#blog">Phone</a>
        <a href="#contact">Tablet</a>
        <a href="#custom">Laptop</a>
    </div>

    <script>function myFunction() {
        document.getElementById("myDropdown").classList.toggle("show");
    }

    function filterFunction() {
        var input, filter, ul, li, a, i;
        input = document.getElementById("myInput");
        filter = input.value.toUpperCase();
        div = document.getElementById("myDropdown");
        a = div.getElementsByTagName("a");
        for (i = 0; i < a.length; i++) {
            txtValue = a[i].textContent || a[i].innerText;
            if (txtValue.toUpperCase().indexOf(filter) > -1) {
                a[i].style.display = "";
            } else {
                a[i].style.display = "none";
            }
        }
    }</script>
</div>
<%--filter--%>
</body>
</html>
