<%--
  Created by IntelliJ IDEA.
  User: phama
  Date: 9/21/2020
  Time: 9:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search Form</title>
</head>
<body>
<h1>Product details</h1>
<p>
    <a href="/products">Back to list</a>
</p>
<form method="post">
    <table>
        <tr>
            <td>Product Name: </td>
            <td>${requestScope["product"].getProductName()}</td>
        </tr>
        <tr>
            <td>Price: </td>
            <td>${requestScope["product"].getPrice()}</td>
        </tr>
        <tr>
            <td>Description: </td>
            <td>${requestScope["product"].getDescription()}</td>
        </tr>
        <tr>
            <td>Maker: </td>
            <td>${requestScope["product"].getMaker()}</td>
        </tr>
    </table>
</form>


</body>
</html>
