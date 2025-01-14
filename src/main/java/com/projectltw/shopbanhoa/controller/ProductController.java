package com.projectltw.shopbanhoa.controller;

import com.projectltw.shopbanhoa.dao.ProductDAO;
import com.projectltw.shopbanhoa.model.Product;
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
        int categoryId = Integer.parseInt(request.getParameter("category_id")); // Lấy category_id từ URL
        ProductDAO productDAO = new ProductDAO();
        List<Product> products = productDAO.getProductsByCategory(categoryId);
        request.setAttribute("products", products); // Gán danh sách sản phẩm vào request
        request.getRequestDispatcher("/views/pages/hoa-sinh-nhat.jsp").forward(request, response); // Chuyển tiếp đến JSP
    }
}