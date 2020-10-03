<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: phama
  Date: 10/2/2020
  Time: 9:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>City List</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <div class="alert alert-warning alert-dismissible fade show" role="alert">
            ${message}
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <h1>Danh sách thành phố</h1>
        <a class="btn btn-primary" href="/City?action=addCity" role="button">Thêm thành phố</a>
        <br>
        <table class="table">
            <thead class="thead-light">
            <tr>
                <th scope="col">STT</th>
                <th scope="col">Thành Phố</th>
                <th scope="col">Quốc Gia</th>
                <th scope="col"></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="list" items="${cityList}" varStatus="loop">
                <tr>
                    <th scope="row"><c:out value="${loop.index + 1}"/></th>
                    <td><a href="/City?action=view&id=${list.id}"><c:out value="${list.cityName}"/></a> </td>
                    <td><c:out value="${list.country.getCountryName()}"/></td>
                    <td>
                        <div class="btn-group" role="group" aria-label="Basic example">
                            <a type="button" class="btn btn-primary">Chỉnh sửa</a>
                            <a type="button" class="btn btn-danger" data-toggle="modal" data-target="#deleteAlert">Xóa</a>
                            <div class="modal fade" id="deleteAlert" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="staticBackdropLabel">Xóa thành phố </h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            Bạn có chắc chắn muốn xóa thành phố: <c:out value="${list.cityName}"/>?
                                        </div>
                                        <div class="modal-footer">
                                            <a type="submit" class="btn btn-primary" href="/City?action=delete&id=${list.id}">Xóa</a>
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>


    </div>

</body>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</html>
