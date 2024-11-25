document.addEventListener("DOMContentLoaded", function () {
  // Lấy form đăng nhập
  const loginForm = document.getElementById("loginForm");

  if (!loginForm) {
    console.error("Form đăng nhập không được tìm thấy!");
    return;
  }

  // Gắn sự kiện submit vào form đăng nhập
  loginForm.addEventListener("submit", function (e) {
    e.preventDefault(); // Ngăn form tự động submit

    // Lấy dữ liệu từ các trường
    const email = document.getElementById("loginEmail").value.trim();
    const password = document.getElementById("loginPassword").value.trim();

    // Lấy thông tin tài khoản đã đăng ký từ localStorage
    const user = JSON.parse(localStorage.getItem("user"));

    // Kiểm tra thông tin đăng nhập
    if (!user) {
      alert("Không tìm thấy tài khoản nào trong hệ thống!");
    } else if (user.email === email && user.password === password) {
      alert("Đăng nhập thành công!");
      // Điều hướng tới trang chính hoặc dashboard
      window.location.href = "index.html";
    } else {
      alert("Email hoặc mật khẩu không đúng!");
    }
  });
});
