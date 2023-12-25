<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Tr0ansitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.empTable {
	border-collapse: collapse;
	border-spacing: 0;
	border-color: #ccc;
}

.empTable td {
	border-collapse: collapse;
	font-family: Arial, sans-serif;
	font-size: 16px;
	padding: 10px 5px;
	border- style: solid;
	border-width: 2px;
	overflow: hidden;
	word-break: normal;
	border- color: #ccc;
	color: #00FF00;
	background-color: #FF0000;
}

.empTable th {
	font-family: Arial, sans-serif;
	font-size: 16px;
	font-weight: normal;
	padding: 10px 5px;
	border-style: solid;
	border-width: 2px;
	overflow: hidden;
	word-break: normal;
	border- color: #ccc;
	color: #000000;
	background-color: #FF4500;
}

.empTable .empTable-4eph {
	background-color: #C0C0C0
}
</style>

</head>
<body><div>
<form method="get" action="search">
<center>
<input type="text" name="empname"></input>
<a href="search">Search</a>
</form>
</div>
<c:if test="${not empty employeeList}">
		<h3>
			<spring:message code="employeeList" />
		</h3>
		<table class="empTable">
			<tr>
				<th width="80">ID</th>
				<th width="120">First Name</th>
				<th width="120">Last Name</th>
				<th width="120">Age</th>
				<th width="120">Education</th>
				<th width="120">Salary</th>
				<th width="60">Edit</th>
				<th width="60">Delete</th>
			</tr>

			<c:forEach items="${employeeList}" var="employee">
				<tr>
					<td>${employee.employeeId}</td>
					<td>${employee.firstName}</td>
					<td>${employee.lastName}</td>
					<td>${employee.age}</td>
					<td>${employee.education}</td>
					<td>${employee.salary}</td>
					<td><a
						href="<c:url value='/employee/edit/${employee.employeeId}' />">Edit</a></td>
					<td><a
						href="<c:url value='employee/remove/${employee.employeeId}' />">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	<center><br>
	<a href="employees">Click here for registration.</a> 
	</center>
</body>
</html>