<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 27/12/2024
  Time: 09:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Đổi Mật Khẩu</title>
  <!--    Shortcut Icon-->
  <link rel="icon" href="../../images/icon-logo.png" type="image/png">
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" />
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
  <!-- Custom CSS -->
  <link rel="stylesheet" href="../../css/dangki.css" />
</head>
<body>
<!-- Header -->
<jsp:include page="../layout/header.jsp"/>
<main>
<div class="container mt-5">
  <div class="card mx-auto shadow-sm" style="max-width: 400px">
    <div class="card-body">
      <h2 class="text-center mb-4">Đổi Mật Khẩu</h2>
      <form id="changePasswordForm">
        <div class="mb-3">
          <label for="currentPassword" class="form-label">Mật khẩu hiện tại</label>
          <input type="password" class="form-control" id="currentPassword" placeholder="Nhập mật khẩu hiện tại"
                 required />
        </div>
        <div class="mb-3">
          <label for="newPassword" class="form-label">Mật khẩu mới</label>
          <input type="password" class="form-control" id="newPassword" placeholder="Nhập mật khẩu mới" required />
        </div>
        <div class="mb-3">
          <label for="confirmPassword" class="form-label">Xác nhận mật khẩu mới</label>
          <input type="password" class="form-control" id="confirmPassword" placeholder="Nhập lại mật khẩu mới"
                 required />
        </div>
        <button type="submit" class="btn btn-danger w-100">
          Cập nhật mật khẩu
        </button>
      </form>
    </div>
  </div>
</div>
</main>
<jsp:include page="../layout/footer.jsp"/>
<!-- Bootstrap JS and dependencies -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
<script src="../../js/doimatkhau.js"></script>
<script src="../../js/index.js"></script>

</body>
</html>
