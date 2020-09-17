<%--
  Created by IntelliJ IDEA.
  User: phama
  Date: 9/17/2020
  Time: 9:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
    <form action="/CustomerController?action=login" method="post">
        Email: <input type="text" name="username"/><br>
        Password: <input type="password" name="password"/><br>
        <input type="submit" value="Login">

    </form>

</body>
</html>
