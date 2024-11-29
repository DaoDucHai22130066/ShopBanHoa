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
