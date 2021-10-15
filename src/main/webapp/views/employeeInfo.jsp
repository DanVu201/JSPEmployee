<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core_1_1" %>
<%--
  Created by IntelliJ IDEA.
  User: vuduy
  Date: 10/13/2021
  Time: 2:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new Employee</title>
</head>
<a href="/employee/list">List all employee</a>
<a href="/index.jsp">Go to home page</a>
<%--<c:if test="${requestAction == 'add'}">--%>
<form action="/employee/add" method="POST" >
    <%--    </c:if>--%>
    <table id="textData">
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

</body>
</html>
