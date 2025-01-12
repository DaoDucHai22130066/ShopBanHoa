package com.shopbanhoa.shopbanhoa_web.model;

public class User {
    private int id;
    private String username;
    private String password;

    // Constructor, getters, and setters
    public User(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public void setId(int id) {
    }

    // Getters and Setters
}
