<%-- 
    Document   : CartPage
    Created on : Aug 15, 2023, 1:08:03 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <link rel="stylesheet" href="../../css/style.min.css">
                        <link rel="stylesheet" href="../../css/style.css">
        
        
        <style>
          .content {
height: 316px;
width: 1440px;
background-image:url(../../Image/backgound_login.jpg) ;
background-size: cover;

}
.text {
color: black;
position: absolute;
top: 10px;
left: 70px;
z-index: 3;
}

.text h1 {
    margin-top: 160px;
    margin-left: 570px;
}

.text h5 {
    margin-left: 566px;
}

.quality_box {
    display: flex;
    justify-content: space-between;
    background-color: #FAF3EA;
}
        </style>
        <title>Cart Page</title>
    </head>
    <body>
        <%@include  file="../layout/header.jsp" %>
        <!--------------------------------------------------------------------------------->
        
        <div class="content">
    <div class="text">
<h1>CART</h1>
<h5><a href="../user/homePage.jsp" style="color: black; text-decoration: none;"> Home </a> > <a href="cartPage.jsp" style="color: black; text-decoration: none;"> Cart </a></h5>
    </div>
</div>
        <div class="cart" style="margin-bottom: 100px;">
        
            
            <div class="table">
            <p>Insert table here</P>
        </div>
        
        <div class="total" style="background-image: url(../../Image/Rectangle.png); width: 393px; height: 390px; margin-left: 850px;">
           
            
            <span style="z-index: 3; margin-right: 1000px; margin-top: -900px; padding-left: 128px; font-weight: bold; font-size: 30px;"> Cart totals </span>
            
            <a href="checkoutPage.jsp"><button style="margin-top: 300px; padding-left: 158px; font-size: 20px; font-weight: bold;"> Check out </button></a>
        </div>
        
            
        </div>
        
        <!---------------------------------------------------->
        
        <div class="quality_holder" style="background-color:#FAF3EA; height: 300px;">
            <div class="quality_box" style="background-color:#FAF3EA; vertical-align: central; align-items: center; margin-left: 98px; margin-right: 98px;">
                <div class="quality_1" style="margin-top: 110px;">
                <img src="../../Image/trophy%201.svg">
                <span style="font-weight: bold; margin-top: -0px;">High quality</span></br>
                <span style="margin-left: 62px;">crafted from top materials</span>
            </div>
            
            <div class="quality_2" style="margin-top: 110px;">
                <img src="../../Image/guarantee.svg">
                <span style="font-weight: bold;">Warranty Protection</span></br>
                <span style="margin-left: 62px;">over 2 years</span>
            </div>
            
            <div class="quality_3" style="margin-top: 110px;">
                <img src="../../Image/shipping.svg">
                <span style="font-weight: bold;">Free Shipping</span></br>
                <span style="margin-left: 62px;">Order over 150 $</span>
            </div>
            
            <div class="quality_4" style="margin-top: 110px;">
                <img src="../../Image/customer-support.svg">
                <span style="font-weight: bold;">24 / 7 Support</span></br>
                <span style="margin-left: 62px;">Dedicated support</span>
            </div>
        </div>
        </div>
        <!---------------------------------------------------->
        
        <!--------------------------------------------------------------------------------->
        <%@include  file="../layout/footer.jsp" %>
    </body>
</html>
