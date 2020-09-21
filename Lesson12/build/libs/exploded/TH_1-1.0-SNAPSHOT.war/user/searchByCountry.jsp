<%--
  Created by IntelliJ IDEA.
  User: phama
  Date: 9/21/2020
  Time: 10:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Searc By Country</title>
</head>
<body>
    <h1>User list</h1>
    <p>
        <a href="/users">Back to list</a>
    </p>
    <form method="post">
        <table border="1">
            <tr>
                <td>Id</td>
                <td>Name</td>
                <td>Email</td>
                <td>Country</td>
            </tr>
            <c:forEach var="user" items='${requestScope["listUsers"]}'>
                <tr>
                    <td>${user.getId()}</td>
                    <td>${user.getName()}</td>
                    <td>${user.getEmail()}</td>
                    <td>${user.getCountry()}</td>
                </tr>
            </c:forEach>
        </table>
    </form>


</body>
</html>
