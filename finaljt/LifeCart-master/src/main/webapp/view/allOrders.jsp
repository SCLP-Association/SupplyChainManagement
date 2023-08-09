<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>View Orders</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Bootstrap CSS -->
		<link rel="stylesheet"
			href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
			integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
			crossorigin="anonymous">
		<style>
			table, tr, td, th, thead, tbody {
				border: 1px solid black;
				padding: 10px;
				margin: 8px;
			}
		</style>
	</head>
	<body class="text-center">
		<%@include file="admin_header.jsp" %>
		<h1 class="heading my-2 py-2">All Orders</h1>
		<table class="m-auto">
			<thead>
				<tr>
					<th>Order Id</th>
					<th>Product Id</th>
					<th>Quantity</th>
					<th>Total Price</th>
					<th>Order Date</th>
					<th>Username</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${orders}" var="order">
					<tr>
						<td>${order.id}</td>
						<td>${order.prodID}</td>
						<td>${order.quantity}</td>
						<td>${order.price}</td>
						<td>${order.orderDate}</td>
						<td>${order.username}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<%@include file="footer.jsp" %>
	</body>
</html>