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

  // Đăng xuất
  if (logoutBtn) {
    logoutBtn.addEventListener("click", function () {
      localStorage.removeItem("username"); // Xóa tên người dùng khỏi localStorage
      window.location.href = "index.html"; // Điều hướng lại trang chủ
    });
  }
});