package com.cognizant.truyum.dao;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.List;

import com.cognizant.truyum.model.MenuItem;
import com.cognizant.truyum.util.DateUtil;

public class MenuItemDaoCollectionImplTest {

	public static void main(String[] args) {
		try {
			System.out.println("Admin menu item list");
			testGetMenuItemListAdmin();
			System.out.println("Customer menu item list");
			testGetMenuItemListCustomer();
			testModifyMenuItem();
			System.out.println("Modified menu item list");
			testGetMenuItemListAdmin();
		} catch (ParseException e) {

			e.printStackTrace();
		}
	}

	public static void testGetMenuItemListAdmin() throws ParseException {
		MenuItemDao menuItemDao = new MenuItemDaoCollectionImpl();
		List<MenuItem> menuItemList;
		menuItemList = menuItemDao.getMenuItemListAdmin();

for (MenuItem x : menuItemList) {
		System.out.println(x);
}
	}

	private static void testGetMenuItemListCustomer() throws ParseException {
		MenuItemDao menuItemDao = new MenuItemDaoCollectionImpl();
		List<MenuItem> menuItemList = menuItemDao.getMenuItemListCustomer();
		for (MenuItem x : menuItemList)
			System.out.println(x);
	}

	private static void testModifyMenuItem() throws ParseException {
		MenuItem m = new MenuItem(2, "pani puri", 55.00f, false, DateUtil.converttoDate("13/02/2019"), "Main Course",
				true);
		MenuItemDao menuItemDao = new MenuItemDaoCollectionImpl();
		menuItemDao.modifyMenuItem(m);
	}
}
