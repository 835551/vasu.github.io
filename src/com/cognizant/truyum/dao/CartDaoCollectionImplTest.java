package com.cognizant.truyum.dao;

import java.util.List;

import com.cognizant.truyum.model.MenuItem;

public class CartDaoCollectionImplTest {

	public static void main(String[] args) throws CartEmptyException {
	testAddCartItem();
	testAllCartItem();
	testRemoveCartItem();

	}
 public static void testAddCartItem() throws CartEmptyException {
	 System.out.println("User Added Cart List for checkout");
	 CartDao cartDao=new CartDaoCollectionImpl();
	 cartDao.addCartItem(1,2L);
	 cartDao.addCartItem(2,4L);
	 cartDao.addCartItem(1,1L);
	 cartDao.addCartItem(2,3L);
	 
	 List<MenuItem>menuItemListCustomer =cartDao.getAllCartItems(1);
	 for(MenuItem menuItem: menuItemListCustomer) {
		 System.out.println(menuItem);
	 }
 }
 public static void testRemoveCartItem() throws CartEmptyException {
	 CartDao cartDao = new CartDaoCollectionImpl();
     System.out.println("Item List for Customer after Remove");
     try {
            cartDao.removeCartItems(1, 2L);
            cartDao.removeCartItems(1, 5L);
            List<MenuItem> menuItemListCustomer = cartDao.getAllCartItems(1);
            for (MenuItem menuItem : menuItemListCustomer) {
                  System.out.println(menuItem);
            }
     } catch (CartEmptyException e) {
            System.out.println(e.getMessage());
     }

		 
	 }
	 public static void testAllCartItem() throws CartEmptyException {
		 CartDao cartDao= new CartDaoCollectionImpl();
		 List<MenuItem>menuItemListCustomer =cartDao.getAllCartItems(1);
		 for(MenuItem menuItem: menuItemListCustomer) {
			 System.out.println(menuItem);
		 }
	 }
 }

