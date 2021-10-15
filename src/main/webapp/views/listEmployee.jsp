<%--
  Created by IntelliJ IDEA.
  User: vuduy
  Date: 10/13/2021
  Time: 9:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Employee Management</title>
</head>
<body>
<h1>List Employee</h1>
<a href="/employee/add">Add new employee</a>
<%--<form action="/employee/delete" method="POST">--%>
<%--    <table>--%>
<%--        <tr>--%>
<%--            <th>ID</th>--%>
<%--            <th>Remove</th>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td>--%>
<%--                <input type="text" name="employeeId">--%>
<%--            </td>--%>
<%--            <td>--%>
<%--                <input type="submit" value="Remove">--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--    </table>--%>
<%--</form>--%>

<table style="border: black 2px solid">
    <tr>
        <th>Id</th>
        <th>Age</th>
        <th>Name</th>
        <th>City</th>
    </tr>
    <c:forEach var="temp" items="${listEmployee}">
        <td>
            <tr>
                <td><c:out value="${temp.employeeId}"/></td>
                <td><c:out value="${temp.employeeAge}"/></td>
                <td><c:out value="${temp.employeeName}"/></td>
                <td><c:out value="${temp.employeeCity}"/></td>
            </tr>
        </td>
    </c:forEach>
</table>
</body>
</html>
