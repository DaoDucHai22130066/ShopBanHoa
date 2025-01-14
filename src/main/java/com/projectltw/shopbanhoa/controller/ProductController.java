package com.projectltw.shopbanhoa.controller;

import com.projectltw.shopbanhoa.dao.ProductDAO;
import com.projectltw.shopbanhoa.model.Product;
import com.projectltw.shopbanhoa.service.ServiceProduct;
import java.io.IOException;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/products")
public class ProductController extends HttpServlet {
    private ProductDAO productDAO;

    public ProductController() {
        productDAO = new ProductDAO();
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> allProducts = ServiceProduct.getAllProducts();
        if (allProducts != null) {
            request.setAttribute("allProducts", allProducts); // Gửi tất cả sản phẩm đến JSP
        } else {
            System.out.println("No products found.");
        }

        // Lấy sản phẩm đang giảm giá
        List<Product> discountedProducts = ServiceProduct.getTopDiscountedProducts();
        if (discountedProducts != null) {
            request.setAttribute("discountedProducts", discountedProducts); // Gửi sản phẩm giảm giá đến JSP
        } else {
            System.out.println("No discounted products found.");
        }

        // Forward đến index.jsp
        request.getRequestDispatcher("/views/pages/index.jsp").forward(request, response);

    }

}
