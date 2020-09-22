<%--
  Created by IntelliJ IDEA.
  User: phama
  Date: 9/22/2020
  Time: 8:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sorted List</title>
</head>
<body>
    <h1><a href="/users">Back to list</a> </h1>
    <table border="1">
        <h2>Sorted List</h2>
        <tr>
            <td>Name</td>
            <td>Email</td>
            <td>Country</td>
        </tr>
        <c:forEach var="user" items='${requestScope["sortedList"]}'>
            <tr>
                <td>${user.getName()}</td>
                <td>${user.getEmail()}</td>
                <td>${user.getCountry()}</td>
            </tr>
        </c:forEach>

    </table>

</body>
</html>
