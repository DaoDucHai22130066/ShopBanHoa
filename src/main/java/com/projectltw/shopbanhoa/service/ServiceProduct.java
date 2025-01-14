package com.projectltw.shopbanhoa.service;

import com.projectltw.shopbanhoa.dao.ProductDAO;
import com.projectltw.shopbanhoa.model.Product;
import com.projectltw.shopbanhoa.utils.DataBaseConnect;

import java.math.BigDecimal;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ServiceProduct {
    public static List<Product> getAllProducts() {
        List<Product> products = new ArrayList<>();
        String query = "SELECT p.product_id, p.product_name, p.description, p.unit_price, p.quantity, i.path AS image_path " +
                "FROM products p JOIN images i ON p.image_id = i.image_id";
        try (Connection conn = DataBaseConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(query);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Product product = new Product();
                product.setProductId(rs.getInt("product_id"));
                product.setProductName(rs.getString("product_name"));
                product.setDescription(rs.getString("description"));
                product.setUnitPrice(rs.getBigDecimal("unit_price"));
                product.setQuantity(rs.getInt("quantity"));
                product.setImagePath(rs.getString("image_path"));
                products.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }

    public static List<Product> getFeaturedProducts() {
        ProductDAO productDAO = new ProductDAO();
        return productDAO.getTopDiscountedProducts();
    }


    public static List<Product> getTopDiscountedProducts() {
        List<Product> products = new ArrayList<>();
        products.add(new Product(1, "Kiss Me", "images/san-pham.webp", "Hoa hồng đỏ tươi", BigDecimal.valueOf(300000)));
        products.add(new Product(2, "Rose", "images/san-pham-2.jpg", "Hoa hồng đẹp", BigDecimal.valueOf(250000)));
        products.add(new Product(3, "Lily", "images/san-pham-3.jpg", "Hoa ly trắng", BigDecimal.valueOf(180000)));
        products.add(new Product(4, "Tulip", "images/san-pham-4.webp", "Hoa tulip vàng", BigDecimal.valueOf(220000)));
        return products;
    }

    public static Product getSingleProduct() {
        return new Product(1, "Kiss Me", "images/san-pham.webp", "Hoa hồng", BigDecimal.valueOf(300000));
    }


}

