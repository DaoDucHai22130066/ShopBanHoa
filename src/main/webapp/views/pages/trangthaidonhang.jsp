<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 03/01/2025
  Time: 19:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>Lịch sử đơn hàng</title>
  <!--    Shortcut Icon-->
  <link rel="shortcut icon" type="images/png" href="images/logo-icon.png" />
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
  <h1 class="text-center mb-4">Trạng Thái Đơn Hàng</h1>
  <div class="row">
    <div class="col-md-12">
      <table class="table table-striped">
        <thead>
        <tr>
          <th>Ảnh sản phẩm</th>
          <th>Tên sản phẩm</th>
          <th>Số lượng</th>
          <th>Giá</th>
          <th>Mã đơn hàng</th>
          <th>Trạng thái đơn hàng</th>
          <th>Xác nhận đã giao</th>
        </tr>
        </thead>
        <tbody>
        <tr>
          <td><img src="../../images/sp-hoa-thanhtu.png" alt="Product Image" width="50" height="auto"
                   class="img-fluid"></td>
          <td>Thanh tú</td>
          <td>1</td>
          <td>100.000đ</td>
          <td>
            <div class="btn btn-primary">BOUQUET-10027</div>
          </td>
          <td>
            <div class="btn btn-primary">Hàng đang được giao</div>
          </td>
          <td>
            <div class="btn btn-secondary"> Xác nhận</div>
          </td>
        </tr>
        </tbody>
      </table>
    </div>
  </div>
</div>


</main>
<jsp:include page="../layout/footer.jsp"/>
<!-- Bootstrap JS and dependencies -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
<script src="../../js/themgio.js"></script>
<script src="../../js/index.js"></script>


</body>
</html>
