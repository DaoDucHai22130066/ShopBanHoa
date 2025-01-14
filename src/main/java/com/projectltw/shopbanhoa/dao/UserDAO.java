package com.projectltw.shopbanhoa.dao;

import com.projectltw.shopbanhoa.model.User;
import java.sql.*;
import java.util.*;

public class UserDAO {
    private Connection connection;

    public UserDAO(Connection connection) {
        this.connection = connection;
    }

    public List<User> getAllUserTypes() throws SQLException {
        List<User> userTypes = new ArrayList<>();
        String query = "SELECT * FROM UserType";
        try (Statement stmt = connection.createStatement();
             ResultSet rs = stmt.executeQuery(query)) {
            while (rs.next()) {
                User userType = new User();
                userType.setUserId(rs.getInt("user_type_id"));
                userType.setFullName(rs.getString("type_name"));
                userTypes.add(userType);
            }
        }
        return userTypes;
    }
}
