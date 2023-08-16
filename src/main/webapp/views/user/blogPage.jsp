<%-- 
    Document   : BlogPage
    Created on : Aug 15, 2023, 11:29:13 AM
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
    margin-left: 550px;
}

.text h5 {
    margin-left: 543px;
}

.quality_box {
    display: flex;
    justify-content: space-between;
    background-color: #FAF3EA;
}

        </style>
        <title>Blog Page</title>
        
        <style>
            include {z-index: 3;}
        </style>
    </head>
    <body>
        <%@include  file="../layout/header.jsp"%>
        <!----------------------------------------------------->
                      
<div class="content">
    <div class="text">
<h1>BLOG</h1>
<h5><a href="homePage.jsp" style="color: black; text-decoration: none;"> Home </a> > <a href="blogPage.jsp" style="color: black; text-decoration: none;"> Blog </a></h5>
    </div>
</div>
        
        <!-------------------------------------->
        <div class="blog_content" style="display: flex; margin-left: 100px; margin-bottom: 100px;">
        <div class="left_content" style="margin-top: 40px; margin-left: 100px;">
            
            <div class="left_content_1" style="width: 500px;">
                <a href="https://www.apple.com/newsroom/2022/10/apple-introduces-next-generation-ipad-pro-supercharged-by-the-m2-chip/"><img src="../../Image/ipad_pro.jpg" style="width: 400px;"></a>
                <a href="https://www.apple.com/newsroom/2022/10/apple-introduces-next-generation-ipad-pro-supercharged-by-the-m2-chip/" style="color: black; text-decoration: none;">
                    <h3 style="margin-top: 40px;">About Ipad Pro M2</h3>
                </a>
                <h6 style="text-align: justify; line-height: 25px; color: #9F9F9F;">The new iPad Pro features a next-level Apple Pencil hover experience, ProRes video capture, superfast Wi-Fi 6E, and powerful features in iPadOS 16</h6>
            </div>
            
            <!-------------------------------->
            
            <div class="line" style="margin-bottom: 40px" >_______________________________________________________</div>
            
            <!-------------------------------------------------------->
            <div class="left_content_2" style="width: 500px;">
                <a href="https://www.apple.com/iphone-14-pro/specs/"><img src="../../Image/iphone14.webp" style="width: 400px;"></a>
                <a href="https://www.apple.com/iphone-14-pro/specs/" style="color: black; text-decoration: none;">
                    <h3 style="margin-top: 40px;">About Iphone 14 Pro Max</h3>
                </a>
                <h6 style="text-align: justify; line-height: 25px; color: #9F9F9F;">With Apple Trade In, you can get credit toward a new iPhone when you trade in an eligible smartphone.25 It’s good for you and the planet.</h6>
            </div>

            <!-------------------------------------------------------------------------->

            <div class="line">_______________________________________________________</div>

            <!--------------------------------------------------------------------->
            <div class="left_content_3" style="width: 500px;">
                <a href="https://www.apple.com/macbook-air-m1/"><img src="../../Image/macbook_air.jpg" style="width: 400px;"></a>
                <a href="https://www.apple.com/macbook-air-m1/" style="color: black; text-decoration: none;">
                    <h3 style="margin-top: 40px;">About Macbook Pro</h3>
                </a>
                <h6 style="text-align: justify; line-height: 25px; color: #9F9F9F;">MacBook Air with M1 is an incredibly portable laptop — it’s nimble and quick, with a silent, fanless design and a beautiful Retina display. Thanks to its slim profile and all‑day battery life, this Air moves at the speed of lightness.</h6>
            </div>
            
        </div>
        
            
            <div class="right_content" style="margin-top: 55px; margin-left: 50px;">
            <div class="blog_right">
                <form class="search_bar">
                    <input type="text" placeholder="Search here" style="width:311px; height: 38px; border-radius: 10px;">
                    
                    <button style="width:50px; height: 38px; background-color: white; border-color: white; cursor: pointer;"><img src="../../Image/akar-icons-search.svg"></button>
                </form>
                
            </div>
        
            <div class="category" style="line-height: 50px; margin-left: 40px; margin-top: 50px;"
            <ul><h3>CATEGORY</h3>
                <li style="list-style: none;"><a style="color: #9F9F9F; font-size: 24px;" href="#">Phone</a></li>
                <li style="list-style: none;"><a style="color: #9F9F9F; font-size: 24px;" href="#">Tablet</a></li>
                <li style="list-style: none;"><a style="color: #9F9F9F; font-size: 24px;" href="#">Laptop</a></li>
            </ul>
            
        </div>
                
                <div class="related_post" style="margin-top: 50px; margin-left: 40px;">
                     
                    <h3 style="margin-bottom: 40px;">Related post</h3>
                     
                     
            <div class="related_post_1" style="display: flex; margin-bottom: 40px;">
                <a href="#"><img src="../../Image/iphone11.jpg" style="width: 150px; height: 150px;"></a>
                    <a href="#"><h6 style="width: 180px; text-align: justify; margin-top: 35px; color: black;"> Iphone 11 and something you don't know </h6></a>
                </div>    
            
                <div class="related_post_2" style="display: flex; margin-bottom: 40px;">
                    <a href="#"><img src="../../Image/s21+.png" style="width: 150px; height: 150px;"></a>
                   <a href="#"> <h6 style="width: 180px; text-align: justify; margin-top: 58px; color: black;"> About Samsung S21+</h6></a>
                </div>    
            
                <div class="related_post_3" style="display: flex; margin-bottom: 40px;">
                    <a href="#"><img src="../../Image/s23_ultra.webp" style="width: 150px; height: 150px;"></a>
                   <a href="#"> <h6 style="width: 180px; text-align: justify; margin-top: 66px; color: black;">Samsung S23 ultra</h6></a>
                </div>       
        </div>
                
                
                
        </div>
    </div>
        
        
        
        
         
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
