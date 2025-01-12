package com.shopbanhoa.shopbanhoa_web.service;

import com.shopbanhoa.shopbanhoa_web.dao.OrderDAO;
import com.shopbanhoa.shopbanhoa_web.model.Order;

public class OrderService {

    private OrderDAO orderDAO;

    public OrderService() {
        orderDAO = new OrderDAO();
    }

    public boolean createOrder(Order order) {
        return orderDAO.createOrder(order);
    }
}
