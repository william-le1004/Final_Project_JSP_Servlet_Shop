<%--
    Document   : addProduct
    Created on : Aug 17, 2023, 2:09:32 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="icon" href="./Image/cr7.jpg">
    <style>

        .add_product {
            margin-left: 100px;
        }



        .content {
            height: 300px;
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
            margin-left:445px;
            font-weight: bold;
        }

        .text h5 {
            margin-left: 495px;
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


    </style>

    <title>Update Product</title>
</head>
<body>

<%@include file="../admin/checkSession.jsp" %>

<%@include file="../layout/adminHeader.jsp" %>
<!--------------------------------------->

<div class="content">
    <div class="text">
        <h1>Update Product</h1>
        <h5><a href="AdminPage.jsp" style="color: black; text-decoration: none;"> Home </a> > <a href="addProduct.jsp" style="color: black; text-decoration: none;"> Update Product </a></h5>
    </div>
</div>
<%--${product.category.categoryID == 1 ? "checked" : ""}--%>

<div class="container" style="margin-top: 50px; margin-bottom: 50px;">

    <section class="panel panel-default" style="margin-left: -150px;">

        <div class="panel-body" style="margin-left: 250px;">

            <form action="update" method="post" enctype="multipart/form-data" class="form-horizontal" role="form">

                <input type="text" id="country" name="id" value="${product.productID}" readonly style="font-weight: bold; margin-left: -90px; margin-bottom: 30px;">
                <div style="margin-left: -90px;">
                    <div class="form-group" style="margin-bottom: 20px;">
                        <label for="name" class="col-sm-3 control-label" style="font-weight: bold; font-size: 24px;">Product
                            name:</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" name="productName" id="name"
                                   placeholder="   Product Name"
                                   value="${product.productName}"
                                   style="width: 400px; height: 30px; margin-top: 10px; margin-bottom: 10px; border-radius: 5px;">
                        </div>
                    </div> <!-- form-group // -->

                    <!---------------------------------------------------------->
                    <div class="chon_cate">
                        <div class="radio-tile-group" style="margin-left: 400px; margin-top: -637px; z-index: 4;">
                            <label style="font-weight: bold; font-size: 24px; margin-top: 50px;">Category:</label>
                            <div class="input-container"
                                 style="width: 60px; height:60px; margin-left: 30px; margin-top: 70px; cursor: pointer;">
                                <input id="phone"  class="radio-button" type="radio" name="category" ${product.category.categoryID == 1 ? "checked" : ""} value="1"/>
                                <div class="radio-tile" style="width: 30px; height: 30px;">

                                    <label for="phone" class="radio-tile-label">Phone</label>
                                </div>
                            </div>

                            <div class="input-container"
                                 style="width: 60px; height:60px; margin-left: 10px; margin-top: 70px; cursor: pointer;">
                                <input id="tablet" class="radio-button" type="radio" name="category" ${product.category.categoryID == 2 ? "checked" : ""} value="2"/>
                                <div class="radio-tile" style="width: 30px; height: 30px;">

                                    <label for="tablet" class="radio-tile-label">Tablet</label>
                                </div>
                            </div>

                            <div class="input-container"
                                 style="width: 60px; height:60px; margin-left: 10px; margin-top: 70px; cursor: pointer;">
                                <input id="laptop" class="radio-button" type="radio" name="category" ${product.category.categoryID == 3 ? "checked" : ""} value="3"/>
                                <div class="radio-tile" style="width: 30px; height: 30px;">

                                    <label for="laptop" class="radio-tile-label">Laptop</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-------------------------------->
                    <div style="display: flex;">
                        <div class="form-group" style="margin-bottom: 30px; margin-top: -649px;">
                            <label for="price" class="col-sm-3 control-label"
                                   style="font-weight: bold; font-size: 24px; margin-bottom: 20px;">Price:</label>
                            <div class="col-sm-9">
                                <input type="number" class="form-control" name="price" id="price" placeholder="   Price"
                                       value="${product.productPrice}"
                                       style="width: 400px; height: 30px; margin-top: 10px; margin-bottom: 10px; border-radius: 5px;">
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div style="margin-bottom: 20px; margin-top: -529px; ">
                            <label for="quantity" class="col-sm-3 control-label"
                                   style="font-weight: bold; font-size: 24px; margin-bottom: 20px;">Quantity:</label>
                            <div class="col-sm-9">
                                <input type="number" class="form-control" name="quantity" id="quantity"
                                       placeholder="   Quantity"
                                       value="${product.quantity}"
                                       style="width: 400px; height: 30px; margin-top: 10px; margin-bottom: 10px; border-radius: 5px;">
                            </div>
                        </div>
                        <div class="form-group" style="margin-top: 30px;">
                            <label for="file_img" class="col-sm-3 control-label"
                                   style="font-weight: bold; font-size: 24px; margin-bottom: 20px;">Product
                                image:</label>
                            <div class="col-sm-3">
                                <label class="control-label small" for="file_img">Upload image (jpg/png):</label>
                                <input type="file" name="file_img" id="file_img"
                                       style="margin-top: 10px; margin-bottom: 10px; border-radius: 5px;">
                            </div>
                        </div>
                    </div>
                    <!-- form-group // -->
                    <div class="col-sm-offset-3 col-sm-9" style="margin-top: 34px; display: flex;margin-left: -100px;flex-direction: row">
                        <button type="submit" class="btn btn-primary" style="background-color: #B8E1FF; border-color: #B8E1FF;
                                margin-left: 720px; height: 46px; border-radius: 10px; font-weight: bold; color: black; font-size: 20px;cursor: pointer;
                                margin-top: -155px; padding: 0 42px 0 42px;" onclick="showMessage()">Update</button>


                        <button style="background-color: #B8E1FF; border-color: #B8E1FF; margin-left: 20px; height: 46px;
                                border-radius: 10px; font-weight: bold; color: black; font-size: 20px;;cursor: pointer; margin-top: -155px; padding: 0 42px 0 42px;">
                            <a href="${pageContext.request.contextPath}/productManagement" style="color: black; text-decoration: none;">Return</a></button>
                    </div>
                </div>
            </form>
        </div><!-- panel-body // -->
    </section><!-- panel// -->
</div> <!-- container// -->

<!--------------------------------------->
<%@include file="../layout/footer.jsp" %>

</body>
<script>
    function showMessage(){
        alert("Success");
    }
</script>
