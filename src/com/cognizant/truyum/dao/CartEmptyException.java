package com.cognizant.truyum.dao;

public class CartEmptyException extends Exception {

	public CartEmptyException() {
		super("cart is empty");

	}

	public CartEmptyException(String message) {
		super(message);

	}

}
