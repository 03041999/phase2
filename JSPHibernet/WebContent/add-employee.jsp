<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Employee Form</title>
</head>
<body>
	<h1>Add Employee</h1>

	<form method="post" action="submit-employee.jsp">
		<fieldset>
			<legend>Add Employee Form</legend> <br/><br/>
			First Name: <input type="text" name="firstName" id="firstName"> <br/>
			Last Name: <input type="text" name="lastName" id="lastName"> <br/>
			Salary : <input type="text" name="salary" id="salary"> <br/>
			Department: <input type="text" name="dept" id="dept" > <br/>
			
			<input type="submit" value = "Add Employee"> 
		
		</fieldset>
	</form>

</body>
</html>