<%-- 
    Document   : AdminPage
    Created on : Aug 15, 2023, 1:40:33 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="../layout/header.jsp" %>
        <!-------------------------------------------->
        
        <h1>PRODUT MANAGEMENT</h1>
        
        <h3>Inser bảng của mấy sản phẩm đã thả tim ở đây</h3>
        
        
        
        <!-- Nếu bấm add to cart thì bỏ sản phẩm đấy vào giỏ hàng luôn -->
        <button>Add to cart</button>
        <a href="../user/homePage.jsp"><button>Return</button></a>
        <a href="checkoutPage.jsp"><button>Check out</button></a>
        
        
                <!-------------------------------------------->

        <%@include  file="../layout/footer.jsp" %>
    </body>
</html>
