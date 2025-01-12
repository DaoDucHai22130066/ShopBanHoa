<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 03/01/2025
  Time: 19:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Lịch sử đơn hàng</title>
  <!--    Shortcut Icon-->
  <link rel="shortcut icon" type="images/png" href="images/logo-icon.png"/>
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- FontAwesome CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
  <!-- Custom CSS -->
  <link rel="stylesheet" href="../../css/lich-su-don-hang.css">
</head>
<body>
<jsp:include page="../layout/header.jsp"/>
<main>
<div class="container mt-5">
  <h1 class="text-center mb-4">Lịch sử đơn hàng</h1>
  <div class="row">
    <div class="col-md-12">
      <table class="table table-striped">
        <thead>
        <tr>
          <th>Ảnh sản phẩm</th>
          <th>Tên sản phẩm</th>
          <th>Số lượng</th>
          <th>Giá</th>
          <th>Mua lại</th>
          <th>Liên hệ shop</th>
        </tr>
        </thead>
        <tbody>
        <tr>
          <td><img src="../../images/sp-hoa-thanhtu.png" alt="Product Image" width="50" height="auto" class="img-fluid"></td>
          <td>Thanh tú</td>
          <td>1</td>
          <td>100.000đ</td>
          <td>
            <button class="btn btn-primary"><a href="chi-tiet-sp.html">Mua lại</a></button>
          </td>
          <td>
            <button class="btn btn-secondary"><a href="https://www.facebook.com/messages/t/2859679667489525"></a>Liên hệ shop</button>
          </td>
        </tr>
        </tbody>
      </table>
    </div>
  </div>
</div>


</main>
<jsp:include page="../layout/footer.jsp"/>



</body>
</html>
