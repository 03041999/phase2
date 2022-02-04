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

	/* Cookie ck1 = new Cookie("email","");

	ck1.setMaxAge(0);
	response.addCookie(ck1); */
	
	session.invalidate();

%>

User successfully logged out. 
Please click <a href="login.jsp"> here</a> to login again.

</body>
</html>