<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/files/css/style.css" />
<title>HomePage</title>
</head>
<body>
	<div align="center">
		<h2>Submit your information</h2>
		<a href="users">Show Users</a>
		<hr />
		<form:form action="hello" modelAttribute="info">
	
	First Name : <form:input path="firstName" required="true"
				placeholder="Enter First Name" />
			<br>
			<form:errors path="firstName" cssStyle="color:red"></form:errors>
			<p />
	Last Name : <form:input path="lastName" required="true"
				placeholder="Enter last Name" />
			<br>
			<form:errors path="lastName" cssStyle="color:red"></form:errors>
			<p />
	Gender : <form:radiobuttons path="gender" items="${gender}" />
			<br>
			<form:errors path="gender" cssStyle="color:red"></form:errors>
			<p />
	Country : <form:select path="country">
				<form:option value="India"></form:option>
				<form:option value="USA"></form:option>
				<form:option value="Singapore"></form:option>
			</form:select>
			<p />
	Visited Country :
	<p />
			<form:checkbox path="visitedCountry" value="China" /> China
	<form:checkbox path="visitedCountry" value="Thailand" /> Thailand
	<form:checkbox path="visitedCountry" value="Sweden" /> Sweden
	<form:checkbox path="visitedCountry" value="Japan" /> Japan
	<p />
	Message :
	<form:textarea path="message" required="true" />
			<p />
			<input type="submit" Value="Submit">
		</form:form>
	</div>
</body>
</html>