document.addEventListener("DOMContentLoaded", function () {
  // Lấy form đổi mật khẩu
  const changePasswordForm = document.getElementById("changePasswordForm");

  if (!changePasswordForm) {
    console.error("Form đổi mật khẩu không được tìm thấy!");
    return;
  }

  // Gắn sự kiện submit vào form
  changePasswordForm.addEventListener("submit", function (e) {
    e.preventDefault(); // Ngăn form tự động submit

    // Lấy dữ liệu từ các trường
    const currentPassword = document
      .getElementById("currentPassword")
      .value.trim();
    const newPassword = document.getElementById("newPassword").value.trim();
    const confirmPassword = document
      .getElementById("confirmPassword")
      .value.trim();

    // Lấy thông tin tài khoản từ localStorage
    const user = JSON.parse(localStorage.getItem("user"));

    if (!user) {
      alert("Không tìm thấy tài khoản!");
      return;
    }

    // Kiểm tra mật khẩu hiện tại
    if (currentPassword !== user.password) {
      alert("Mật khẩu hiện tại không đúng!");
      return;
    }

    // Kiểm tra mật khẩu mới
    if (newPassword.length < 6) {
      alert("Mật khẩu mới phải có ít nhất 6 ký tự!");
      return;
    }

    if (newPassword !== confirmPassword) {
      alert("Xác nhận mật khẩu không khớp!");
      return;
    }

    // Cập nhật mật khẩu
    user.password = newPassword;
    localStorage.setItem("user", JSON.stringify(user));
    alert("Đổi mật khẩu thành công!");
    changePasswordForm.reset(); // Reset form
    window.location.href = "dangnhap.html"; // Chuyển hướng về trang đăng nhập
  });
});
