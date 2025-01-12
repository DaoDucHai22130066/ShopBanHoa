package com.shopbanhoa.shopbanhoa_web.controller;

import com.projectltw.shopbanhoa.service.OrderService;
import com.projectltw.shopbanhoa.model.Order;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;

public class OrderController extends HttpServlet {

    private OrderService orderService;

    @Override
    public void init() throws ServletException {
        orderService = new OrderService();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("create".equals(action)) {
            createOrder(request, response);
        }
    }

    private void createOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int userId = Integer.parseInt(request.getParameter("userId"));
        String productDetails = request.getParameter("productDetails");
        Order order = new Order(userId, productDetails);

        boolean isOrderCreated = orderService.createOrder(order);
        if (isOrderCreated) {
            response.sendRedirect("orderSuccess.jsp");
        } else {
            request.setAttribute("errorMessage", "Order creation failed.");
            request.getRequestDispatcher("/pages/giohang.jsp").forward(request, response);
        }
    }
}
