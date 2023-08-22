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
    <link rel="icon" href="./Image/cr7.jpg">
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

        /* - - - - - RATINGS */
        .rating {
            position: absolute;
            width: 150px;
            height: 30px;
            padding: auto;
            border-radius: 30px;
            background-color: white;
            display: block;
            overflow: hidden;

            unicode-bidi: bidi-override;
            direction: rtl;
        }
        .rating:not(:checked) > input {
            display: none;
        }

        /* - - - - - RATE */
        #rate {
            top: -65px;
        }
        #rate:not(:checked) > label {
            cursor:pointer;
            float: right;
            width: 30px;
            height: 30px;
            display: block;

            color: rgba(0, 135, 211, .4);
            line-height: 33px;
            text-align: center;
        }
        #rate:not(:checked) > label:hover,
        #rate:not(:checked) > label:hover ~ label {
            color: rgba(0, 135, 211, .6);
        }
        #rate > input:checked + label:hover,
        #rate > input:checked + label:hover ~ label,
        #rate > input:checked ~ label:hover,
        #rate > input:checked ~ label:hover ~ label,
        #rate > label:hover ~ input:checked ~ label {
            color: #B88E2F;
        }
        #rate > input:checked ~ label {
            color: #B88E2F;
        }

    </style>


    <title>Product Details</title>
</head>
<body>
<%@include file="../layout/header.jsp" %>
<!------------------------->

<main class="mt-5 pt-4" >
    <div class="container mt-5">
        <!--Grid row-->
        <div class="row" style="margin-top: 0px; display: flex; margin-left: 40px;">
            <!--Grid column-->
            <div class="col-md-6 mb-4" >
                <img src="./images/${product.productImg}" class="img-fluid" alt="" style="width: 300px; margin-top: 20px; margin-left: 40px;border: solid #B88E2F 2px; padding: 5px; border-radius: 10px;"/>
            </div>
            <!--Grid column-->

            <!--Grid column-->
            <div class="col-md-6 mb-4">
                <!--Content-->
                <div class="p-4" style="margin-left: 100px; margin-top: 30px;">
                    <div class="mb-3">

                        <span style="font-size: 24px; font-weight: bold;">${product.productName}</span>

                    </div>

                    <p class="lead">
                        <span style="color: red;">$${product.productPrice}</span>

                    </p>

                    <!-- RATE -->


                    <p style="font-weight: bold; font-size: 24px; color: #B88E2F; border: 1px solid #B88E2F; width: 100px; padding: 7px; border-radius: 10px; margin-top: 40px">RATING</p>
                    <section id="rate" class="rating" style="margin-top: 370px;">
                        <!-- FIFTH STAR -->
                        <input type="radio" id="star_5" name="rate" value="5" />
                        <label for="star_5" title="Five" style="font-size:30px;">&#9733;</label>
                        <!-- FOURTH STAR -->
                        <input type="radio" id="star_4" name="rate" value="4" />
                        <label for="star_4" title="Four" style="font-size:30px;">&#9733;</label>
                        <!-- THIRD STAR -->
                        <input type="radio" id="star_3" name="rate" value="3" />
                        <label for="star_3" title="Three" style="font-size:30px;">&#9733;</label>
                        <!-- SECOND STAR -->
                        <input type="radio" id="star_2" name="rate" value="2" />
                        <label for="star_2" title="Two" style="font-size:30px;">&#9733;</label>
                        <!-- FIRST STAR -->
                        <input type="radio" id="star_1" name="rate" value="1" />
                        <label for="star_1" title="One" style="font-size:30px;">&#9733;</label>
                    </section>


                    <form class="d-flex justify-content-left" style="margin-top: 50px;">
                        <!-- Default input -->
                        <div class="form-outline me-1" style="width: 20px; margin-right: 25px;">
                            <input type="number" value="1" class="form-control" style="text-align: center; width: 50px; height: 30px; border-radius: 10px; font-size: 24px; margin-left: 26px; margin-top: 20px;"/>
                        </div>
                        <button class="btn btn-primary ms-1" type="submit" style="background-color: #B88E2F; border-color: #B88E2F; width: 200px; height: 40px; margin-top: 40px; border-radius: 10px;">
                            <a href="${pageContext.request.contextPath}/addCart?id=${product.productID}&action=addCart" class="btn" style="font-weight: bold; color: white; text-decoration: none; font-size: 16px;">
                                Add to cart
                                <i class="fas fa-shopping-cart ms-1"></i> </a>
                        </button>
                    </form>
<%--                                        <a href="${pageContext.request.contextPath}/addCart?id=${product.productID}" class="btn" style="font-weight: bold;">--%>
<%--                                            <i class="bi bi-info-circle"></i> Read more </a>--%>
                </div>
                <!--Content-->
            </div>
            <!--Grid column-->
        </div>
        <!--Grid row-->

        <hr />

        <!--Grid row-->
        <div class="row d-flex justify-content-center">
            <!--Grid column-->
            <div class="col-md-6 text-center">
                <h4 class="my-4 h4" style="font-weight: bold; font-size: 32px; margin-left: 360px;">RELATED PRODUCTS</h4>
            </div>
            <!--Grid column-->
        </div>
        <!--Grid row-->

        <!--Grid row-->
        <div class="row" style="margin-top: 40px; margin-left: 260px; margin-bottom: 100px; display: flex;">
            <!--Grid column-->
            <div class="col-lg-4 col-md-12 mb-4">
                <a href=""><img src="./Image/macbook_air.jpg" class="img-fluid" alt="" style="width: 200px; height: 200px;" /></a>

            </div>
            <!--Grid column-->

            <!--Grid column-->
            <div class="col-lg-4 col-md-6 mb-4">
                <a href=""><img src="./Image/iphone11.jpg" class="img-fluid" alt="" style="width: 200px; height: 200px;" /></a>
            </div>
            <!--Grid column-->

            <!--Grid column-->
            <div class="col-lg-4 col-md-6 mb-4">
                <a href=""><img src="./Image/ipad_pro.jpg" class="img-fluid" alt="" style="width: 200px; height: 200px;" /></a>
            </div>
            <!--Grid column-->
        </div>
        <!--Grid row-->
    </div>
</main>
<!--Main layout-->

    <!------------------------->
    <%@include file="../layout/footer.jsp" %>
</body>
</html>
