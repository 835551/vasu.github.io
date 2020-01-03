<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Menu Item List</title>
<link rel="stylesheet" type="text/css" href="./style/style.css" />
</head>
<body>
	<header> <span id="head">truyum</span> <img
		src="./images/truyum-logo-dark.png" /> <a id="menu"
		href="ShowCart">cart</a> <a id="menu" 
		href="ShowMenuItemListCustomer">Menu</a> </header>
	<div>
		<h3 class="cont">Menu Item</h3>
		<h4 id="pvr4">${msg}</h4>
		<table class="cont">
		
			<tr>
				<th class="text">Name</th>
				<th class="text1">Free Delivery</th>
				<th class="price">Price</th>
				<th class="category">Category</th>
				<th class="link">Action</th>
			</tr>
			<c:forEach items="${menuItemList}" var="x">
			<tr>
				<td class="text">${x.name}</td>
				<td class="text1"><c:if test="${x.freeDelivery}">Yes</c:if>
				<c:if test="${!x.freeDelivery}">No</c:if></td>
				<td class="price">Rs.${x.price}</td>
				<td class="category">${x.category}</td>
				<td class="link"><a href="AddToCart?menuItemId=${x.id}">Add to Cart</a></td>
			</tr>
			</c:forEach>
		</table>
	</div>
	<footer id="foot">
	<h3>Copyright @ 2017</h3>
	</footer>
</body>
</html>