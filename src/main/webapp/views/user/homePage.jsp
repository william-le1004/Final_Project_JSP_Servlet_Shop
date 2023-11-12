<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="icon" href="./Image/cr7.jpg">
    <%--    <link rel="stylesheet" href="./css/style.min.css">--%>
    <%--    <link rel="stylesheet" href="./css/style.css">--%>
    <link rel="icon" href="./Image/cr7.jpg">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <script src="./js/app.js"></script>

    <style>
        .title h1 {
            border: 0px none;
            height: 48px;
            width: 300px;

            font-size: 32px;
            font-weight: 700;
            margin-left: 543px;

        }

        .treating-all-skin-co {
            margin-left: 460px;

            font-size: 20px;
            font-style: normal;
            font-weight: 400;
            color: var(--font-color-1, #666);
        }

        .category {
            margin-left: 39px;
            margin-bottom: 30px;

        }

        .category_picture {
            display: flex;
            margin-left: 180px;
            margin-top: 50px;
        }

        .category_picture img {
            width: 280px;
            height: 200px;
            flex-shrink: 0;
            padding-left: 100px;

        }

        .category_text {
            display: flex;
            margin-top: 30px;

            font-size: 20px;
            font-style: normal;
            font-weight: 700;
        }

        .title {
            margin-left: 600px;
        }

        .category_text a {
            color: black;
            text-decoration: none;
        }

        .category_text_1 {
            padding-left: 100px;
            margin-left: 238px;
            -webkit-transition-duration: 0.4s; /* Safari */
            transition-duration: 0.4s;


        }

        .category_text_2 {
            padding-left: 220px;
        }

        .category_text_3 {
            padding-left: 218px;
        }


        .product_title h1 {
            border: 0px none;
            height: 48px;
            width: 300px;

            font-size: 32px;
            font-weight: 700;
            margin-left: 510px;
            margin-top: 50px;
        }

        .product_1 {
            margin-left: 70px;
        }

        .product_1 img {
            display: flex;
            flex-direction: column;
            border: 2px solid var(--font-color-1, #666);
            border-radius: 10px;
        }

        #product_1_image {
            width: 250px;
            height: 250px;

        }

        #product_1_textbox {
            width: 250px;
            height: 100px;
        }

        .show_more_button {
            margin-top: 50px;
            margin-left: 510px;
        }

        .show_more_button button {
            width: 245px;
            height: 48px;
            color: #B88E2F;
            font-size: 16px;
            font-weight: 600;
            font-family: "Poppins-Bold", Helvetica;
            border: 1px solid #B88E2F;
            background-color: white;
            cursor: pointer;

        }


        .container {
            max-width: 1200px;
            margin: 0 auto;
            text-align: center;
            padding: 25px 20px;
        }

        .container .heading {
            font-size: 40px;
            margin-bottom: 20px;
            color: #334;
        }

        .container .box-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 20px;
        }


        .container .box-container .box {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 5px 10px rgba(0, 0, 0, .2);
            display: none;
        }

        .container .box-container .box:nth-child(1),
        .container .box-container .box:nth-child(2),
        .container .box-container .box:nth-child(3),
        .container .box-container .box:nth-child(4) {
            display: inline-block;
        }

        .container .box-container .box .image {
            margin-bottom: 20px;
            overflow: hidden;
            height: 250px;
            border-radius: 5px;
        }

        .container .box-container .box .image img {
            height: 100%;
            width: 100%;
            object-fit: cover;
        }

        .container .box-container .box:hover .image img {
            transform: scale(1.1);
        }

        .container .box-container .box .content h3 {
            font-size: 20px;
            color: #334;
        }

        .container .box-container .box .content p {
            font-size: 15px;
            color: #777;
            line-height: 2;
            padding: 15px 0;
        }

        .container .box-container .box .content .btn {
            display: inline-block;
            padding: 10px 30px;
            border: 1px solid #334;
            color: #334;
            font-size: 16px;
        }

        .container .box-container .box .content .btn:hover {
            background-color: #B88E2F;
            border-color: #B88E2F;
            color: #fff;
        }

        .container .box-container .box .content .icons {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-top: 20px;
            padding-top: 15px;
            border-top: 1px solid #334;
        }

        .container .box-container .box .content .icons span {
            font-size: 14px;
            color: #777;
        }

        .container .box-container .box .content .icons span i {
            color: crimson;
            padding-right: 5px;
        }

        #load-more {
            margin-top: 20px;
            display: inline-block;
            padding: 13px 30px;
            border: 1px solid #334;
            color: #334;
            font-size: 16px;
            background-color: #fff;
            cursor: pointer;
        }

        #load-more:hover {
            background-color: crimson;
            border-color: crimson;
            color: #fff;
        }

        @media (max-width: 450px) {

            .container .heading {
                font-size: 25px;
            }

            .container .box-container {
                grid-template-columns: 1fr;
            }

            .container .box-container .box .image {
                height: 200px;
            }

            .container .box-container .box .content p {
                font-size: 12px;
            }

            .container .box-container .box .content .icons span {
                font-size: 12px;
            }

        }
    </style>

    <title>Home Page</title>
