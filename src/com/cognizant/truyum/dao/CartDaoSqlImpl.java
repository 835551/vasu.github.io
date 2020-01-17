package com.cognizant.truyum.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cognizant.truyum.model.Cart;
import com.cognizant.truyum.model.MenuItem;

public class CartDaoSqlImpl implements CartDao {
	@Override
	public void addCartItem(long userId, long menuItemId) {
		Connection con = ConnectionHandler.getConnection();
		try {
			String sql = "insert into cart(ct_us_id,ct_pr_id) values (?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setLong(1, userId);
			ps.setLong(2, menuItemId);
			int count = ps.executeUpdate();

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {

				e.printStackTrace();
			}
		}
	}

	@Override
	public List<MenuItem> getAllCartItems(long userId) throws CartEmptyException {
		Connection con = ConnectionHandler.getConnection();
		Cart cart=new Cart();
		try {
			String sql = "select  me_name,me_price,me_active,me_date_of_launch,me_category,me_free_delivery from menu_item inner join cart  on ct_pr_id=me_id where ct_us_id=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setLong(1, userId);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				MenuItem m = new MenuItem();
			
				m.setName(rs.getString(1));
				m.setPrice(rs.getFloat(2));
				m.setActive(rs.getString(3).equalsIgnoreCase("yes"));
				m.setDateOfLaunch(rs.getDate(4));
				m.setCategory(rs.getString(5));
				m.setFreeDelivery(rs.getString(6).equalsIgnoreCase("yes"));
				cart.getMenuItemList().add(m);
			}

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return cart.getMenuItemList();
	}

	@Override
	public void removeCartItems(long userId, long menuItemId) {
		Connection con = ConnectionHandler.getConnection();
		try {
			String sql = "delete from cart where ct_us_id=? and ct_pr_id=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setLong(1, userId);
			ps.setLong(2, menuItemId);
			int count = ps.executeUpdate();

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

	}

}
