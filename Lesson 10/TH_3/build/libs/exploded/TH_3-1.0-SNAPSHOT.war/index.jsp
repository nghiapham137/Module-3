<%--
  Created by IntelliJ IDEA.
  User: phama
  Date: 9/17/2020
  Time: 8:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
    <h2>Currency Converter</h2>
    <form action="/convert" method="get">
      <label>Amount:</label><br>
      <input type="text" name="amount" placeholder="VND"><br/>
<%--      <label>USD</label><br>--%>
<%--      <input type="text" name="usd" placeholder="USD"><br>--%>
      <input type="submit" id="submit" value="Convert">

    </form>
  </body>
</html>
