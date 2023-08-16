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
    margin-left: 523px;
}

.text h5 {
    margin-left: 540px;
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
<h5><a href="../user/homePage.jsp" style="color: black; text-decoration: none;"> Home </a> > <a href="checkoutPage.jsp" style="color: black; text-decoration: none;"> Check out </a></h5>
    </div>
</div>
        
        
        
        
        <!---------------------------------------------->
        
        <form action="#" method="post">
            
            <div class="both" style="display: flex; margin-bottom: 50px;">            
            <div class="checkout_form" style="margin-left: 210px; margin-top: 80px;">
            <h1 style="margin-bottom: 50px;">Billing details</h1>
            
            
            <div class="name" style="display: flex;">
                
                <div class=" firstname">
                    <label for="first-name" style="font-weight: bold;">First Name:</label><br>
              <input type="text" id="first-name" name="first-name" required style="width: 130px; height: 50px; border-radius: 10px; border-color: #9F9F9F;"><br><br>                        
                </div>
              
  
  <div class="lastname">
      <label for="last-name" style="margin-left: 30px; font-weight: bold; ">Last Name:</label><br>
  <input type="text" id="last-name" name="last-name" required style="width: 130px; height: 50px; border-radius: 10px; margin-left: 30px; border-color: #9F9F9F;"><br><br>
     
  </div>
                
            </div>
            

            <label for="company-name" style="font-weight: bold;">Company Name:</label><br>
  <input type="text" id="company-name" name="company-name" required style="width: 290px; height: 50px; border-radius: 10px; border-color: #9F9F9F;"><br><br>

  <label for="country" style="font-weight: bold;">Country:</label><br>
  <input type="text" id="country" name="country" required style="width: 290px; height: 50px; border-radius: 10px; border-color: #9F9F9F;"><br><br>

  <label for="street-address" style="font-weight: bold;">Street Address:</label><br>
  <input type="text" id="street-address" name="street-address" required style="width: 290px; height: 50px; border-radius: 10px; border-color: #9F9F9F;"><br><br>

  <label for="town" style="font-weight: bold;">Town:</label><br>
  <input type="text" id="town" name="town" required style="width: 290px; height: 50px; border-radius: 10px; border-color: #9F9F9F;"><br><br>

  <label for="province" style="font-weight: bold;">Province:</label><br>
  <input type="text" id="province" name="province" required style="width: 290px; height: 50px; border-radius: 10px; border-color: #9F9F9F;"><br><br>

  <label for="zip-code" style="font-weight: bold;">Zip Code:</label><br>
  <input type="text" id="zip-code" name="zip-code" required style="width: 290px; height: 50px; border-radius: 10px; border-color: #9F9F9F;"><br><br>

  <label for="phone" style="font-weight: bold;">Phone:</label><br>
  <input type="text" id="phone" name="phone" required style="width: 290px; height: 50px; border-radius: 10px; border-color: #9F9F9F;"><br><br>

  <label for="email-address" style="font-weight: bold;">Email:</label><br>
  <input type="email" id="email-address" name="email-address" required style="width: 290px; height: 50px; border-radius: 10px; border-color: #9F9F9F;" ><br><br>

   </div>
            
                <div class="bill" style="margin-left: 180px;">
  
                <div class="product-form" style="margin-top: 80px; margin-left: 100px;">
                    <div class="bill_text" style="display: flex;">
            <h3>Product</h3>
            <h3 style="margin-left: 220px;">Subtotal</h3>
                    </div>
            <h5>In sản phẩm đã mua ở đây !!</h5>
            
            
            
            
        </div>
  
  
  
                    <input type="submit" value="Place order" style="width: 300px; height: 64px; border-radius: 10px; 
                           background-color: white; margin-left: 185px; margin-top: 30px; font-size: 20px; font-weight: bold; cursor: pointer;">
  </div>
  
  </div>
</form>                     
           
           
        <!---------------------------------------------->
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
        <%@include  file="../layout/footer.jsp" %>
        
       
        
        
    </body>
</html>
