<%--
  Created by IntelliJ IDEA.
  User: phama
  Date: 9/20/2020
  Time: 4:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deleting product</title>
</head>
<body>
<h1>Delete product</h1>
<p>
    <c:if test='${requestScope["message"]!= null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/products">Back to product list</a>
</p>
<form method="post">
    <h3>Are you sure?</h3>
    <fieldset>
        <legend>Product information</legend>
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
            <tr>
                <td><input type="submit" value="Delete"></td>
                <td><a href="/products">Back to list</a></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
