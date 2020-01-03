<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   <head>
   <title>Menu Item List</title>
   <link rel="stylesheet" type="text/css"   href="./style/style.css"/>
   </head>
   
   <body>
       <header >
         <span id="head" >truYum</span>
		 <img  src="./images/truyum-logo-dark.png" />
		 <a id="menu" href="ShowMenuItemListAdmin">Menu</a>
       </header>
	   <div>
	     <h3 class="cont">Menu Item</h3>
	     <table class="cont">
	      <tr>
		       <th class="text">Name</th>
		       <th class="price">Price</th>
		       <th class="active">Active</th>
			   <th class="date">Date of launch</th>
			   <th class="category">category</th>
			   <th class="text1">Free Delivery</th>
			   <th class="link">Action</th>
	      </tr>
	      <c:forEach items="${menuItemList}" var="menu">
		  <tr>
		       <td class="text">${menu.name}</td>
		       <td class="price">${menu.price}</td>
		       <td class="active"><c:if test="${menu.active}">Yes</c:if><c:if test="${!menu.active}">No</c:if></td>
			   <td class="date"><fmt:formatDate pattern="dd/MM/yyyy" value="${menu.dateOfLaunch}"></fmt:formatDate></td>
			   <td class="category">${menu.category}</td>
			   <td class="text1"><c:if test="${menu.freeDelivery}">Yes</c:if><c:if test="${!menu.freeDelivery}">No</c:if></td>
			   <td class="link"><a href="ShowEditMenuItem?menuItemId=${menu.id}" target="_blank">Edit</a></td>
		  </tr>
		  </c:forEach>
	     </table>
	   </div>
   <footer id="foot"> 
      <h3>Copyright @ 2019</h3>
   </footer>
   </body>
</html>