<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Implicit objects example</h1>


	<%
		String office = request.getParameter("office");

		if (office != null) {

			response.sendRedirect("office.jsp");
		} else {
			out.print("Office not available");
		}

		// Out
		out.println("This is out implicit object, which will print context to PrintWriter");

		//Request 
		out.println("<br/>" + request.getServerName());
		out.println("<br/>" + request.getServerPort());
		
		
		out.println("<p> Page name is:"+page.toString());
		
		

		// Page context
		pageContext.setAttribute("userId", "UI2022", PageContext.APPLICATION_SCOPE);
		pageContext.setAttribute("UserName", "Satish", PageContext.REQUEST_SCOPE);
		
		session.setAttribute("UserName", "Satish");
	%>
	
	<a href="implicit-objects.jsp?office=test"> Click here to redirect office</a>


</body>
</html>