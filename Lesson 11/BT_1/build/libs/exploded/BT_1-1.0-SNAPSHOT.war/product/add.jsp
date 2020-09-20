<%--
  Created by IntelliJ IDEA.
  User: phama
  Date: 9/20/2020
  Time: 2:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new product</title>
</head>
<body>
    <h1>Add new product</h1>
    <p>
        <c:if test='${requestScope["message"]!= null}'>
            <span class="message">${requestScope["message"]}</span>
        </c:if>
    </p>

    <p>
        <a href="/products">Back to product list</a>
    </p>

    <form method="post">
        <fieldset>
            <legend>Product Information</legend>
            <table>
                <tr>
                    <td>Product Name:</td>
                    <td><input type="text" name="productName" id="productName"></td>
                </tr>
                <tr>
                    <td>Price:</td>
                    <td><input type="text" name="price" id="price"></td>
                </tr>

                <tr>
                    <td>Description:</td>
                    <td><input type="text" name="description" id="description"></td>
                </tr>

                <tr>
                    <td>Maker:</td>
                    <td><input type="text" name="maker" id="maker"></td>
                </tr>

                <tr>
                    <td></td>
                    <td><input type="submit" value="Add Product"></td>
                </tr>
            </table>
        </fieldset>
    </form>

</body>
</html>
