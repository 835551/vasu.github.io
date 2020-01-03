<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Menu Item List</title>
<link rel="stylesheet" type="text/css" href="./style/style.css" />
<script type="text/javascript" src="./js/script.js"></script>
</head>
<body>
	<header> <span id="head">truYum</span> <img
		src="./images/truyum-logo-dark.png" /> <a id="menu"
		href="ShowMenuItemListAdmin">Menu</a> </header>
	<div>
		<h3 class="cont">Edit Menu Item</h3>
		<form name="Form" method="post"
			action="EditMenuItem?id=${menuItem.id }" onsubmit="return validate()">
			<table class="cont">
				<tr>
					<td lable for="txt-field">Name</td>
				</tr>
				<tr>
					<td><input type="text" name="txt" value="${menuItem.name }"></td>
				</tr>
				<tr>
					<td>price(Rs.)</td>
					<td>Active</td>
					<td>Date Of Launch</td>
					<td>Category</td>
				</tr>
				<tr>
					<td><input type="text" name="price" value="${menuItem.price}"></td>
					<td><input type="radio" name="active" value="yes" <c:if test="${menuItem.active}">checked="checked"</c:if>>Yes
						<input type="radio" name="active" value="No"<c:if test="${!menuItem.active}">checked="checked"</c:if>>No</td>
					 <td class="date">
					 	<fmt:formatDate pattern="dd/MM/yyyy" value="${menuItem.dateOfLaunch}" var="dol"></fmt:formatDate>
					 	<input type="text" name="dateOfLaunch" value="${dol }">
					 </td>
					<td><select name="category" >
							<option>starters</option>
							<option selected>Main Course</option>
							<option>Dessert</option>
							<option>Drinks</option>
					</select></td>
				</tr>
				<tr>
					<td><input type="checkbox" name="freeDelivery" checked />Free delivery</td>
				</tr>
				<tr>
					<td><input type="submit" value="save" id="pvr3"></td>
				</tr>
			</table>
		</form>
	</div>
	<footer id="foot">
	<h3>Copyright @2019</h3>
	</footer>
</body>
</html>