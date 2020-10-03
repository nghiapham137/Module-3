<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: phama
  Date: 10/2/2020
  Time: 10:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View city detail</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <form method="post" action="/City?action=delete&id=${city.id}">
            <h1>Thành phố ${city.cityName}</h1>
            <a class="btn btn-primary" href="/City" role="button">Xem danh sách thành phố</a>
            <br>
            <p>Tên: ${city.cityName}</p>
            <p>Quốc gia: ${city.country.getCountryName()}</p>
            <p>Diện tích: ${city.area}</p>
            <p>Dân số: ${city.population}</p>
            <p>GDP: ${city.GDP}</p>
            <p>Giới thiệu: </p>
            <p>${city.description}</p>
            <a class="btn btn-primary" href="/City?action=edit&id=${city.id}" role="button">Chỉnh sửa</a>
            <button type="submit" class="btn btn-danger"  role="button">Xóa</button>
        </form>


    </div>


</body>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</html>
