<%-- 
    Document   : ContactPage
    Created on : Aug 15, 2023, 10:11:44 AM
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
background-image:url(../Image/backgound_login.jpg) ;
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
    margin-left: 530px;
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
        
        <title>Contact Page</title>
    </head>
    <body>
        <%@include  file="Header.jsp" %>
        <!--------------------------------------------->
        
              
<div class="content">
    <div class="text">
<h1>CONTACT</h1>
<h5><a href="HomePage.jsp" style="color: black; text-decoration: none;"> Home </a> > <a href="ContactPage.jsp" style="color: black; text-decoration: none;"> Contact </a></h5>        
    </div>
</div>
        
        <!--------------------------------------->
        
        <div class="title">
            <h3  style="margin-top: 50px; margin-left: 550px; font-size: 32px;">Get in touch with us</h3>
            <h6 style="margin-top: 30px; color: #9F9F9F; text-align: center; line-height: 40px;">For More Information About Our Product & Services. Please Feel Free To Drop Us<br>An Email. Our Staff Always Be There To Help You Out. Do Not Hesitate !</h6>            
        </div>
        <!------------------------------------------>
        
        <div class="all_content" style="margin-left: 50px; margin-bottom: 100px;">
        
        
            <div class="company_info">
            <div class="info-icon" style="margin-left: 250px; margin-top: 40px;">
                
                <div class="company_info_1" style="line-height: 40px;">
                <img src="../Image/location.svg">
                <span style="font-weight: bold;">Address</span><br>
                <span>FPT University Quy Nhon</span>
                </div>
                
                <div class="company_info_2" style="line-height: 40px;">
                <img src="../Image/bxs_phone.svg">
                <span style="font-weight: bold;">Phone</span><br>
                <span>0987654321</span>
                </div>
                
                <div class="company_info_3" style="line-height: 40px;">
                <img src="../Image/bi_clock-fill.svg">
                <span style="font-weight: bold;">Working time</span><br>
                <span>Coder no leisure :))</span>
            </div>
        </div>
        </div>
        
        
         <!---------------------------------------------->
        
         <form action="#" method="post" style="margin-left: 750px; margin-top: -250px;">
            
            <div class="contact_input">
            <label for="name" style="font-weight: bold;">Your name:</label><br>
            <input type="text" id="name" name="name" required placeholder="Abc" style="width: 400px; height: 50px; border-radius: 10px; border-color: #9F9F9F;"><br><br>

  <label for="email-address" style="font-weight: bold;">Email address:</label><br>
  <input type="email" id="country" name="email" required placeholder="abc@gmail.com" style="width: 400px; height: 50px; border-radius: 10px; border-color: #9F9F9F;"><br><br>

  <label for="subject" style="font-weight: bold;">Subject:</label><br>
  <input type="text" id="subject" name="subject" placeholder="This is an optional" style="width: 400px; height: 50px; border-radius: 10px; border-color: #9F9F9F;"><br><br>

  <label for="message" style="font-weight: bold;">Message:</label><br>
  <input type="text" id="message" name="message" placeholder="Hi ! I'd like to ask about" style="width: 400px; height: 100px; border-radius: 10px; border-color: #9F9F9F;"><br><br>
            </div>
  
  
                    <input type="submit" value="Submit" style="width: 300px; height: 64px; border-radius: 10px; 
                           background-color: #B88E2F; color: white; margin-left: 55px; margin-top: 30px; font-size: 20px; font-weight: bold; cursor: pointer;">
</form>  
         
    </div>
        
        
            <!---------------------------------------------------->
        
        <div class="quality_holder" style="background-color:#FAF3EA; height: 300px;">
            <div class="quality_box" style="background-color:#FAF3EA; vertical-align: central; align-items: center; margin-left: 98px; margin-right: 98px;">
                <div class="quality_1" style="margin-top: 110px;">
                <img src="../Image/trophy 1.svg">
               
                <span style="font-weight: bold; margin-top: -0px;">High quality</span></br>
                <span style="margin-left: 62px;">crafted from top materials</span>
            </div>
                
            
            <div class="quality_2" style="margin-top: 110px;">
                <img src="../Image/guarantee.svg">
                <span style="font-weight: bold;">Warranty Protection</span></br>
                <span style="margin-left: 62px;">over 2 years</span>
            </div>
            
            <div class="quality_3" style="margin-top: 110px;">
                <img src="../Image/shipping.svg">
                <span style="font-weight: bold;">Free Shipping</span></br>
                <span style="margin-left: 62px;">Order over 150 $</span>
            </div>
            
            <div class="quality_4" style="margin-top: 110px;">
                <img src="../Image/customer-support.svg">
                <span style="font-weight: bold;">24 / 7 Support</span></br>
                <span style="margin-left: 62px;">Dedicated support</span>
            </div>
        </div>
        </div>
        <!---------------------------------------------------->
        <%@include  file="Footer.jsp" %>
        
       
        
          
        
        
        
        
    </body>
</html>
