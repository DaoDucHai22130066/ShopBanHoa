<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
  <title>Kết quả tìm kiếm</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container">
  <h2>Kết quả tìm kiếm</h2>
  <%
    String query = request.getParameter("query"); // Lấy từ khóa tìm kiếm
    if (query != null && !query.trim().isEmpty()) {
      try {
        Class.forName("com.mysql.cj.jdbc.Driver"); // Tải driver JDBC
        Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/shopbanhoa", "root", "password"); // Thay đổi user/pass

        // Truy vấn cơ sở dữ liệu
        String sql = "SELECT * FROM products WHERE product_name LIKE ?";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setString(1, "%" + query + "%");
        ResultSet rs = stmt.executeQuery();

        // Hiển thị kết quả
        if (rs.isBeforeFirst()) {
  %>
  <div class="product-list">
    <%
      while (rs.next()) {
        String name = rs.getString("product_name");
        String image = rs.getString("image");
        double price = rs.getDouble("unit_price");
        String description = rs.getString("description");
    %>
    <div class="product-card">
      <img src="<%=image %>" alt="<%=name %>" class="product-image">
      <h3 class="product-name"><%=name %></h3>
      <p class="product-price">Giá: <%=price %> VND</p>
      <p class="product-description"><%=description %></p>
    </div>
    <%
      }
    %>
  </div>
  <%
  } else {
  %>
  <p>Không tìm thấy sản phẩm phù hợp với từ khóa "<%=query %>".</p>
  <%
      }

      rs.close();
      stmt.close();
      conn.close();
    } catch (Exception e) {
      out.println("<p>Lỗi: " + e.getMessage() + "</p>");
    }
  } else {
  %>
  <p>Vui lòng nhập từ khóa để tìm kiếm.</p>
  <%
    }
  %>
</div>
</body>
</html>
