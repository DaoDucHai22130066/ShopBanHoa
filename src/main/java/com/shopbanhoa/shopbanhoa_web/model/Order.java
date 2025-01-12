package com.shopbanhoa.shopbanhoa_web.model;


public class Order {
    private int id;
    private int userId;
    private String productDetails;

    // Constructor, getters, and setters
    public Order(int userId, String productDetails) {
        this.userId = userId;
        this.productDetails = productDetails;
    }

    // Getters and Setters
}

