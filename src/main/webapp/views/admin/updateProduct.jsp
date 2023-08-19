<%--
    Document   : addProduct
    Created on : Aug 17, 2023, 2:09:32 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <style>

        .add_product {
            margin-left: 100px;
        }



        .content {
            height: 316px;
            width: 1440px;
            background-image: url(${pageContext.request.contextPath}/Image/product_layout.webp);
            background-size: cover;
        }

        .text {
            color: black;
            position: absolute;
            margin-left: 124px;

        }

        .text h1 {
            margin-top: 110px;
            margin-left: 480px;
            font-weight: bold;
        }

        .text h5 {
            margin-left: 523px;
        }





        .chon_cate {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            box-sizing: border-box;
            margin-bottom: 70px;
            margin-top: 40px;
        }

        .radio-tile-group {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }

        .input-container {
            position: relative;
            height:  7rem;
            width:  7rem;
            margin: 0.5rem;
        }


        .radio-button {
            opacity: 0;
            position: absolute;
            top: 0;
            left: 0;
            height: 100%;
            width: 100%;
            margin: 0;
            cursor: pointer;
        }


        .radio-tile {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            width: 100%;
            height: 100%;
            border: 2px solid black;
            border-radius: 5px;
            padding: 1rem;
            transition: transform 300ms ease;
        }
        .icon svg {
            fill: #B8E1FF;
            width: 3rem;
            height: 3rem;
        }
        .radio-tile-label {
            text-align: center;
            font-size: 0.75rem;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 1px;
            color: black;
        }


        .radio-button:checked + .radio-tile {
            background-color: #B8E1FF;
            border: 2px solid black;
            color: white;
            transform: scale(1.1, 1.1);

        .icon svg {
            fill: white;
            background-color: #B8E1FF;
        }
        .radio-tile-label {
            color: black;
            background-color: #B8E1FF;
        }
        }




        #view-code{
            color:#48cfad;
            font-size:14px;
            text-transform:uppercase;
            font-weight:700;
            text-decoration:none;
            position:absolute;top:640px; left:50%;margin-left:-35px;
        }
        #view-code:hover{color:#34c29e;}

        /* --- Product Card ---- */
        #make-3D-space{
            position: relative;
            perspective: 800px;
            width:340px;
            height:500px;
            transform-style: preserve-3d;
            transition: transform 5s;
            position:absolute;
            top:80px;
            left:50%;
            margin-left:-167px;
        }
        #product-front, #product-back{
            width:500px;
            height:500px;
            background:#fff;
            position:absolute;
            left:-5px;
            top:-5px;
            -webkit-transition: all 100ms ease-out;
            -moz-transition: all 100ms ease-out;
            -o-transition: all 100ms ease-out;
            transition: all 100ms ease-out;
        }
        #product-back{
            display:none;
            transform: rotateY( 180deg );
        }
        #product-card.animate #product-back, #product-card.animate #product-front{
            top:0px;
            left:0px;
            -webkit-transition: all 100ms ease-out;
            -moz-transition: all 100ms ease-out;
            -o-transition: all 100ms ease-out;
            transition: all 100ms ease-out;
        }
        #product-card{
            width:325px;
            height:490px;
            position:absolute;
            top:10px;
            left:10px;
            overflow:hidden;
            transform-style: preserve-3d;
            -webkit-transition:  100ms ease-out;
            -moz-transition:  100ms ease-out;
            -o-transition:  100ms ease-out;
            transition:  100ms ease-out;
        }
        div#product-card.flip-10{
            -webkit-transform: rotateY( -10deg );
            -moz-transform: rotateY( -10deg );
            -o-transform: rotateY( -10deg );
            transform: rotateY( -10deg );
            transition:  50ms ease-out;
        }
        div#product-card.flip90{
            -webkit-transform: rotateY( 90deg );
            -moz-transform: rotateY( 90deg );
            -o-transform: rotateY( 90deg );
            transform: rotateY( 90deg );
            transition:  100ms ease-in;
        }
        div#product-card.flip190{
            -webkit-transform: rotateY( 190deg );
            -moz-transform: rotateY( 190deg );
            -o-transform: rotateY( 190deg );
            transform: rotateY( 190deg );
            transition:  100ms ease-out;
        }
        div#product-card.flip180{
            -webkit-transform: rotateY( 180deg );
            -moz-transform: rotateY( 180deg );
            -o-transform: rotateY( 180deg );
            transform: rotateY( 180deg );
            transition:  150ms ease-out;
        }
        #product-card.animate{
            top:5px;
            left:5px;
            width:335px;
            height:500px;
            box-shadow:0px 13px 21px -5px rgba(0, 0, 0, 0.3);
            -webkit-transition:  100ms ease-out;
            -moz-transition:  100ms ease-out;
            -o-transition:  100ms ease-out;
            transition:  100ms ease-out;
        }
        .stats-container{
            background:#fff;
            position:absolute;
            top:386px;
            left:0;
            width:265px;
            height:300px;
            padding:27px 35px 35px;
            -webkit-transition: all 200ms ease-out;
            -moz-transition: all 200ms ease-out;
            -o-transition: all 200ms ease-out;
            transition: all 200ms ease-out;
        }
        #product-card.animate .stats-container{
            top:272px;
            -webkit-transition: all 200ms ease-out;
            -moz-transition: all 200ms ease-out;
            -o-transition: all 200ms ease-out;
            transition: all 200ms ease-out;
        }
        .stats-container .product_name{
            font-size:22px;
            color:#393c45;
        }
        .stats-container p{
            font-size:16px;
            color:#b1b1b3;
            padding:2px 0 20px 0;
        }
        .stats-container .product_price{
            float:right;
            color:#48cfad;
            font-size:22px;
            font-weight:600;
        }
        .image_overlay{
            position:absolute;
            top:0;
            left:0;
            width:100%;
            height:100%;
            background:#48daa1;
            opacity:0;
        }
        #product-card.animate .image_overlay{
            opacity:0.7;
            -webkit-transition: all 200ms ease-out;
            -moz-transition: all 200ms ease-out;
            -o-transition: all 200ms ease-out;
            transition: all 200ms ease-out;
        }
        .product-options{
            padding:2px 0 0;
        }
        .product-options strong{
            font-weight:700;
            color:#393c45;
            font-size:14px;
        }
        .product-options span{
            color:#969699;
            font-size:14px;
            display:block;
            margin-bottom:8px;
        }
        #view_details{
            position:absolute;
            top:112px;
            left:50%;
            margin-left:-85px;
            border:2px solid #fff;
            color:#fff;
            font-size:19px;
            text-align:center;
            text-transform:uppercase;
            font-weight:700;
            padding:10px 0;
            width:172px;
            opacity:0;
            -webkit-transition: all 200ms ease-out;
            -moz-transition: all 200ms ease-out;
            -o-transition: all 200ms ease-out;
            transition: all 200ms ease-out;
        }
        #view_details:hover{
            background:#fff;
            color:#48cfad;
            cursor:pointer;

        }
        #product-card.animate #view_details{
            opacity:1;
            width:152px;
            font-size:15px;
            margin-left:-75px;
            top:115px;
            -webkit-transition: all 200ms ease-out;
            -moz-transition: all 200ms ease-out;
            -o-transition: all 200ms ease-out;
            transition: all 200ms ease-out;
        }
        div.colors div{
            margin-top:3px;
            width:15px;
            height:15px;
            margin-right:5px;
            float:left;
        }
        div.colors div span{
            width:15px;
            height:15px;
            display:block;
            border-radius:50%;
        }
        div.colors div span:hover{
            width:17px;
            height:17px;
            margin:-1px 0 0 -1px;
        }
        div.c-blue span{background:#6e8cd5;}
        div.c-red span{background:#f56060;}
        div.c-green span{background:#44c28d;}
        div.c-white span{
            background:#fff;
            width:14px;
            height:14px;
            border:1px solid #e8e9eb;
        }
        div.shadow{
            width:335px;height:520px;
            opacity:0;
            position:absolute;
            top:0;
            left:0;
            z-index:3;
            display:none;
            background: -webkit-linear-gradient(left,rgba(0,0,0,0.1),rgba(0,0,0,0.2));
            background: -o-linear-gradient(right,rgba(0,0,0,0.1),rgba(0,0,0,0.2));
            background: -moz-linear-gradient(right,rgba(0,0,0,0.1),rgba(0,0,0,0.2));
            background: linear-gradient(to right, rgba(0,0,0,0.1), rgba(0,0,0,0.2));
        }
        #product-back div.shadow{
            z-index:10;
            opacity:1;
            background: -webkit-linear-gradient(left,rgba(0,0,0,0.2),rgba(0,0,0,0.1));
            background: -o-linear-gradient(right,rgba(0,0,0,0.2),rgba(0,0,0,0.1));
            background: -moz-linear-gradient(right,rgba(0,0,0,0.2),rgba(0,0,0,0.1));
            background: linear-gradient(to right, rgba(0,0,0,0.2), rgba(0,0,0,0.1));
        }
        #flip-back{
            position:absolute;
            top:20px;
            right:20px;
            width:30px;
            height:30px;
            cursor:pointer;
        }
        #cx, #cy{
            background:#d2d5dc;
            position:absolute;
            width:0px;
            top:15px;
            right:15px;
            height:3px;
            -webkit-transition: all 250ms ease-in-out;
            -moz-transition: all 250ms ease-in-out;
            -ms-transition: all 250ms ease-in-out;
            -o-transition: all 250ms ease-in-out;
            transition: all 250ms ease-in-out;
        }
        #flip-back:hover #cx, #flip-back:hover #cy{
            background:#979ca7;
            -webkit-transition: all 250ms ease-in-out;
            -moz-transition: all 250ms ease-in-out;
            -ms-transition: all 250ms ease-in-out;
            -o-transition: all 250ms ease-in-out;
            transition: all 250ms ease-in-out;
        }
        #cx.s1, #cy.s1{
            right:0;
            width:30px;
            -webkit-transition: all 100ms ease-out;
            -moz-transition: all 100ms ease-out;
            -ms-transition: all 100ms ease-out;
            -o-transition: all 100ms ease-out;
            transition: all 100ms ease-out;
        }
        #cy.s2{
            -ms-transform: rotate(50deg);
            -webkit-transform: rotate(50deg);
            transform: rotate(50deg);
            -webkit-transition: all 100ms ease-out;
            -moz-transition: all 100ms ease-out;
            -ms-transition: all 100ms ease-out;
            -o-transition: all 100ms ease-out;
            transition: all 100ms ease-out;
        }
        #cy.s3{
            -ms-transform: rotate(45deg);
            -webkit-transform: rotate(45deg);
            transform: rotate(45deg);
            -webkit-transition: all 100ms ease-out;
            -moz-transition: all 100ms ease-out;
            -ms-transition: all 100ms ease-out;
            -o-transition: all 100ms ease-out;
            transition: all 100ms ease-out;
        }
        #cx.s1{
            right:0;
            width:30px;
            -webkit-transition: all 100ms ease-out;
            -moz-transition: all 100ms ease-out;
            -ms-transition: all 100ms ease-out;
            -o-transition: all 100ms ease-out;
            transition: all 100ms ease-out;
        }
        #cx.s2{
            -ms-transform: rotate(140deg);
            -webkit-transform: rotate(140deg);
            transform: rotate(140deg);
            -webkit-transition: all 100ms ease-out;
            -moz-transition: all 100ms ease-out;
            -ms-transition: all 100ease-out;
            -o-transition: all 100ms ease-out;
            transition: all 100ms ease-out;
        }
        #cx.s3{
            -ms-transform: rotate(135deg);
            -webkit-transform: rotate(135deg);
            transform: rotate(135deg);
            -webkit-transition: all 100ease-out;
            -moz-transition: all 100ms ease-out;
            -ms-transition: all 100ms ease-out;
            -o-transition: all 100ms ease-out;
            transition: all 100ms ease-out;
        }
        #carousel{
            width:335px;
            height:500px;
            overflow:hidden;
            position:relative;

        }
        #carousel ul{
            position:absolute;
            top:0;
            left:0;
        }
        #carousel li{
            width:335px;
            height:500px;
            float:left;
            overflow:hidden;
        }
        .arrows-perspective{
            width:335px;
            height:55px;
            position: absolute;
            top: 218px;
            transform-style: preserve-3d;
            transition: transform 5s;
            perspective: 335px;
        }
        .carouselPrev, .carouselNext{
            width: 50px;
            height: 55px;
            background: #ccc;
            position: absolute;
            top:0;
            transition: all 200ms ease-out;
            opacity:0.9;
            cursor:pointer;
        }
        .carouselNext{
            top:0;
            right: -26px;
            -webkit-transform: rotateY( -117deg );
            -moz-transform: rotateY( -117deg );
            -o-transform: rotateY( -117deg );
            transform: rotateY( -117deg );
            transition: all 200ms ease-out;

        }
        .carouselNext.visible{
            right:0;
            opacity:0.8;
            background: #efefef;
            -webkit-transform: rotateY( 0deg );
            -moz-transform: rotateY( 0deg );
            -o-transform: rotateY( 0deg );
            transform: rotateY( 0deg );
            transition: all 200ms ease-out;
        }
        .carouselPrev{
            left:-26px;
            top:0;
            -webkit-transform: rotateY( 117deg );
            -moz-transform: rotateY( 117deg );
            -o-transform: rotateY( 117deg );
            transform: rotateY( 117deg );
            transition: all 200ms ease-out;

        }
        .carouselPrev.visible{
            left:0;
            opacity:0.8;
            background: #eee;
            -webkit-transform: rotateY( 0deg );
            -moz-transform: rotateY( 0deg );
            -o-transform: rotateY( 0deg );
            transform: rotateY( 0deg );
            transition: all 200ms ease-out;
        }
        #carousel .x, #carousel .y{
            height:2px;
            width:15px;
            background:#48cfad;
            position:absolute;
            top:31px;
            left:17px;
            -ms-transform: rotate(45deg);
            -webkit-transform: rotate(45deg);
            transform: rotate(45deg);
        }
        #carousel .x{
            -ms-transform: rotate(135deg);
            -webkit-transform: rotate(135deg);
            transform: rotate(135deg);
            top:21px;
        }
        #carousel .carouselNext .x{
            -ms-transform: rotate(45deg);
            -webkit-transform: rotate(45deg);
            transform: rotate(45deg);
        }
        #carousel .carouselNext .y{
            -ms-transform: rotate(135deg);
            -webkit-transform: rotate(135deg);
            transform: rotate(135deg);
        }

    </style>

    <title>Update Product</title>
