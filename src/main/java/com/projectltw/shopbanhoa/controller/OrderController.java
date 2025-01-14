package com.projectltw.shopbanhoa.controller;

import com.projectltw.shopbanhoa.utils.DataBaseConnect;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

@WebServlet(name = "LoginController", value = "/login")
public class OrderController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();

        try {
            Connection conn = DataBaseConnect.getConnection();
            Statement stmt = conn.createStatement();
            String query = "SELECT * FROM orders";  // Thay thế `orders` bằng bảng đơn hàng của bạn
            ResultSet rs = stmt.executeQuery(query);

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String uname = request.getParameter("uname");
        String pass = request.getParameter("pass");
        out.println("<p> Username: "+uname+" </p>");
        out.println("<p> Password: "+pass+" </p>");
    }
}