</head>


<body>
<!-------------------Header---------------------------->
<%@include file="/views/layout/header.jsp" %>
<!-------------------Header---------------------------->
<div style="width: 100%;">
    <div class="banner" style="margin-top: 100px; margin-bottom: 30px;">
        <img src="${pageContext.request.contextPath}/Image/banner2.jpg" style="width: 100%;margin-top: -60px;" alt="">
    </div>

    <!----------END BANNER------------------------------------------------------------->


    <div class="title">
        <h2 style="margin-top: 20px; font-weight: bold; font-size: 44px; margin-left: 27px;">Product</h2>
    </div>

    <!--------------------------------------------------------------------->


    <div class="container">


        <div class="box-container">

            <!------------------------------------------------------>


            <c:forEach items="${productList}" var="o">
                <div class="box" style="height: 500px;">
                    <div class="image">
                        <img src="./images/${o.productImg}" style="width: 200px; height: 200px; margin-top: 20px;">
                    </div>
                    <div class="content">
                        <h3 style="font-weight: bold">${o.productName}</h3>
                        <p style="margin-top: -14px;">${o.category.categoryName}</p>
                        <p style="margin-top: -40px; color: #B88E2F; font-weight: bold; font-size: 20px;">
                            $${o.productPrice}</p>

                        <!-- NHẤN VÀO READ MORE ĐỂ ĐI ĐẾN TRANG DETAIL PAGE CỦA TỪNG SẢN PHẨM NHA -->
                        <a href="${pageContext.request.contextPath}/detail?id=${o.productID}&product_name?=${o.productName}"
                           class="btn" style="font-weight: bold;">
                            <i class="bi bi-info-circle"></i> Read more </a>

                    </div>
                </div>
            </c:forEach>

        </div>
        <div id="load-more"
             style="margin-top: 60px; border-radius: 10px; font-weight: bold; color: white; background-color: #B88E2F; border-color: #B88E2F;">
            Load more
        </div>


        <script>

            let loadMoreBtn = document.querySelector('#load-more');
            let currentItem = 4;

            loadMoreBtn.onclick = () => {
                let boxes = [...document.querySelectorAll('.container .box-container .box')];
                for (var i = currentItem; i < currentItem + 4; i++) {
                    if (boxes[i] != null) {
                        boxes[i].style.display = 'inline-block';
                    }
                }
                console.log(currentItem, boxes.length);
                console.log(loadMoreBtn);
                currentItem += 4;

                if (currentItem >= boxes.length) {
                    loadMoreBtn.style.display = 'none';
                }
            }

        </script>
        <!--------------------------------------------------------------------->


        <!---------------------------------------------------------->
        <section class="page__furniture furniture"
                 style="margin-bottom: -50px; margin-top: 100px;">
            <div class="furniture__container">

                <h2 class="furniture__title _title"
                    style="margin-top: 20px; font-size: 44px; font-weight: bold;">RELATED
                    SHOP</h2>
                <div class="furniture__label"
                     style="font-size: 38px; margin-bottom: 48px;">Furniture
                    shop
                </div>
                <div class="furniture__body" data-speed="0.01">
                    <div class="furniture__items _gallery"
                         style="margin-bottom: 70px;">
                        <div class="furniture__column">
                            <div
                                    class="furniture__row row-furniture row-furniture_left-top">
                                <a class="row-furniture__item"
                                   href="img/furniture/09.jpg">
                                    <picture>
                                        <img
                                                src="./img/furniture/09.jpg?_v=1630043180668"
                                                alt="image"></picture>
                                </a>
                                <a class="row-furniture__item"
                                   href="./img/furniture/01.jpg">
                                    <picture>
                                        <img
                                                src="./img/furniture/01.jpg?_v=1630043180668"
                                                alt="image"></picture>
                                </a>
                                <a class="row-furniture__item"
                                   href="./img/furniture/02.jpg">
                                    <picture>
                                        <img
                                                src="./img/furniture/02.jpg?_v=1630043180668"
                                                alt="image"></picture>
                                </a>
                            </div>
                            <div
                                    class="furniture__row row-furniture row-furniture_left-bottom">
                                <a class="row-furniture__item"
                                   href="./img/furniture/04.jpg">
                                    <picture>
                                        <img
                                                src="./img/furniture/04.jpg?_v=1630043180668"
                                                alt="image"></picture>
                                </a>
                                <a class="row-furniture__item"
                                   href="./img/furniture/06.jpg">
                                    <picture>
                                        <img
                                                src="./img/furniture/06.jpg?_v=1630043180668"
                                                alt="image"></picture>
                                </a>
                                <a class="row-furniture__item"
                                   href="./img/furniture/07.jpg">
                                    <picture>
                                        <img
                                                src="./img/furniture/07.jpg?_v=1630043180668"
                                                alt="image"></picture>
                                </a>
                            </div>
                        </div>
                        <div class="furniture__column">
                            <div
                                    class="furniture__row row-furniture row-furniture_center">
                                <a class="row-furniture__item"
                                   href="./img/furniture/03.jpg">
                                    <picture>
                                        <img
                                                src="./img/furniture/03.jpg?_v=1630043180668"
                                                alt="image"></picture>
                                </a>
                            </div>
                        </div>
                        <div class="furniture__column">
                            <div
                                    class="furniture__row row-furniture row-furniture_right-top">
                                <a class="row-furniture__item"
                                   href="./img/furniture/04.jpg">
                                    <picture>
                                        <img
                                                src="./img/furniture/04.jpg?_v=1630043180668"
                                                alt="image"></picture>
                                </a>
                                <a class="row-furniture__item"
                                   href="./img/furniture/05.jpg">
                                    <picture>
                                        <img
                                                src="./img/furniture/05.jpg?_v=1630043180668"
                                                alt="image"></picture>
                                </a>
                                <a class="row-furniture__item"
                                   href="./img/furniture/01.jpg">
                                    <picture>
                                        <img
                                                src="./img/furniture/01.jpg?_v=1630043180668"
                                                alt="image"></picture>
                                </a>
                            </div>
                            <div
                                    class="furniture__row row-furniture row-furniture_right-bottom">
                                <a class="row-furniture__item"
                                   href="./img/furniture/08.jpg">
                                    <picture>
                                        <img
                                                src="./img/furniture/08.jpg?_v=1630043180668"
                                                alt="image"></picture>
                                </a>
                                <a class="row-furniture__item"
                                   href="./img/furniture/09.jpg">
                                    <picture>
                                        <img
                                                src="./img/furniture/09.jpg?_v=1630043180668"
                                                alt="image"></picture>
                                </a>
                                <a class="row-furniture__item"
                                   href="./img/furniture/06.jpg">
                                    <picture>
                                        ><img
                                            src="./img/furniture/06.jpg?_v=1630043180668"
                                            alt="image"></picture>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>
<!-------------------Footer---------------------------->
<%@include file="/views/layout/footer.jsp" %>
<!-------------------Footer---------------------------->

</body>
