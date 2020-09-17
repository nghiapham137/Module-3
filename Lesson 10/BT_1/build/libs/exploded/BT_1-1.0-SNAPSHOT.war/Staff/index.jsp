<%--
  Created by IntelliJ IDEA.
  User: phama
  Date: 9/17/2020
  Time: 8:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
<%--    <meta charset="UTF-8">--%>
    <title>$Title$</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
  </head>
  <body>
    <div class="container">
      <div class="row">
        <h1>Customer Management</h1>
        <table class="table table-hover table-bordered" border="1">
          <thead>
            <tr>
              <th>Name</th>
              <th>Date of Birth</th>
              <th>Address</th>
              <th>Image</th>
            </tr>
          </thead>
          <tbody>
          <c:forEach var="item" items="${customerList}" varStatus="loop">
            <tr>
              <td>${item.name}</td>
              <td>${item.birthday}</td>
              <td>${item.address}</td>
              <td><img class="img-fluid" src="${item.imageUrl}"></td>
            </tr>
          </c:forEach>
          </tbody>
        </table>
      </div>
    </div>
  </body>
</html>
