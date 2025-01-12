<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 27/12/2024
  Time: 09:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Lấy lại mật khẩu</title>
  <!--    Shortcut Icon-->
  <link rel="icon" href="images/icon-logo.png" type="image/png">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
  <!-- Custom CSS -->
  <link rel="stylesheet" href="css/dangki.css" />
</head>



<body>
<jsp:include page="header.jsp"/>
<main>
<div class="container mt-5">
  <div class="text-center mb-4">
    <h1 class="fw-bold text-danger">Bloom & Shine</h1>
    <p class="text-muted">Say it with Flowers</p>
  </div>
  <div class="card mx-auto shadow-sm" style="max-width: 400px">
    <div class="card-body">
      <h2 class="text-center mb-4">Bạn quên mật khẩu ư?</h2>
      <p class="text-center text-muted">
        Nhập email bạn đã đăng ký tài khoản để lấy lại mật khẩu.
      </p>
      <form id="forgotPasswordForm">
        <div class="mb-3">
          <label for="forgotEmail" class="form-label">E-mail</label>
          <input type="email" class="form-control" id="forgotEmail" placeholder="Nhập email"
                 required />
        </div>
        <button type="submit" class="btn btn-danger w-100">
          Lấy lại mật khẩu
        </button>
      </form>
    </div>
  </div>
</div>
</main>
<jsp:include page="footer.jsp"/>
<!-- Bootstrap JS and dependencies -->
<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Custom JS -->
<script src="index.jsp"></script>
<script src="js/quenmatkhau.js"></script>


</body>
</html>
