<%--
  Created by IntelliJ IDEA.
  User: phama
  Date: 9/18/2020
  Time: 9:38 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
  <head>
    <title>$Title$</title>
  </head>
  <body>
      <h1>Add Form</h1>
      <form method="post" action="list">
          <label>Customer Name:</label>
          <input type="text" name="name" placeholder="Name"><br>
          <label>Date of Birth:</label>
          <input type="text" name="dateOfBirth" placeholder="Date of Birth"><br>
          <label>Address</label>
          <input type="text" name="address" placeholder="Address"><br>
          <label>Image URL:</label>
          <input type="text" name="imageUrl" placeholder="Image URL"><br>
          <input type="submit" value="Add">
      </form>

  </body>
</html>
