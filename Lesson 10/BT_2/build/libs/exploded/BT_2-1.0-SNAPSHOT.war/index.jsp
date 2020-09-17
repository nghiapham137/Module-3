<%--
  Created by IntelliJ IDEA.
  User: phama
  Date: 9/17/2020
  Time: 10:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Simple Calculator</title>
  </head>
  <body>
    <h1>Simple Calculator</h1>
    <form method="post" action="/calculate">
      <fieldset>
        <legend>Calculator</legend>
        <label>First Operand:</label>
        <input type="text" name="firstOperand"><br>
        <select name="operator">
          <option value="+">+</option>
          <option value="-">-</option>
          <option value="*">*</option>
          <option value="/">/</option>
        </select><br>
        <label>Second Operand:</label>
        <input type="text" name="secondOperand"><br>
        <input type="submit" value="Calculate">
      </fieldset>
    </form>

  </body>
</html>
