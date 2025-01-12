package com.shopbanhoa.shopbanhoa_web.dao;

public class OrderDAO {
    private int id;
    private int userId;
    private String productDetails;

    // Constructor, getters, and setters
    public OrderDAO(int userId, String productDetails) {
        this.userId = userId;
        this.productDetails = productDetails;
    }

    // Getters and Setters
}

