<%--
  Created by IntelliJ IDEA.
  User: vuduy
  Date: 10/21/2021
  Time: 8:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Employee</title>
</head>
<body>
<h3>Delete an employee by ID </h3>
<form action="/employee/delete" method="get">
    <table style="border: black 1px solid">
        <tr>
            <th>ID</th>
            <th>Remove</th>
        </tr>
        <tr>
            <td>
                <input type="text" name="employeeId">
            </td>
            <td>
                <input type="submit" value="Remove">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
