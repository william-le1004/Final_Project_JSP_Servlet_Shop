<%--
  Created by IntelliJ IDEA.
  User: huuth
  Date: 8/22/2023
  Time: 9:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error Page</title>
</head>
<body>
<div class="main">
    <section class="col-main" style="min-height: 665px">
        <h1 style="font-size: 35px;">ERROR PAGE</h1>
        <h2>

            <p style="font-size: 35px; color: red">
                ${requestScope.ERROR}
            </p>
        </h2>
        <a href="${pageContext.request.contextPath}/home">Back to Home Page</a>
</div>
</body>
</html>
