<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Expense</title>
</head>
<body>
	<h1>Edit Expense</h1>
	<div><a href="/expenses">Go back</a></div>
	<form:form action="/expenses/${expense.getId()}" method="post" modelAttribute="expense">
		<input type="hidden" name="_method" value="put">
		<p>
			<form:label path="name">Expense name:</form:label>
			<form:input path="name" />
			<form:errors path="name" class="alert alert-danger" />
		</p>
		<p>
			<form:label path="vendor">Vendor:</form:label>
			<form:input path="vendor" />
			<form:errors path="vendor" class="alert alert-danger" />
		</p>
		<p>
			<form:label path="ammount">Amount in $</form:label>
			<form:input type="number" path="ammount"/>
			<form:errors path="ammount" class="alert alert-danger" />
		</p>
		<p>
			<form:label path="description">Description</form:label>
			<form:input path="description" />
			<form:errors path="description" class="alert alert-danger" />
		</p>
		<input type="submit" value="Submit" />
	</form:form>	
</body>
</html>