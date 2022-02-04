<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display</title>
</head>
<body>

<h1>Displaying the Product Details....</h1>
<hr>
<%="Product Id : " + session.getAttribute("pid") %><br><br>

<%="Product Name : " + session.getAttribute("pname") %><br><br>

<%="Product Price : " + session.getAttribute("pprice") %>


</body>
</html>
