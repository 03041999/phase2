<%@page import="java.util.Date"%>
<%@page import="javax.xml.crypto.Data"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> Expression tags example</h1>

<%= new Date() %>

<br/>
100 Miltiplied by 47 is : <%= 100*47 %>
<br/>
75 is less than 4? : <%= 75<47 %>
<br/>

Converted to upper case string: <%= new String("my office employe").toUpperCase() %>




</body>
</html>