<%-- 
    Document   : CheckoutPage
    Created on : Aug 15, 2023, 1:49:32 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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
            margin-left: 523px;
            font-weight: bold;
        }

        .text h5 {
            margin-left: 560px;
        }


        .quality_box {
            display: flex;
            justify-content: space-between;
            background-color: #FAF3EA;
        }


    </style>


    <title>Checkout Page</title>
</head>
<body>
<%@include file="../layout/header.jsp" %>
<!---------------------------------------------------->


<div class="content">
    <div class="text">
        <h1>CHECK OUT</h1>
        <h5><a href="HomePage.jsp" style="color: black; text-decoration: none;"> Home </a> > <a href="CheckoutPage.jsp" style="color: black; text-decoration: none;"> Check out </a></h5>
    </div>
</div>




<!---------------------------------------------->

<div class="container" style="margin-left: 100px;">


    <div class="row" style="margin-top: 50px; margin-bottom: 70px;">
        <div class="col-md-4 order-md-2 mb-4">
            <h4 class="d-flex justify-content-between align-items-center mb-3">
                <span class="text-muted">Your cart</span>
                <span class="badge badge-secondary badge-pill">3</span>
            </h4>

            <ul class="list-group mb-3">


                <li class="list-group-item d-flex justify-content-between" style="margin-top: 30px; width: 518px; height: 38px;">
                    <span>Total (USD)</span>
                    <strong>$20</strong>
                </li>
            </ul>

            <!------------------------------------------------------------------->

            <form class="card p-2">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Promo code">
                    <div class="input-group-append">
                        <button type="submit" class="btn btn-secondary">Redeem</button>
                    </div>
                </div>
            </form>
        </div>
        <div class="col-md-8 order-md-1">
            <h4 class="mb-3">Billing address</h4>
            <form class="needs-validation" novalidate>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="firstName">First name</label>
                        <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
                        <div class="invalid-feedback">
                            Valid first name is required.
                        </div>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="lastName">Last name</label>
                        <input type="text" class="form-control" id="lastName" placeholder="" value="" required>
                        <div class="invalid-feedback">
                            Valid last name is required.
                        </div>
                    </div>
                </div>

                <div class="mb-3">
                    <label for="email">Email</label>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text">@</span>
                        </div>
                        <input type="email" class="form-control" id="email" placeholder="Email" required>
                        <div class="invalid-feedback" style="width: 100%;">
                            Your username is required.
                        </div>
                    </div>
                </div>

                <div class="mb-3">
                    <label for="companyName">Company name <span class="text-muted">(Optional)</span></label>
                    <input type="text" class="form-control" id="email" placeholder="Company name">
                    <div class="invalid-feedback">
                        Please enter a valid email address for shipping updates.
                    </div>
                </div>

                <div class="mb-3">
                    <label for="address">Address</label>
                    <input type="text" class="form-control" id="address" placeholder="Address" required>
                    <div class="invalid-feedback">
                        Please enter your shipping address.
                    </div>
                </div>



                <div class="row">
                    <div class="col-md-5 mb-3">
                        <label for="country">Province</label>
                        <select class="custom-select d-block w-100" id="country" required>
                            <option value="">Choose...</option>
                            <option>United States</option>
                            <option>Vietnam</option>
                            <option>Laos</option>
                            <option>Cambodia</option>
                        </select>
                        <div class="invalid-feedback">
                            Please select a valid country.
                        </div>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label for="province">City / County</label>
                        <select class="custom-select d-block w-100" id="state" required>
                            <option value="">Choose...</option>
                            <option>California</option>
                            <option>New York</option>
                            <option>Quy Nhon</option>
                            <option>Ho Chi Minh City</option>
                            <option>Ha Noi</option>
                        </select>
                        <div class="invalid-feedback">
                            Please provide a valid state.
                        </div>
                    </div>
                    <div class="col-md-3 mb-3">
                        <label for="zip">Zip</label>
                        <input type="text" class="form-control" id="zip" placeholder="" required>
                        <div class="invalid-feedback">
                            Zip code required.
                        </div>
                    </div>
                </div>
                <hr class="mb-4">


                <button class="btn btn-primary btn-lg btn-block" type="submit" style="background-color: #B88E2F; border-color: black; color: white; font-weight: bold;">Check out</button>
            </form>
        </div>
    </div>


</div>



<!---------------------------------------------->
<!---------------------------------------------------->

<div class="quality_holder" style="background-color:#FAF3EA; height: 300px;">
    <div class="quality_box" style="background-color:#FAF3EA; vertical-align: central; align-items: center; margin-left: 98px; margin-right: 98px;">
        <div class="quality_1" style="margin-top: 110px;">
            <img src="./Image/trophy 1.svg">

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
<!---------------------------------------------------->
<%@include file="../layout/footer.jsp" %>

</body>
</html>
