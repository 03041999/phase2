<%@page import="com.simpleone.dao.EmployeeDAO"%>
<%@page import="com.simpleone.entity.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		String firstName = request.getParameter("firstName");

		String lastName = request.getParameter("lastName");
		String salary = request.getParameter("salary");
		String dept = request.getParameter("dept");
		
		Employee e = new Employee();
		e.setFirstName(firstName);
		e.setLastName(lastName);
		e.setSalary(Double.valueOf(salary));
		e.setDepartment(dept);
		
		EmployeeDAO.addEmployee(e);
		
		response.sendRedirect("success.jsp");
	%>

</body>
</html>