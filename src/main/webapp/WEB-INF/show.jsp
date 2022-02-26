<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Expense Details</title>
</head>
<body>
	<h1>Expense Details</h1>
	<div><a href="/expenses">Go back</a></div>
	<div>
		<p>Expense Name: <c:out value="${expense.getName()}"></c:out></p>
	</div>
		<div>
		<p>Vendor Name: <c:out value="${expense.getVendor()}"></c:out></p>
	</div>
	<div>
		<p>Amount Name: <c:out value="${expense.getAmmount()}"></c:out></p>
	</div>
	<div>
		<p>Description: <c:out value="${expense.getDescription()}"></c:out></p>
	</div>
</body>
</html>