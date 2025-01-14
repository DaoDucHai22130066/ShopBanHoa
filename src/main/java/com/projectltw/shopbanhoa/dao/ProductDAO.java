package com.projectltw.shopbanhoa.dao;

import com.projectltw.shopbanhoa.model.Product;
import com.projectltw.shopbanhoa.utils.DataBaseConnect;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {
    private Connection conn = null;
    public ProductDAO() {
        try {
            // Lấy kết nối từ lớp DataBaseConnect
            conn = DataBaseConnect.getConnection();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<Product> getTopDiscountedProducts() {
        List<Product> products = new ArrayList<>();
        try (Connection connection = DataBaseConnect.getConnection();
             PreparedStatement statement = connection.prepareStatement("SELECT * FROM products WHERE discount_id IS NOT NULL LIMIT 4");
             ResultSet rs = statement.executeQuery()) {
            while (rs.next()) {
                Product product = new Product(
                        rs.getInt("product_id"),
                        rs.getString("product_name"),
                        rs.getString("image_id"),
                        rs.getString("description"),
                        rs.getBigDecimal("unit_price")
                );
                products.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }


    public String getCategoryNameById(String categoryId) {
        String categoryName = null;
        try {
            String query = "SELECT name FROM Categories WHERE category_id = ?";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, categoryId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                categoryName = rs.getString("name");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return categoryName;
    }
}
