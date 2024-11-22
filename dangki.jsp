
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Đăng Ký Tài Khoản</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    .error-message {
      color: red;
      font-size: 0.875em;
      display: none;
    }
  </style>
</head>
<body>

<div class="container mt-5">
  <div class="row justify-content-center">
    <div class="col-md-6">
      <h2 class="text-center mb-4">Đăng Ký Tài Khoản</h2>
      <form id="registerForm" novalidate>
        <div class="mb-3">
          <label for="fullname" class="form-label">Họ tên</label>
          <input type="text" class="form-control" id="fullname" placeholder="Họ tên" required>
          <span class="error-message" id="name-error">Tên phải có từ 1 đến 32 ký tự!</span>
        </div>
        <div class="mb-3">
          <label for="email" class="form-label">E-mail</label>
          <input type="email" class="form-control" id="email" placeholder="E-mail" required>
          <span class="error-message" id="email-error">Địa chỉ E-Mail dường như không hợp lệ!</span>
        </div>
        <div class="mb-3">
          <label for="phone" class="form-label">Điện thoại</label>
          <input type="text" class="form-control" id="phone" placeholder="Điện thoại" required>
          <span class="error-message" id="phone-error">Điện thoại phải có từ 10 đến 12 số!</span>
        </div>
        <div class="mb-3">
          <label for="password" class="form-label">Mật khẩu</label>
          <input type="password" class="form-control" id="password" placeholder="Mật khẩu" required>
          <span class="error-message" id="password-error">Mật khẩu phải từ 4 đến 20 ký tự!</span>
        </div>
        <div class="form-check mb-3">
          <input type="checkbox" class="form-check-input" id="terms" required>
          <label class="form-check-label" for="terms">Tôi đã đọc và đồng ý với <a href="#">Điều khoản & Điều kiện</a></label>
        </div>
        <button type="button" class="btn btn-primary w-100" onclick="validateForm()">Tiếp tục</button>
      </form>
    </div>
  </div>
</div>

<script>
  function validateForm() {
    let isValid = true;

    // Lấy giá trị các trường
    const fullname = document.getElementById("fullname").value.trim();
    const email = document.getElementById("email").value.trim();
    const phone = document.getElementById("phone").value.trim();
    const password = document.getElementById("password").value.trim();

    // Kiểm tra Họ tên
    if (fullname.length < 1 || fullname.length > 32) {
      document.getElementById("name-error").style.display = "block";
      isValid = false;
    } else {
      document.getElementById("name-error").style.display = "none";
    }

    // Kiểm tra E-mail
    const emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
    if (!emailPattern.test(email)) {
      document.getElementById("email-error").style.display = "block";
      isValid = false;
    } else {
      document.getElementById("email-error").style.display = "none";
    }

    // Kiểm tra Điện thoại
    const phonePattern = /^[0-9]{10,12}$/;
    if (!phonePattern.test(phone)) {
      document.getElementById("phone-error").style.display = "block";
      isValid = false;
    } else {
      document.getElementById("phone-error").style.display = "none";
    }

    // Kiểm tra Mật khẩu
    if (password.length < 4 || password.length > 20) {
      document.getElementById("password-error").style.display = "block";
      isValid = false;
    } else {
      document.getElementById("password-error").style.display = "none";
    }

    // Nếu tất cả hợp lệ, thông báo đăng ký thành công
    if (isValid) {
      alert("Đăng ký thành công!");
    }
  }
</script>

</body>
</html>

