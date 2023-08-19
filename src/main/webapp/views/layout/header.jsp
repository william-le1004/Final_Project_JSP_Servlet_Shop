<%--
Document   : Header
Created on : Aug 11, 2023, 2:13:11 PM
Author     : Administrator
--%>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
          integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <style>

        * {
            font-family: "Poppins-Medium", Helvetica;

        }

        .header {
            background-color: #ffffff;
            height: 100px;
            width: 1440px;
            z-index: 10;
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


        .searchbar {
            margin-bottom: auto;
            margin-top: auto;
            height: 30px;
            background-color: white;
            border-radius: 30px;
            padding: 10px;
            margin-left: 972px;
            z-index: 3
        }

        .search_input {
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

        .searchbar:hover > .search_input {
            padding: 0 10px;
            width: 262px;
            caret-color: #B88E2F;
            transition: width 0.4s linear;
            margin-left: -6px;
            margin-top: -300px;

        }

        .searchbar:hover > .search_icon {
            background: white;
            color: white;
        }

        .search_icon {
            height: 40px;
            width: 40px;
            float: right;
            display: flex;
            justify-content: center;
            align-items: center;
            border-radius: 50%;
            color: white;
            text-decoration: none;
            margin-top: -13px;
            margin-left: -2px;
        }


        .container {
            width: 1000px;
            margin: auto;
            transition: 0.5s;
        }

        header {
            display: grid;
            grid-template-columns: 1fr 50px;
            margin-top: 50px;
        }

        header .shopping {
            position: relative;
            text-align: right;
        }

        header .shopping img {
            width: 40px;
        }

        header .shopping span {
            background: red;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #fff;
            position: absolute;
            top: -5px;
            left: 80%;
            padding: 3px 10px;
        }

        .list {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            column-gap: 20px;
            row-gap: 20px;
            margin-top: 50px;
        }

        .list .item {
            text-align: center;
            background-color: #DCE0E1;
            padding: 20px;
            box-shadow: 0 50px 50px #757676;
            letter-spacing: 1px;
        }

        .list .item img {
            width: 90%;
            height: 430px;
            object-fit: cover;
        }

        .list .item .title {
            font-weight: 600;
        }

        .list .item .price {
            margin: 10px;
        }

        .list .item button {
            background-color: #1C1F25;
            color: #fff;
            width: 100%;
            padding: 10px;
        }

        .card {
            position: fixed;
            top: 0;
            left: 100%;
            width: 500px;
            background-color: #F9F1E7;
            height: 100vh;
            transition: 0.5s;
            z-index: 3;
        }

        .active .card {
            left: calc(100% - 500px);
        }

        .active .container {
            transform: translateX(-200px);
        }

        .card h1 {
            color: #E8BC0E;
            font-weight: 100;
            margin: 0;
            padding: 0 20px;
            height: 80px;
            display: flex;
            align-items: center;
        }

        .card .checkOut {
            position: absolute;
            bottom: 0;
            width: 100%;
            display: grid;
            grid-template-columns: repeat(2, 1fr);

        }

        .card .checkOut div {
            background-color: black;
            width: 100%;
            height: 70px;
            display: flex;
            justify-content: center;
            align-items: center;
            font-weight: bold;
            cursor: pointer;
        }

        .card .checkOut div:nth-child(2) {
            background-color: black;
            color: #F9F1E7;
        }

        .listCard li {
            display: grid;
            grid-template-columns: 100px repeat(3, 1fr);
            color: #fff;
            row-gap: 10px;
        }

        .listCard li div {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .listCard li img {
            width: 90%;
        }

        .listCard li button {
            background-color: white;
            border: none;
        }

        .listCard .count {
            margin: 0 10px;
        }
    </style>

    <title>Header</title>
</head>

<%--fix path--%>
<body>
<div class="header">
    <div class="group">
        <div class="overlap-group">
            <div class="div">
                <div class="text-wrapper" style="z-index: 10;"><a
                        href="${pageContext.request.contextPath}/home">Home</a></div>
<%--                <div class="text-wrapper-2"><a href="${pageContext.request.contextPath}/shop?positionPage=1">Shop</a></div>--%>
                <div class="text-wrapper-2"><a href="${pageContext.request.contextPath}/shop">Shop</a></div>
                <div class="text-wrapper-3"><a href="${pageContext.request.contextPath}/blog">About</a></div>
                <div class="text-wrapper-4"><a href="${pageContext.request.contextPath}/contact">Contact</a></div>
            </div>


            <div class="group-2">
                <a href="${pageContext.request.contextPath}/login"><img class="mdi-account-alert"
                                                                        alt="Mdi account alert"
                                                                        src="./Image/mdi-account-alert-outline.svg"/></a>

                <div class="d-flex justify-content-center h-100" style="margin-top: -17px;">
                    <form class="searchbar" action="search" method="post">
                        <input class="search_input" type="text" name="searchResult" placeholder="Search..." required
                               autocomplete="off">
                        <button class="search-btn" type="submit">
                            <img src="./Image/akar-icons-search.svg" alt="">
                        </button>
                    </form>
                </div>


                <a href="./views/product/wishListPage.jsp"><img class="akar-icons-heart" alt="Akar icons heart"
                                                                src="./Image/akar-icons-heart.svg"/></a>
                <img class="ant-design-shopping" alt="Ant design shopping"
                     src="./Image/ant-design-shopping-cart-outlined.svg"/>


                <div class="frame_header">
                    <a href="${pageContext.request.contextPath}/home"><img class="meubel-house-logos"
                                                                           alt="Meubel house logos"
                                                                           src="./Image/meubel-house-logos-05.png"/></a>
                    <a href="${pageContext.request.contextPath}/home"><img class="skin-clinic" alt="Skin clinic"
                                                                           src="./Image/skin-clinic.png"/></a>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="container">


    <div class="list">

    </div>
</div>
<div class="card">
    <h1 style="color: black;">Card</h1>
    <ul class="listCard">
    </ul>
    <div class="checkOut">
        <div class="total" style="color: #F9F1E7;">0</div>
        <div class="closeShopping">Close</div>
    </div>
</div>

<script>
    let openShopping = document.querySelector('.ant-design-shopping');
    let closeShopping = document.querySelector('.closeShopping');
    let list = document.querySelector('.list');
    let listCard = document.querySelector('.listCard');
    let body = document.querySelector('body');
    let total = document.querySelector('.total');
    let quantity = document.querySelector('.quantity');

    openShopping.addEventListener('click', () => {
        body.classList.add('active');
    })
    closeShopping.addEventListener('click', () => {
        body.classList.remove('active');
    })

    let products = [];
    let listCards = [];

    function initApp() {
        products.forEach((value, key) => {
            let newDiv = document.createElement('div');
            newDiv.classList.add('item');
            newDiv.innerHTML = `
            <img src="image/${value.image}">
            <div class="title">${value.name}</div>
            <div class="price">${value.price.toLocaleString()}</div>
            <button onclick="addToCard(${key})">Add To Card</button>`;
            list.appendChild(newDiv);
        })
    }

    initApp();

    function addToCard(key) {
        if (listCards[key] == null) {
            // copy product form list to list card
            listCards[key] = JSON.parse(JSON.stringify(products[key]));
            listCards[key].quantity = 1;
        }
        reloadCard();
    }

    function reloadCard() {
        listCard.innerHTML = '';
        let count = 0;
        let totalPrice = 0;
        listCards.forEach((value, key) => {
            totalPrice = totalPrice + value.price;
            count = count + value.quantity;
            if (value != null) {
                let newDiv = document.createElement('li');
                newDiv.innerHTML = `
                <div><img src="image/${value.image}"/></div>
                <div>${value.name}</div>
                <div>${value.price.toLocaleString()}</div>
                <div>
                    <button onclick="changeQuantity(${key}, ${value.quantity - 1})">-</button>
                    <div class="count">${value.quantity}</div>
                    <button onclick="changeQuantity(${key}, ${value.quantity + 1})">+</button>
                </div>`;
                listCard.appendChild(newDiv);
            }
        })
        total.innerText = totalPrice.toLocaleString();
        quantity.innerText = count;
    }

    function changeQuantity(key, quantity) {
        if (quantity == 0) {
            delete listCards[key];
        } else {
            listCards[key].quantity = quantity;
            listCards[key].price = quantity * products[key].price;
        }
        reloadCard();
    }
</script>

</body>


</html>
