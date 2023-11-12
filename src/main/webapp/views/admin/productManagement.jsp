<%-- 
    Document   : productManagement
    Created on : Aug 17, 2023, 10:59:34 AM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="icon" href="./Image/cr7.jpg">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
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

<%@include file="../admin/checkSession.jsp" %>

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
        <button style="border-radius: 10px; width: 200px; height: 40px; background-color: #B88E2F; cursor: pointer;">
            <a class="btn"
               href="${pageContext.request.contextPath}/addProduct" style="color: white; font-weight: bold;">Add
                product</a>
        </button>
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
            <td>${x.quantity}</td>
            <td>$${x.productPrice}</td>
                <%--            <td><a href="${pageContext.request.contextPath}/editNews?id=${x.id}">Edit</a></td>--%>
            <td><a class="btn btn-primary" href="${pageContext.request.contextPath}/update?id=${x.productID}">Edit</a>
            </td>
            <td><a class="btn btn-danger" href="#" onclick="showMessage(${x.productID})">Delete</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<nav aria-label="Page navigation example">
    <ul class="pagination justify-content-center">
        <c:if test="${tag > 1}">
            <li class="page-item">
                <a class="page-link"
                   href="${pageContext.request.contextPath}/productManagement?positionPage=${tag-1}">Previous</a>
            </li>
        </c:if>

        <c:forEach begin="1" end="${endP}" var="i">
            <li class="page-item">
                <a class="page-link ${tag == i ? "active" : ""}"
                   href="${pageContext.request.contextPath}/productManagement?positionPage=${i}">${i}</a>
            </li>
        </c:forEach>

        <c:if test="${tag < 1}">
            <li class="page-item">
                <a class="page-link" href="${pageContext.request.contextPath}/productManagement?positionPage=${tag+1}">Next</a>
            </li>
        </c:if>
    </ul>
</nav>

<!--------------------------------------->
<%@include file="../layout/footer.jsp" %>
</body>
<script>
    function showMessage(id) {
        var option = confirm("Are you sure to delete");
        if (option === true) {
            window.location.href = 'deleteProduct?id=' + id;
        }
    }
</script>

