document.addEventListener("DOMContentLoaded", function () {
  // Xử lý sự kiện submit form
  document.querySelector("form").addEventListener("submit", function (e) {
    e.preventDefault(); // Ngăn form tự động submit

    // Lấy thông tin nhập từ người dùng
    const email = document.getElementById("loginEmail").value.trim();
    const password = document.getElementById("loginPassword").value.trim();

    // Lấy dữ liệu từ localStorage (nếu có)
    const user = JSON.parse(localStorage.getItem("user"));

    if (!user) {
      alert("Không tìm thấy thông tin tài khoản. Vui lòng đăng ký!");
      return;
    }

    // Kiểm tra thông tin đăng nhập
    if (email === user.email && password === user.password) {
      alert("Đăng nhập thành công!");
      // Điều hướng tới trang khác (ví dụ: trang chủ)
      window.location.href = "index.html";
    } else {
      alert("Email hoặc mật khẩu không đúng!");
    }
  });
});
