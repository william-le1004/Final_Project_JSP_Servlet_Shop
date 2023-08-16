<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/style.min.css">
        <link rel="stylesheet" href="../css/style.css">

        <script src="../js/app.js"></script>              

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

            .title  {
                margin-left: 543px;
            }

            .category_text a {
                color: black;
                text-decoration: none;
            }

            .category_text_1 {
                padding-left: 100px;
                margin-left: 238px;
                -webkit-transition-duration: 0.4s; /* Safari */  transition-duration: 0.4s;


            }

            .category_text_2{
                padding-left: 230px;
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

            .show_more_button
            {
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

        </style>

        <title>Home Page</title>
    </head>     


    <body>
        <%@include file="Header.jsp" %>

        <!--------------------------------------------------------------------->

        <div class="banner" style="margin-top: 100px; margin-bottom: 30px;">
            <img src="../Image/banner.jpg" >
        </div>

        <!----------END BANNER------------------------------------------------------------->



        <div class="title">
            <h2">CATEGORY</h2>

        </div>

        <!--------------------------------------------------------------------->

        <div class="category">
            <div class="category_picture">
                <a href="#"><img src="../Image/phone_cate.jpg"></a>
                <a href="#"><img src="../Image/laptop_cate.jpg"></a>
                <a href="#"><img src="../Image/tablet_cate.jpg"></a>
            </div>

            <div class="category_text">
                <a href="#"><span class="category_text_1">Phone</span></a>
                <a href="#"><span class="category_text_2">Laptop</span></a>
                <a href="#"><span class="category_text_3">Tablet</span></a>

            </div>


            <!--------------------------------------------------------------------->



            <section class="page__products products">
                <div class="products__container _container">
                    <h2 class="products__title _title" style="margin-left: -50px; margin-top: 50px;">OUR PRODUCTS</h2>
                    <div class="products__items">
                        <div class="products__item item-product" data-pid="1">
                            <div class="item-product__labels">

                            </div>
                            <a class="item-product__img _ibg" href="">
                                <picture>
                                    <img src="../Image/iphone14.webp" alt="iphone14"></picture>
                            </a>
                            <div class="item-product__body">
                                <div class="item-product__content">
                                    <h5 class="item-product__title">Iphone 14 Pro Max</h5>
                                    <div class="item-product__text">Phone</div>
                                </div>
                                <div class="item-product__prices">
                                    <div class="item-product__price">26.000.000 VND</div>
                                </div>
                                <div class="item-product__actions actions-product">
                                    <div class="actions-product__body">
                                        <a class="actions-product__btn btn btn_white" href="">Add to cart</a>
                                        <a class="actions-product__link _icon-share" href="">Share</a>
                                        <a class="actions-product__link _icon-favorite" href="">Like</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="products__item item-product" data-pid="2">
                            <div class="item-product__labels">

                            </div>
                            <a class="item-product__img _ibg" href="">
                                <picture>
                                    <img src="../Image/ipad_pro.jpg" alt="product"></picture>
                            </a>
                            <div class="item-product__body">
                                <div class="item-product__content">
                                    <h5 class="item-product__title">Ipad Pro M2</h5>
                                    <div class="item-product__text">Tablet</div>
                                </div>
                                <div class="item-product__prices">
                                    <div class="item-product__price">20.000.000 VND</div>
                                </div>
                                <div class="item-product__actions actions-product">
                                    <div class="actions-product__body">
                                        <a class="actions-product__btn btn btn_white" href="">Add to cart</a>
                                        <a class="actions-product__link _icon-share" href="">Share</a>
                                        <a class="actions-product__link _icon-favorite" href="">Like</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="products__item item-product" data-pid="3">
                            <div class="item-product__labels">

                            </div>
                            <a class="item-product__img _ibg" href="">
                                <picture>
                                    <img src="../Image/s23_ultra.webp" alt="product"></picture>
                            </a>
                            <div class="item-product__body">
                                <div class="item-product__content">
                                    <h5 class="item-product__title">Samsung S23 Ultra</h5>
                                    <div class="item-product__text">Phone</div>
                                </div>
                                <div class="item-product__prices">
                                    <div class="item-product__price">25.000.000 VND</div>
                                </div>
                                <div class="item-product__actions actions-product">
                                    <div class="actions-product__body">
                                        <a class="actions-product__btn btn btn_white" href="">Add to cart</a>
                                        <a class="actions-product__link _icon-share" href="">Share</a>
                                        <a class="actions-product__link _icon-favorite" href="">Like</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="products__item item-product" data-pid="4">
                            <div class="item-product__labels">
                                <div class="item-product__label item-product__label_new">New</div>
                            </div>
                            <a class="item-product__img _ibg" href="">
                                <picture>
                                    <img src="../Image/macbook_air.jpg" alt="product"></picture>
                            </a>
                            <div class="item-product__body">
                                <div class="item-product__content">
                                    <h5 class="item-product__title">MacBook Air 15 inch</h5>
                                    <div class="item-product__text">Laptop</div>
                                </div>
                                <div class="item-product__prices">
                                    <div class="item-product__price">32.000.000 VND</div>
                                </div>
                                <div class="item-product__actions actions-product">
                                    <div class="actions-product__body">
                                        <a class="actions-product__btn btn btn_white" href="">Add to cart</a>
                                        <a class="actions-product__link _icon-share" href="">Share</a>
                                        <a class="actions-product__link _icon-favorite" href="">Like</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="products__footer">
                        <a class="products__more btn btn_white" href="" style="border-color: #B88E2F; color: #B88E2F; font-weight: bold;">Show More</a>
                    </div>
                </div>
            </section>

            <!---------------------------------------------------------->
            <section class="page__furniture furniture" style="margin-bottom: -50px;">
                <div class="furniture__container">

                    <h2 class="furniture__title _title" style="margin-top: 20px;">RELATED SHOP</h2>
                    <div class="furniture__label">Furniture shop</div>
                    <div class="furniture__body" data-speed="0.01">
                        <div class="furniture__items _gallery">
                            <div class="furniture__column">
                                <div class="furniture__row row-furniture row-furniture_left-top">
                                    <a class="row-furniture__item" href="img/furniture/09.jpg">
                                        <picture>
                                            <img src="../img/furniture/09.jpg?_v=1630043180668" alt="image"></picture>
                                    </a>
                                    <a class="row-furniture__item" href="../img/furniture/01.jpg">
                                        <picture>
                                            <img src="../img/furniture/01.jpg?_v=1630043180668" alt="image"></picture>
                                    </a>
                                    <a class="row-furniture__item" href="../img/furniture/02.jpg">
                                        <picture>
                                            <img src="../img/furniture/02.jpg?_v=1630043180668" alt="image"></picture>
                                    </a>
                                </div>
                                <div class="furniture__row row-furniture row-furniture_left-bottom">
                                    <a class="row-furniture__item" href="../img/furniture/04.jpg">
                                        <picture>
                                            <img src="../img/furniture/04.jpg?_v=1630043180668" alt="image"></picture>
                                    </a>
                                    <a class="row-furniture__item" href="../img/furniture/06.jpg">
                                        <picture>
                                            <img src="../img/furniture/06.jpg?_v=1630043180668" alt="image"></picture>
                                    </a>
                                    <a class="row-furniture__item" href="../img/furniture/07.jpg">
                                        <picture>
                                            <img src="../img/furniture/07.jpg?_v=1630043180668" alt="image"></picture>
                                    </a>
                                </div>
                            </div>
                            <div class="furniture__column">
                                <div class="furniture__row row-furniture row-furniture_center">
                                    <a class="row-furniture__item" href="../img/furniture/03.jpg">
                                        <picture>
                                            <img src="../img/furniture/03.jpg?_v=1630043180668" alt="image"></picture>
                                    </a>
                                </div>
                            </div>
                            <div class="furniture__column">
                                <div class="furniture__row row-furniture row-furniture_right-top">
                                    <a class="row-furniture__item" href="../img/furniture/04.jpg">
                                        <picture>
                                            <img src="../img/furniture/04.jpg?_v=1630043180668" alt="image"></picture>
                                    </a>
                                    <a class="row-furniture__item" href="../img/furniture/05.jpg">
                                        <picture>
                                            <img src="../img/furniture/05.jpg?_v=1630043180668" alt="image"></picture>
                                    </a>
                                    <a class="row-furniture__item" href="../img/furniture/01.jpg">
                                        <picture>
                                            <img src="../img/furniture/01.jpg?_v=1630043180668" alt="image"></picture>
                                    </a>
                                </div>
                                <div class="furniture__row row-furniture row-furniture_right-bottom">
                                    <a class="row-furniture__item" href="../img/furniture/08.jpg">
                                        <picture>
                                            <img src="../img/furniture/08.jpg?_v=1630043180668" alt="image"></picture>
                                    </a>
                                    <a class="row-furniture__item" href="../img/furniture/09.jpg">
                                        <picture>
                                            <img src="../img/furniture/09.jpg?_v=1630043180668" alt="image"></picture>
                                    </a>
                                    <a class="row-furniture__item" href="../img/furniture/06.jpg">
                                        <picture>
                                            ><img src="../img/furniture/06.jpg?_v=1630043180668" alt="image"></picture>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!--------------------------------------------------------------------->
            <%@include file="Footer.jsp" %>
    </body>
</html>
