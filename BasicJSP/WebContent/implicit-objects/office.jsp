<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" buffer="8kb"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> THis is office page</h1>



<%= pageContext.getAttribute("userId", PageContext.APPLICATION_SCOPE) %>
<%= session.getAttribute("UserName") %>

</body>
</html>