package com.projectltw.shopbanhoa.controller;

import com.projectltw.shopbanhoa.dao.CategoryDAO;
import com.projectltw.shopbanhoa.model.Category;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/hoa-sinh-nhat")
public class CategoryController extends HttpServlet {
    private CategoryDAO categoryDAO;

    public CategoryController() throws SQLException {
        try {
            categoryDAO = new CategoryDAO();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String categoryIdParam = request.getParameter("category_id");
        if (categoryIdParam != null) {
            int categoryId = Integer.parseInt(categoryIdParam);
            // Lấy thông tin danh mục từ database
            Category category = categoryDAO.getCategoryById(categoryId);
            request.setAttribute("category", category);
        }
        request.getRequestDispatcher("hoa-sinh-nhat.jsp").forward(request, response);
    }
}
