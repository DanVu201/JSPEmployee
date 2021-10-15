<%--
  Created by IntelliJ IDEA.
  User: vuduy
  Date: 10/13/2021
  Time: 9:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Employee Management</title>
</head>
<body>
<h2><a href="/index.jsp">Home page</a></h2>
<h3>Add new employee</h3>
<form action="/employee/add" method="POST">
    <%--    </c:if>--%>
    <table style="border: black 1px solid">
        <tr>
            <th>ID</th>
            <td>
                <input type="text" name="employeeId"/>
            </td>
        </tr>
        <tr>
            <th>Age</th>
            <td>
                <input type="text" name="employeeAge"/>
            </td>
        </tr>
        <tr>
            <th>Name</th>
            <td>
                <input type="text" name="employeeName"/>
            </td>
        </tr>
        <tr>
            <th>City</th>
            <td>
                <input type="text" name="employeeCity"/>
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="ADD"/>
                <input type="reset" value="RESET"/>
            </td>
        </tr>
    </table>
</form>
<h3>Delete an employee by ID </h3>
<form action="/employee/delete" method="Delete">
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

<h3>Edit an employee by ID</h3>
<form action="/employee/edit" method="post">
    <table style="border: black 1px solid">
        <tr>
            <th>ID</th>
            <th>Age</th>
            <th>Name</th>
            <th>City</th>
            <th>Submit</th>
        </tr>
        <tr>
            <td><input type="text" name="employeeId"></td>
            <td><input type="text" name="employeeAge"></td>
            <td><input type="text" name="employeeName"></td>
            <td><input type="text" name="employeeCity"></td>
            <td><input type="submit" value="Submit"></td>
        </tr>
    </table>
</form>

<h3>Select an employee by ID </h3>
<form action="/employee/GetById" method="get">
    <table style="border: black 1px solid">
        <tr>
            <th>ID</th>
            <th>Select</th>
        </tr>
        <tr>
            <td>
                <input type="text" name="employeeId">
            </td>
            <td>
                <input type="submit" value="Select">
            </td>
        </tr>
    </table>
</form>
<h3>List all employee</h3>
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
                <td>${temp.employeeId}</td>
                <td>${temp.employeeAge}</td>
                <td>${temp.employeeName}</td>
                <td>${temp.employeeCity}</td>
            </tr>
        </td>
    </c:forEach>
</table>
</body>
</html>
