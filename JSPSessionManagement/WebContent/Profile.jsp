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
boolean isFound=false;
	/* 	Cookie[] ck = request.getCookies();
	boolean isFound=false;
	
	for(Cookie c: ck) {
		if(c.getName().equals("email")) {
			out.print("<h2 style='color:green;text-align:center'>Hello User "+c.getValue()+"</h2>");
			isFound = true;
		}
	} */
	
	String email = (String)session.getAttribute("email");
	
	if(email != null) {
		out.print("<h2 style='color:green;text-align:center'>Hello User "+email+"</h2>");
		isFound=true;
	}

	if (!isFound) {
		throw new ServletException(" Invalid user accesss, please login");
	}
%>


<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>