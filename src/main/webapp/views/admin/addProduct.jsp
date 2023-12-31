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
            height: 316px;
            width: 1440px;
            background-image: url(${pageContext.request.contextPath}/Image/product_layout.webp);
            background-size: cover;
        }

        .text {
            color: black;
            position: absolute;
            left: 70px;

        }

        .text h1 {
            margin-top: 110px;
            margin-left: 450px;
            font-weight: bold;
        }

        .text h5 {
            margin-left: 500px;
        }

    </style>

    <title>Add Product</title>
</head>
<body>
<%@include file="../admin/checkSession.jsp" %>

<%@include file="../layout/adminHeader.jsp" %>
<!--------------------------------------->

<div class="content">
    <div class="text">
        <h1>ADD PRODUCT</h1>
        <h5><a href="AdminPage.jsp" style="color: black; text-decoration: none;"> Home </a> > <a href="addProduct.jsp"
                                                                                                 style="color: black; text-decoration: none;">
            Add product </a></h5>
    </div>
</div>


<div class="container" style="margin-top: 50px; margin-bottom: 50px; margin-left: 260px;">

    <section class="panel panel-default">

        <div class="panel-body" style="margin-left: 190px;">

            <form action="addProduct" method="post" enctype="multipart/form-data" class="form-horizontal" role="form">
                <div class="form-group" style="margin-bottom: 20px; margin-top: 20px;">
                    <label for="name" class="col-sm-3 control-label"
                           style="font-weight: bold; font-size: 20px; font-weight: bold;">Product name:</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" name="productName" id="name" placeholder="Product Name"
                               required autocomplete="off"
                               style="width: 400px; height: 40px; border-radius: 5px; margin-top: 20px;">
                    </div>
                </div> <!-- form-group // -->

                <div class="form-group" style="margin-left: 2px; margin-bottom: 20px; margin-top: 20px;">
                    <label class="radio-inline"
                           style="font-weight: bold; font-size: 20px;margin-top: 20px; ">Category:</label>
                    <div class="radio-inline">
                        <input type="radio" name="category" value="1"> Phone
                        <input type="radio" name="category" value="2"> Tablet
                        <input type="radio" name="category" value="3"> Laptop
                    </div>

                </div>
                <div class="form-group" style="margin-bottom: 20px; margin-top: 20px;">
                    <label for="price" class="col-sm-3 control-label"
                           style="font-weight: bold; font-size: 20px;">Price:</label>
                    <div class="col-sm-9" style="margin-bottom: 20px; margin-top: 20px;">
                        <input type="number" class="form-control" name="price" id="price" placeholder="Price"
                               required autocomplete="off" style="width: 400px; height: 40px; border-radius: 5px;">
                    </div>
                </div> <!-- form-group // -->

                <div class="form-group" style="margin-bottom: 20px; margin-top: 20px;">
                    <label for="quantity" class="col-sm-3 control-label" style="font-weight: bold; font-size: 20px;">Quantity:</label>
                    <div class="col-sm-9">
                        <input type="number" class="form-control" name="quantity" id="quantity" placeholder="Quantity"
                               required autocomplete="off"
                               style="width: 400px; height: 40px; border-radius: 5px; margin-top: 20px;">
                    </div>

                    <div class="form-group" style="margin-top: 20px; margin-bottom: 50px;">
                        <label for="file_img" class="col-sm-3 control-label"
                               style="font-weight: bold; font-size: 20px;">Product image:</label>
                        <div class="col-sm-3">
                            <label class="control-label small" id="file_img">Upload image (jpg/png):</label>
                            <input type="file" name="file_img" required autocomplete="off" style="margin-top: 10px;">
                        </div>

                    </div>


                    <hr style="margin-left: -800px; ">

                    <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-9">
                            <button type="submit" class="btn btn-primary" style="background-color: #B88E2F; border-color: #B88E2F; width: 200px;
                                    margin-left: 100px; margin-top: 20px; height: 46px; border-radius: 10px; font-weight: bold; color: white;
                                    font-size: 16px;">Add product
                            </button>
                        </div>
                    </div>
                </div><!-- form-group // -->

            </form>

        </div><!-- panel-body // -->
    </section><!-- panel// -->


</div> <!-- container// -->

<!--------------------------------------->
<%@include file="../layout/footer.jsp" %>

</body>
