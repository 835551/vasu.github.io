<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Menu Item List</title>
<link rel="stylesheet" type="text/css" href="./style/style.css" />
</head>
<body>
	<header> <span id="head">truYum</span> <img
		src="./images/truyum-logo-dark.png" /> <a id="menu" href="ShowCart">cart</a>
	<a id="menu" href="ShowMenuItemListCustomer">Menu</a> </header>
	<div>
		<h3 class="cont">Cart</h3>
		<h4 id="pvr4">${msg}</h4>
		<table class="cont">
			<tr>
				<th class="text">Name</th>
				<th class="text1">Free Delivery</th>
				<th class="price">Price</th>
			</tr>
			<c:forEach items="${menuItemListCustomer}" var="menu">
				<tr>
					<td class="text">${menu.name}</td>
					<td class="text1"><c:if test="${menu.freeDelivery}">Yes</c:if>
						<c:if test="${!menu.freeDelivery}">No</c:if></td>
					<td class="price">Rs.${menu.price}</td>
					<td class="link">${menu.category}</td>
					<td class="link"><a href="RemoveCart?id=${menu.id}">Delete</a></td>
				</tr>
			</c:forEach>
			<tr>
				<td></td>
				<td class="text1"><b>Total</b></td>
			<td class="price"><b>${total}</b></td>
				<td></td>
			</tr>
		</table>
	</div>

	<footer id="foot">
	<h3>Copyright @ 2019</h3>
	</footer>
</body>
</html>