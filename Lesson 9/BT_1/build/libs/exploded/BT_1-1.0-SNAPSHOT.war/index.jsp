<%--
  Created by IntelliJ IDEA.
  User: phama
  Date: 9/17/2020
  Time: 2:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Discount Calculator</title>
  </head>
  <body>
    <form method="post" action="/caculator">
      <h2>Discount Calculator</h2>
      <label>Product Description</label><br>
      <input type="text" name="txtDescription" placeholder="Description"><br>
      <label>List Price</label><br>
      <input type="text" name="txtPrice" placeholder="Price"><br>
      <label>Discount Percent</label><br>
      <input type="text" name="txtPercent" placeholder="Percent"><br>
      <input type="submit" id="submit" value="Calculate Discount">
    </form>


  </body>
</html>
