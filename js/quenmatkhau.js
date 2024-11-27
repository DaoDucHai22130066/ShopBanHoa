document.addEventListener("DOMContentLoaded", function () {
  // Tìm form bằng id để tránh nhầm lẫn
  const forgotPasswordForm = document.getElementById("forgotPasswordForm");
  forgotPasswordForm.addEventListener("submit", function (e) {
    e.preventDefault(); // Ngăn form tự động submit

    // Lấy email từ input
    const email = document.getElementById("forgotEmail").value.trim();
    const user = JSON.parse(localStorage.getItem("user")); // Lấy dữ liệu từ localStorage

    // Kiểm tra email
    if (user && email === user.email) {
      alert("Mật khẩu của bạn là: " + user.password); // Hiển thị mật khẩu đã lưu
    } else {
      alert("Không tìm thấy tài khoản với email này!");
    }
  });
});
