<%@page import="com.simpleone.util.UtilTest"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Declaration tag example</h1>

	<%!int rank = 10;
	double price = 988.07;
	String name = "Satish";

	private int showRank() {
		return rank;
	}%>

	The rank value is :
	<%=rank%>
	<br /> The showRank method value is:
	<%=showRank()%>
	<br />
	<%=UtilTest .showMessage("Myoffice") %>


</body>
</html>