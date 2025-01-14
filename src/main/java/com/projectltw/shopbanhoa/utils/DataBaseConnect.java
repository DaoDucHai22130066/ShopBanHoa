package com.projectltw.shopbanhoa.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DataBaseConnect {
    private static final String URL = "jdbc:mysql://localhost:3306/flowershop";
    private static final String USER = "root"; // Thay bằng user của bạn
    private static final String PASSWORD = ""; // Thay bằng password của bạn

    public static Connection getConnection() throws SQLException {
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // Driver MySQL
            conn = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            throw new SQLException("Driver not found!");
        } catch (SQLException e) {
            System.out.println("SQL Exception: " + e.getMessage());
            e.printStackTrace();
        }
        return conn;
    }
}
