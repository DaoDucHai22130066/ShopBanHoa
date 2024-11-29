document.addEventListener("DOMContentLoaded", function () {
  // Lấy tên người dùng từ localStorage
  const username = localStorage.getItem("username");

  // Lấy các phần tử cần thay đổi giao diện
  const accountDropdown = document.getElementById("accountDropdown");
  const loginBtn = document.getElementById("loginBtn");
  const signupBtn = document.getElementById("signupBtn");
  const accountBtn = document.getElementById("accountBtn");
  const logoutBtn = document.getElementById("logoutBtn");

  // Nếu có tên người dùng trong localStorage (đã đăng nhập)
  if (username) {
    // Hiển thị lời chào "Xin chào, [Tên người dùng]"
    accountDropdown.innerHTML = `Xin chào, ${username}!`;

    // Ẩn "Đăng nhập" và "Đăng ký"
    if (loginBtn) loginBtn.style.display = "none";
    if (signupBtn) signupBtn.style.display = "none";

    // Hiển thị "Xem tài khoản" và "Đăng xuất"
    if (accountBtn) accountBtn.style.display = "block";
    if (logoutBtn) logoutBtn.style.display = "block";
  } else {
    // Nếu chưa đăng nhập, hiển thị lại "Đăng nhập" và "Đăng ký"
    if (loginBtn) loginBtn.style.display = "block";
    if (signupBtn) signupBtn.style.display = "block";
    if (accountBtn) accountBtn.style.display = "none";
    if (logoutBtn) logoutBtn.style.display = "none";
  }

  // Đăng xuất với xác nhận
  if (logoutBtn) {
    logoutBtn.addEventListener("click", function () {
      // Hiển thị hộp thoại xác nhận
      const confirmLogout = confirm("Bạn có chắc chắn muốn đăng xuất không?");

      // Nếu người dùng nhấn "OK", tiến hành đăng xuất
      if (confirmLogout) {
        localStorage.removeItem("username"); // Xóa tên người dùng khỏi localStorage
        window.location.href = "index.html"; // Điều hướng lại trang chủ
      } else {
        // Nếu người dùng nhấn "Cancel", không làm gì cả
        console.log("Đăng xuất bị hủy.");
      }
    });
  }
});

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
