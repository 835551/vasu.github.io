package com.cognizant.truyum.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cognizant.truyum.dao.MenuItemDao;
import com.cognizant.truyum.dao.MenuItemDaoCollectionImpl;
import com.cognizant.truyum.dao.MenuItemDaoSqlImpl;
import com.cognizant.truyum.model.MenuItem;

/**
 * Servlet implementation class ShowMenuItemListCustomerServlet
 */
@WebServlet({ "/ShowMenuItemListCustomerServlet", "/ShowMenuItemListCustomer" })
public class ShowMenuItemListCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public ShowMenuItemListCustomerServlet() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MenuItemDao menuItemDao=new MenuItemDaoSqlImpl();
		List<MenuItem>menuItemList=menuItemDao.getMenuItemListCustomer();
		request.setAttribute("menuItemList", menuItemList);
		RequestDispatcher rd=request.getRequestDispatcher("menu-item-list-customer.jsp"); 
		rd.forward(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
