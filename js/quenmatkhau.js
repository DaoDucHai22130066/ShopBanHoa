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
  // Tìm form bằng id để tránh nhầm lẫn
=======
document.addEventListener("DOMContentLoaded", () => {
>>>>>>> main
  const forgotPasswordForm = document.getElementById("forgotPasswordForm");

  if (forgotPasswordForm) {
      forgotPasswordForm.addEventListener("submit", (e) => {
          e.preventDefault();

          // Lấy email từ input
          const forgotEmail = document.getElementById("forgotEmail").value.trim();

          // Lấy dữ liệu người dùng từ localStorage
          const storedUserData = JSON.parse(localStorage.getItem("userData"));

          if (storedUserData && storedUserData.email === forgotEmail) {
              // Hiển thị mật khẩu nếu email hợp lệ
              alert(`Mật khẩu của bạn là: ${storedUserData.password}`);
          } else {
              // Hiển thị thông báo lỗi nếu email không tìm thấy
              alert("Email không tồn tại. Vui lòng kiểm tra lại.");
          }
      });
  }
});
