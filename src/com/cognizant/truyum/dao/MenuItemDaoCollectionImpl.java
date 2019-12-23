package com.cognizant.truyum.dao;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.cognizant.truyum.model.MenuItem;
import com.cognizant.truyum.util.DateUtil;

public class MenuItemDaoCollectionImpl implements MenuItemDao {
	private static List<MenuItem> menuItemList;

	public MenuItemDaoCollectionImpl() throws ParseException {
		if (menuItemList == null) {
			menuItemList = new ArrayList<>();
			menuItemList.add(new MenuItem(1, "Sandwich", 99.00f, true, DateUtil.converttoDate("15/03/2017"),"Main Course", true));
			menuItemList.add(new MenuItem(2, "Burger", 129.00f, true, DateUtil.converttoDate("23/12/2017"),"Main Course", false));
			menuItemList.add(new MenuItem(3, "Pizza", 149.00f, true, DateUtil.converttoDate("21/08/2018"),"Main Course", false));
			menuItemList.add(new MenuItem(4, "Frinch Fries", 57.00f, false, DateUtil.converttoDate("02/07/2017"),"Main Course", true));
			menuItemList.add(new MenuItem(5, "Chocolate Brownie", 32.0f, true, DateUtil.converttoDate("02/11/2022"),"Main Course", true));
		}
	}

	public List<MenuItem> getMenuItemListAdmin() {
		return menuItemList;
	}

	@Override
	public List<MenuItem> getMenuItemListCustomer() {
		List<MenuItem> CustomerList = new ArrayList<MenuItem>();
		Date today = new Date();
		for (MenuItem x : menuItemList) {
			if ((x.isActive()) && x.getDateOfLaunch().before(today)) {
				CustomerList.add(x);
			}

		}
		return CustomerList;
	}

	@Override
	public void modifyMenuItem(MenuItem menuItem) {
		MenuItem x = getMenuItem(menuItem.getId());
		x.setName(menuItem.getName());
		x.setPrice(menuItem.getPrice());
		x.setActive(true);
		x.setDateOfLaunch(menuItem.getDateOfLaunch());
		x.setCategory(menuItem.getCategory());
		x.setFreeDelivery(true);
		
	}

	

	
	public MenuItem getMenuItem(long menuItemId) {
		MenuItem m = null;
		for (MenuItem x : menuItemList) {
			if (x.getId() == menuItemId) {
				m = x;
				break;
			}
		}
		return m;
	}
}