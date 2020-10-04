<%--
  Created by IntelliJ IDEA.
  User: phama
  Date: 10/3/2020
  Time: 4:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Edit form</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <h1>Chỉnh sửa thành phố</h1>
    <br>
    <form method="post">
        <div class="form-group">
            <label for="id" hidden>id</label>
            <input type="text" class="form-control" id="id" placeholder="tên" name="id" required value="${city.id}" hidden>
        </div>
        <div class="form-group">
            <label for="name">Tên</label>
            <input type="text" class="form-control" id="name" placeholder="tên" name="name" required value="${city.cityName}">
        </div>
        <div class="form-group">
            <label for="country">Quốc gia</label>
            <select class="form-control" id="country" name="country">
                <c:forEach var="list" items="${countryList}">
                    <c:if test="${city.country.getCountryId() == list.countryId}">
                        <option value="${list.countryId}" selected><c:out value="${list.countryName}"/></option>
                    </c:if>
                        <option value="${list.countryId}"><c:out value="${list.countryName}"/></option>
                </c:forEach>
            </select>
        </div>
        <div class="form-group">
            <label for="area">Diện tích</label>
            <input type="number" step="any" pattern="[-+]?[0-9]*[.,]?[0-9]+" class="form-control" id="area" placeholder="diện tích" name="area" value="${city.area}" required>
        </div>
        <div class="form-group">
            <label for="population">Dân số</label>
            <input type="number" pattern="[-+]?[0-9]" class="form-control" id="population" placeholder="dân số" name="population" min="1" value="${city.population}">
        </div>
        <div class="form-group">
            <label for="gdp">GDP</label>
            <input type="number"  pattern="[-+]?[0-9]" class="form-control" id="gdp" placeholder="gdp" name="gdp" min="1" value="${city.GDP}">
        </div>
        <div class="form-group">
            <label for="description">Giới thiệu</label>
            <textarea class="form-control" id="description" rows="3" name="description" required >"${city.description}"</textarea>
        </div>
        <button type="submit" class="btn btn-primary">Cập nhật</button>
        <a class="btn btn-danger" href="/City" role="button">Thoát</a>
        <div class="alert alert-warning alert-dismissible fade show" role="alert">
            ${alert}
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    </form>
</div>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</html>
