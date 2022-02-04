<%@page import="java.util.Date"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>

<c:set var="now" value="<%= new Date() %>"> </c:set>
Current Date is: <c:out value="${now}"></c:out> 
<br/><br/>

Current Date with format: <fmt:formatDate value="${now}" pattern="dd-MM-yyyy"/>

<br/><br/>
<c:set var="salary" value="${4000*5}"></c:set>
Salary is: <c:out value="${salary}"></c:out>

<c:if test="${salary>888}">
	<p>Perfect salary</p>
</c:if>



</body>
</html>