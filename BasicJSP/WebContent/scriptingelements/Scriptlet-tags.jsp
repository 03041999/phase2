<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>This is scriptlet tag demo</h1>

	<%
		int age = 18;

		if (age >= 18) {
			out.println("<p> Your age is valid </p>");
		} else {
			out.println("<p> Your age is invalid </p>");
		}
	%>
</body>
</html>