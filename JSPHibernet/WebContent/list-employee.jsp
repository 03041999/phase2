<%@page import="com.simpleone.dao.EmployeeDAO"%>
<%@page import="com.simpleone.entity.Employee"%>

<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee List</title>
</head>
<body>

	<%
		List<Employee> employees = EmployeeDAO.listEmployee();
		request.setAttribute("empList", employees);
	%>

	<table style="border: 1px solid black;">
		<tr>
			<th>Id</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Salary</th>
			<th>Department</th>
		</tr>


		<c:forEach items="${empList}" var="emp">

			<tr>
				<td>${emp.getId()}</td>
				<td>${emp.getFirstName()}</td>
				<td>${emp.getLastName()}</td>
				<td>${emp.getSalary()}</td>
				<td>${emp.getDepartment()}</td>
			</tr>
		</c:forEach>
	</table>



</body>
</html>