<%--
  Created by IntelliJ IDEA.
  User: phama
  Date: 9/17/2020
  Time: 9:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Dictionary</title>
  </head>
  <body>
    <h2>Vietnamese Dictionary</h2>
    <form method="post" action="/translate">
      <input type="text" name="txtSearch" placeholder="Enter your word">
      <input type="submit" id="submit" value="Search">
    </form>
  </body>
</html>
