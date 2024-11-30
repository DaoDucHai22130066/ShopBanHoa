<<<<<<< HEAD
document.addEventListener("DOMContentLoaded", function () {
  // Kiểm tra nếu người dùng đã đăng nhập (kiểm tra từ localStorage)
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

  // Đăng xuất
  if (logoutBtn) {
    logoutBtn.addEventListener("click", function () {
      localStorage.removeItem("username"); // Xóa tên người dùng khỏi localStorage
      window.location.href = "index.html"; // Điều hướng lại trang chủ
    });
  }
});

document.addEventListener("DOMContentLoaded", function () {
  // Lấy form đổi mật khẩu
  const changePasswordForm = document.getElementById("changePasswordForm");
=======
document.addEventListener("DOMContentLoaded", () => {
  // Lấy thông tin người dùng từ localStorage
  const userData = JSON.parse(localStorage.getItem("userData"));
>>>>>>> main

  // Kiểm tra nếu không có userData thì chuyển hướng về trang đăng nhập
  if (!userData) {
      alert("Bạn chưa đăng nhập. Vui lòng đăng nhập trước.");
      window.location.href = "login.html"; // Điều hướng đến trang đăng nhập
  }

  // Xử lý đổi mật khẩu
  const changePasswordForm = document.getElementById("changePasswordForm");
  if (changePasswordForm) {
      changePasswordForm.addEventListener("submit", (e) => {
          e.preventDefault();

          // Lấy giá trị từ các trường nhập liệu
          const currentPassword = document.getElementById("currentPassword").value.trim();
          const newPassword = document.getElementById("newPassword").value.trim();
          const confirmPassword = document.getElementById("confirmPassword").value.trim();

          // Kiểm tra mật khẩu cũ
          if (currentPassword !== userData.password) {
              alert("Mật khẩu cũ không đúng. Vui lòng kiểm tra lại.");
              return;
          }

          // Kiểm tra mật khẩu mới và xác nhận mật khẩu mới
          if (newPassword !== confirmPassword) {
              alert("Mật khẩu mới và xác nhận mật khẩu không khớp. Vui lòng nhập lại.");
              return;
          }

          // Cập nhật mật khẩu mới vào localStorage
          userData.password = newPassword;
          localStorage.setItem("userData", JSON.stringify(userData));

          alert("Mật khẩu đã được thay đổi thành công!");
          window.location.href = "index.html"; // Quay về trang chủ sau khi đổi mật khẩu
      });
  }
});