</head>
<body>

<%@include file="../layout/adminHeader.jsp" %>
<!--------------------------------------->

<div class="content">
    <div class="text">
        <h1>Update Product</h1>
        <h5><a href="AdminPage.jsp" style="color: black; text-decoration: none;"> Home </a> > <a href="addProduct.jsp" style="color: black; text-decoration: none;"> Update Product </a></h5>
    </div>
</div>


<div class="container" style="margin-top: 50px; margin-bottom: 50px;">

    <section class="panel panel-default">

        <div class="panel-body" style="margin-left: 257px;">

            <form action="addProduct" method="post" enctype="multipart/form-data" class="form-horizontal" role="form">

                <div>
                    <div class="form-group" style="margin-bottom: 20px;">
                        <label for="name" class="col-sm-3 control-label" style="font-weight: bold; font-size: 24px;">Product name:</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" name="productName" id="name" placeholder="   Product Name"
                                   value="${product.productName}" style="width: 400px; height: 30px; margin-top: 10px; margin-bottom: 10px; border-radius: 5px;">
                        </div>
                    </div> <!-- form-group // -->

                    <!---------------------------------------------------------->
                    <div class="chon_cate">
                        <div class="radio-tile-group" style="margin-left:-725px; margin-top: -680px; z-index: 4;">
                            <label style="font-weight: bold; font-size: 24px; margin-top: 50px;">Category:</label>
                            <div class="input-container" style="width: 30px; height:30px; margin-right:50px; margin-left: 30px; margin-top: 70px; cursor: pointer;">
                                <input id="phone" class="radio-button" type="radio" name="radio" />
                                <div class="radio-tile">

                                    <label for="phone" class="radio-tile-label">Phone</label>
                                </div>
                            </div>

                            <div class="input-container" style="width: 30px; height:30px; margin-right:50px; margin-top: 70px; cursor: pointer;">
                                <input id="tablet" class="radio-button" type="radio" name="radio" />
                                <div class="radio-tile">

                                    <label for="tablet" class="radio-tile-label">Tablet</label>
                                </div>
                            </div>

                            <div class="input-container" style="width: 30px; height:30px; margin-right:50px; margin-top: 70px; cursor: pointer;">
                                <input id="laptop" class="radio-button" type="radio" name="radio" />
                                <div class="radio-tile">

                                    <label for="laptop" class="radio-tile-label">Laptop</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-------------------------------->





                    <div style="display: flex;">
                        <div class="form-group" style="margin-bottom: 30px; margin-top: -654px;">
                            <label for="name" class="col-sm-3 control-label" style="font-weight: bold; font-size: 24px; margin-bottom: 20px;">Price:</label>
                            <div class="col-sm-9">
                                <input type="number" class="form-control" name="price" id="name" placeholder="   Price"
                                       value="${product.productPrice}" style="width: 400px; height: 30px; margin-top: 10px; margin-bottom: 10px; border-radius: 5px;">
                            </div>







                        </div> <!-- form-group // -->

                        <div id="make-3D-space" >
                            <div id="product-card" style="width: 1000px; height: 700px;">
                                <div id="product-front" style="margin-top: 260px; margin-left: 245px;">

                                    <img src="./images/${product.productImg}" alt=""  style="width: 200px; height: 200px; margin-top: 40px; margin-left: 60px;"/>

                                    <div class="stats" style="width: 250px;">
                                        <div class="stats-container" style="width:250px; margin-top: -140px;">
                                            <span class="product_price">$39</span>
                                            <span class="product_name">Iphone 14 Pro Max</span>
                                            <p>Phone</p>


                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>








                    </div>

                    <div class="form-group">


                        <div style="margin-bottom: 20px; margin-top: -562px;">
                            <label for="name" class="col-sm-3 control-label" style="font-weight: bold; font-size: 24px; margin-bottom: 20px;">Quantity:</label>
                            <div class="col-sm-9">
                                <input type="number" class="form-control" name="quantity" id="name" placeholder="   Quantity"
                                       value="${product.quantity}" style="width: 400px; height: 30px; margin-top: 10px; margin-bottom: 10px; border-radius: 5px;">
                            </div>
                        </div>

                        <div class="form-group" style="margin-top: 20px;">
                            <label for="name" class="col-sm-3 control-label" style="font-weight: bold; font-size: 24px; margin-bottom: 20px;">Product image:</label>
                            <div class="col-sm-3">
                                <label class="control-label small" for="file_img">Upload image (jpg/png):</label>
                                <input type="file" name="file_img" style="margin-top: 10px; margin-bottom: 10px; border-radius: 5px;">
                            </div>

                        </div>







                    </div>
                    <!-- form-group // -->


                    <div class="col-sm-offset-3 col-sm-9" style="margin-top: 34px;">
                        <button type="submit" class="btn btn-primary" style="background-color: #B8E1FF; border-color: #B8E1FF; width: 200px; margin-left: 337px; height: 46px; border-radius: 10px; font-weight: bold; color: black; font-size: 20px;;cursor: pointer;">Upload product</button>
                    </div>

                </div>
        </div><!-- panel-body // -->
    </section><!-- panel// -->


</div> <!-- container// -->


<!--------------------------------------->
<%@include file="../layout/footer.jsp" %>

</body>
</html>