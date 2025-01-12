package com.shopbanhoa.shopbanhoa_web.dao;

import com.shopbanhoa.shopbanhoa_web.model.Order;

public class OrderDAO {
    private int id;
    private int userId;
    private String productDetails;

    // Constructor, getters, and setters
    public OrderDAO(int userId, String productDetails) {
        this.userId = userId;
        this.productDetails = productDetails;
    }

    public OrderDAO() {

    }

    public boolean createOrder(Order order) {

        return false;
    }

    // Getters and Setters
}

