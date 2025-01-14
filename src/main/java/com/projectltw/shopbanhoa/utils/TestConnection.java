package com.projectltw.shopbanhoa.utils;

import java.sql.Connection;

public class TestConnection {
    public static void main(String[] args) {
        try {
            Connection conn = DataBaseConnect.getConnection();
            if (conn != null) {
                System.out.println("Kết nối thành công!");
                conn.close();
            } else {
                System.out.println("Kết nối thất bại!");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
