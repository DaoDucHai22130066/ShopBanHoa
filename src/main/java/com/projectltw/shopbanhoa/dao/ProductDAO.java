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
    private Connection conn;
    public ProductDAO() {
        try {
            // Lấy kết nối từ lớp DataBaseConnect
            conn = DataBaseConnect.getConnection();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String categoryIdParam = request.getParameter("category_id");
        if (categoryIdParam != null) {
            try {
                int categoryId = Integer.parseInt(categoryIdParam);
                ProductDAO productDAO = new ProductDAO();
                List<Product> products = productDAO.getProductsByCategory(categoryId);
                request.setAttribute("products", products);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        request.getRequestDispatcher("/views/pages/hoa-sinh-nhat.jsp").forward(request, response);
    }

    public List<Product> getProductsByCategory(int categoryId) {
        List<Product> products = new ArrayList<>();
        String query = "SELECT p.product_id, p.product_name, p.description, p.unit_price, i.path AS image_path " +
                "FROM products p " +
                "JOIN images i ON p.image_id = i.image_id " +
                "WHERE p.category_id = ?";
        try (Connection conn = DataBaseConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setInt(1, categoryId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setProductId(rs.getInt("product_id"));
                product.setProductName(rs.getString("product_name"));
                product.setDescription(rs.getString("description"));
                product.setUnitPrice(rs.getBigDecimal("unit_price"));
                product.setImagePath(rs.getString("image_path"));
                products.add(product);
            }
        } catch (Exception e) {
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
