<%--
  Created by IntelliJ IDEA.
  User: phama
  Date: 9/18/2020
  Time: 9:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Form</title>
</head>
<body>
<h1>Customer List</h1>
<div class="container">
    <table class="table" style="border: 1px solid black">
        <thead>
        <tr>
            <th>Name</th>
            <th>Date of birth</th>
            <th>Address</th>
            <th>Image</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="item" items="${customerList}" varStatus="loop">
            <tr>
                <td>${item.name}</td>
                <td>${item.dateOfBirth}</td>
                <td>${item.address}</td>
                <td><img src="${item.imageUrl}" style="height: 100px; width: 100px"></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
