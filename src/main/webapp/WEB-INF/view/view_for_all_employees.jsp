<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 5/18/2026
  Time: 8:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>Information for all employees</h3>

<security:authorize access="hasRole('HR')">
    <br><br>
    <input type="button" value="Salary" onclick="window.location.href='hr_info' ">Only for HR stuff
</security:authorize>

<security:authorize access="hasRole('MANAGER')">
    <br><br>
    <input type="button" value="Performance" onclick="window.location.href='manger_info' ">Only for Managers
</security:authorize>

</body>
</html>
