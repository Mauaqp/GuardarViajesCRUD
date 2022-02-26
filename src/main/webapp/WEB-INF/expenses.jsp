<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Read Share</title>
</head>
<body>
	<h1>Save Travels</h1>
	<table>
		<thead>
			<tr>
				<td>Expense</td>
				<td>Vendor</td>
				<td>Amount</td>
				<td>Actions</td>
			</tr>
		</thead>
		<tbody>	
			<c:forEach var="expense" items="${expenses}">
				<tr>
					<td><a href="/expense/${expense.getId()}/show"><c:out value="${expense.getName()}"></c:out></a></td>
					<td><c:out value="${expense.getVendor()}"></c:out></td>
					<td><c:out value="${expense.getAmmount()}"></c:out></td>
					<td>
						<a href="/expenses/${ expense.getId() }/edit">Edit</a>
						<form action="/expenses/${expense.getId()}/delete" method="post">
						    <input type="hidden" name="_method" value="delete">
						    <input type="submit" value="Delete">
						</form>
					</td>
				</tr>
			</c:forEach>	
		</tbody>
	</table>
	<div>
		<h2>Add an expense</h2>
		<form:form action="/expenses" method="post" modelAttribute="expense">
			<p>
				<form:label path="name">Expense Name</form:label>
				<form:errors path="name" class="text-danger"></form:errors>
				<form:input path="name"/>
			</p>
			<p>
				<form:label path="vendor">Vendor</form:label>
				<form:errors path="vendor" class="text-danger"></form:errors>
				<form:input path="vendor"/>
			</p>
			<p>
				<form:label path="ammount">Amount</form:label>
				<form:errors path="ammount" class="text-danger"></form:errors>
				<form:input path="ammount"/>
			</p>
			<p>
				<form:label path="description">Description</form:label>
				<form:errors path="description" class="text-danger"></form:errors>
				<form:input path="description"/>
			</p>		
			<input type="submit" value="Submit"/>
		</form:form>
	</div>
</body>
</html>