<%-- 
    Document   : Header
    Created on : Aug 11, 2023, 2:13:11 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
        <style>
            .header {
    background-color: #ffffff;
    height: 100px;
    width: 1440px;
}

.header .group {
    height: 41px;
    left: 54px;
    position: relative;
    top: 29px;
    width: 1286px;
}

.header .overlap-group {
    height: 40px;
    position: relative;
}

.header .div {
    height: 24px;
    left: 451px;
    position: absolute;
    top: 9px;
    width: 438px;
}

.div {
    z-index: 3;
}

.div a {
    color: #000000;
    text-decoration: none;
    font-size: 16px;
}

.header .text-wrapper {
    color: #000000;
    font-family: "Poppins-Medium", Helvetica;
    font-size: 16px;
    font-weight: bold;
    left: 0;
    letter-spacing: 0;
    line-height: normal;
    position: absolute;
    top: 0;
}

.header .text-wrapper-2 {
    color: #000000;
    font-family: "Poppins-Medium", Helvetica;
    font-size: 16px;
    font-weight: bold;
    left: 123px;
    letter-spacing: 0;
    line-height: normal;
    position: absolute;
    top: 0;
}

.header .text-wrapper-3 {
    color: #000000;
    font-family: "Poppins-Medium", Helvetica;
    font-size: 16px;
    font-weight: bold;
    left: 240px;
    letter-spacing: 0;
    line-height: normal;
    position: absolute;
    top: 0;
}

.header .text-wrapper-4 {
    color: #000000;
    font-family: "Poppins-Medium", Helvetica;
    font-size: 16px;
    font-weight: bold;
    left: 364px;
    letter-spacing: 0;
    line-height: normal;
    position: absolute;
    top: 0;
}

.header .group-2 {
    height: 41px;
    z-index: 1;
    position: absolute;
    top: 0;
    width: 1286px;
}

.header .mdi-account-alert {
    height: 28px;
    left: 1039px;
    position: absolute;
    top: 7px;
    width: 28px;
}

.header .akar-icons-search {
    height: 28px;
    left: 1112px;
    position: absolute;
    top: 7px;
    width: 28px;
}

.header .akar-icons-heart {
    height: 28px;
    left: 1185px;
    position: absolute;
    top: 7px;
    width: 28px;
}

.header .ant-design-shopping {
    height: 28px;
    left: 1258px;
    position: absolute;
    top: 7px;
    width: 28px;
}

.header .frame_header {
    align-items: center;
    display: inline-flex;
    gap: 5px;
    justify-content: center;
    left: 0;
    position: absolute;
    top: 0;
    z-index: 1;
}

.header .meubel-house-logos {
    height: 32px;
    position: relative;
    width: 50px;
}

.header .skin-clinic {
    flex: 0 0 auto;
    position: relative;
}






    .searchbar{
    margin-bottom: auto;
    margin-top: auto;
    height: 30px;
    background-color: white;
    border-radius: 30px;
    padding: 10px;
    margin-left: 972px;
   z-index: 3
    }

    .search_input{
    color: #B88E2F;
    border: 0;
    outline: 0;
    background: none;
    width: 0;
        margin-left: -6px;
    line-height: 40px;
    transition: width 0.4s linear;
    z-index: 3;
    }
    
    .searchbar:hover > .search_input{
    padding: 0 10px;
    width: 262px;
    caret-color: #B88E2F;
    transition: width 0.4s linear;
        margin-left: -6px;
        margin-top:-300px;

    }

    .searchbar:hover > .search_icon{
    background: white;
    color: white;
    }

    .search_icon{
    height: 40px;
    width: 40px;
    float: right;
    display: flex;
    justify-content: center;
    align-items: center;
    border-radius: 50%;
    color:white;
    text-decoration:none;
    margin-top: -13px;
    margin-left: -2px;
    }

        </style>

        <title>Header</title>
    </head>


    <body>
        <div class="header">
            <div class="group">
                <div class="overlap-group">
                    <div class="div">
                        <div class="text-wrapper" style="z-index: 10;"><a href="HomePage.jsp">Home</a></div>
                        <div class="text-wrapper-2"><a href="ShopPage.jsp">Shop</a></div>
                        <div class="text-wrapper-3"><a href="BlogPage.jsp">About</a></div>
                        <div class="text-wrapper-4"><a href="ContactPage.jsp">Contact</a></div>
                    </div>



                    <div class="group-2">
                        <a href="#"><img class="mdi-account-alert" alt="Mdi account alert" src="../Image/mdi-account-alert-outline.svg" /></a>
                        
                        <div class="d-flex justify-content-center h-100">
        <div class="searchbar">
            <input class="search_input" type="text" name="" placeholder="Search...">
            <a href="#" class="search_icon"><img src="../Image/akar-icons-search.svg"></a>
        </div>
      </div>
    
                        
                        
                        <a href="WishListPage.jsp"><img class="akar-icons-heart" alt="Akar icons heart" src="../Image/akar-icons-heart.svg" /></a>
                        <a href="CartPage.jsp"><img class="ant-design-shopping" alt="Ant design shopping" src="../Image/ant-design-shopping-cart-outlined.svg" /></a>




                        <div class="frame_header">
                            <a href="HomePage.jsp"><img class="meubel-house-logos" alt="Meubel house logos" src="../Image/meubel-house-logos-05.png" /></a>
                            <a href="HomePage.jsp"><img class="skin-clinic" alt="Skin clinic" src="../Image/skin-clinic.png" /></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        
            
      
        
        
    </body>
    
    
    

</html>
