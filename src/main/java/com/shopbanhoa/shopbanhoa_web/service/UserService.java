package com.shopbanhoa.shopbanhoa_web.service;

import com.shopbanhoa.shopbanhoa_web.dao.UserDAO;
import com.shopbanhoa.shopbanhoa_web.model.User;

public class UserService {

    private UserDAO userDAO;

    public UserService() {
        userDAO = new UserDAO();
    }

    public boolean registerUser(User user) {
        return userDAO.registerUser(user);
    }

    public User loginUser(String username, String password) {
        User user = userDAO.getUserByUsername(username);
        if (user != null && user.getPassword().equals(password)) {
            return user;
        }
        return null;
    }
}
