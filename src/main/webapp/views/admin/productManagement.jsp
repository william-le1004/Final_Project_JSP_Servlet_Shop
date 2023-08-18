<%-- 
    Document   : productManagement
    Created on : Aug 17, 2023, 10:59:34 AM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
    <style>
        .content {
            height: 316px;
            width: 1440px;
            background-image: url(${pageContext.request.contextPath}/Image/backgound_login.jpg);
            background-size: cover;

        }

        .text {
            color: black;
            position: absolute;
            top: 10px;
            left: 70px;

        }

        .text h1 {
            margin-top: 160px;
            margin-left: 350px;
        }

        .text h5 {
            margin-left: 450px;
        }

    </style>


    <title>Product Management</title>
</head>
<body>

<%@include file="../layout/adminHeader.jsp" %>
<!--------------------------------------->

<div class="content">
    <div class="text">
        <h1>PRODUCT MANAGEMENT</h1>
        <h5><a href="${pageContext.request.contextPath}/admin" style="color: black; text-decoration: none;"> Admin
            Home </a> >
            <a href="${pageContext.request.contextPath}/productManagement" style="color: black; text-decoration: none;">
                Product Management </a></h5>
    </div>
</div>


<div class="action" style="display: flex; margin-left: 300px;">

    <div class="search_bar" style="margin-bottom: 30px; margin-top: 30px;">
        <input type="text" placeholder="Search for product here"
               style=" width: 400px; height: 40px; border-radius: 10px;">
        <button style="background-color: white; border-color: white; border-radius: 10px; cursor: pointer;"><img
                src="./Image/akar-icons-search.svg"></button>
    </div>

    <div class="add_product" style="margin-left: 100px; margin-top: 30px;">
        <button style="border-radius: 10px; width: 200px; height: 40px; background-color: #B88E2F; cursor: pointer;"><a
                href="${pageContext.request.contextPath}/addProduct" style="color: white; font-weight: bold;">Add product</a></button>
    </div>
</div>
<div>
    <p class="m-5" style="color: green">The Number Of Product : ${amountOfProduct}</p>
</div>
<table class="table table-striped m-5">
    <thead>
    <tr>
        <th>ID</th>
        <th>Product Name</th>
        <th>Category</th>
        <th>Image</th>
        <th>Quantity</th>
        <th>Price</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${productList}" var="x">
        <tr>
            <th scope="row">${x.productID}</th>
            <td>${x.productName}</td>
            <td>${x.category.categoryName}</td>
            <td><img style="height: 100px; width: 100px" src="./images/${x.productImg}" alt=""></td>
            <td>$${x.quantity}</td>
            <td>$${x.productPrice}</td>
<%--            <td><a href="${pageContext.request.contextPath}/editNews?id=${x.id}">Edit</a></td>--%>
            <td><a class="btn btn-danger" href="${pageContext.request.contextPath}/deleteProduct?id=${x.productID}">Delete</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<!--------------------------------------->
<%@include file="../layout/footer.jsp" %>
</body>
</html>
