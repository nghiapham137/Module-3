<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: phama
  Date: 9/17/2020
  Time: 4:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Search</title>
</head>
<body>
    <%
        Map<String,String> dic = new HashMap<>();

        dic.put("hello", "xin chào");
        dic.put("what", "cái gì");
        dic.put("why", "tại sao");
        dic.put("how", "như thế nào");
        dic.put("where", "ở đâu");

        String word = request.getParameter("txtWord");
        String result = dic.get(word);
        if (result!= null) {
            out.println("Word: " + word);
            out.println("<br>");
            out.println("Result: " + result);
        } else {
            out.println("Not found!");
        }

    %>

</body>
</html>
