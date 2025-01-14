package com.projectltw.shopbanhoa.dao;

import com.projectltw.shopbanhoa.model.Category;
import com.projectltw.shopbanhoa.utils.DataBaseConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoryDAO {
    private Connection conn;

    public CategoryDAO() throws SQLException {
        conn = DataBaseConnect.getConnection();
    }

    public Category getCategoryById(int categoryId) {
        Category category = null;
        try {
            String query = "SELECT * FROM Categories WHERE category_id = ?";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, categoryId);
            System.out.println("Executing query: " + ps.toString()); // Log truy vấn
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                category = new Category();
                category.setCategoryId(rs.getInt("category_id"));
                category.setName(rs.getString("name"));
                category.setDescription(rs.getString("description"));
                System.out.println("Category found: " + category.getName()); // Log nếu tìm thấy
            } else {
                System.out.println("No category found for ID: " + categoryId); // Log nếu không tìm thấy
            }
        } catch (SQLException e) {
            System.out.println("SQL Exception: " + e.getMessage());
            e.printStackTrace();
        }
        return category;
    }


}
