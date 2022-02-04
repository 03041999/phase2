<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
	
	<%
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		if(email == null || password == null || email.equals("") || password.equals("")) {
			throw new ServletException(":: Mandatory Parameters  are missing  ::");
		} else {
			
			if(email.equals("myoffice@gmail.com") && password.equals("my123")) {
				
				/* Cookie ck1 =  new Cookie("userId", "123");
				Cookie ck2 =  new Cookie("email", email);
				
				response.addCookie(ck1);
				response.addCookie(ck2); */
				
				session.setAttribute("email", email);
				
				
				
				out.println("<h2 style='color:green'> Successfully logged In !! </h2> ");
				
			} else {
				throw new ServletException(":: Invalid credentials::");
			}
			
		}
	%>
<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>