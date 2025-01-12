package com.shopbanhoa.shopbanhoa_web.service;

import com.shopbanhoa.shopbanhoa_web.dao.ProductDAO;
import com.shopbanhoa.shopbanhoa_web.model.Product;

import java.util.List;

public class ProductService {

    private ProductDAO productDAO;

    public ProductService() {
        productDAO = new ProductDAO();
    }

    public List<Product> getAllProducts() {
        return productDAO.getAllProducts();
    }

    public Product getProductById(int id) {
        return productDAO.getProductById(id);
    }
}
