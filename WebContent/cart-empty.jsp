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
		 <a id="menu" href="ShowCart ">cart</a>
		 <a id="menu" href="ShowMenuItemListCustomer">Menu</a>
       </header>
	   <div>
	     <h3 class="cont">Cart</h3>
		 <h4 class="cart">No item in the cart.Use 'Add to Cart' option in<a href="ShowMenuItemListCustomer"> Menu Item List </a></h4>
	   </div>
    <footer id="foot"> 
      <h3>Copyright @ 2017</h3>
    </footer>
    </body>
</html>