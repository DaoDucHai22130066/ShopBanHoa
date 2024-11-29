document.addEventListener("DOMContentLoaded", function () {
  // Lấy thông tin người dùng từ localStorage
  const user = JSON.parse(localStorage.getItem("user"));
  const username = localStorage.getItem("username");

  // Lấy các phần tử cần thay đổi giao diện
  const accountDropdown = document.getElementById("accountDropdown");
  const loginBtn = document.getElementById("loginBtn");
  const signupBtn = document.getElementById("signupBtn");
  const accountBtn = document.getElementById("accountBtn");
  const logoutBtn = document.getElementById("logoutBtn");

  // Kiểm tra xem người dùng đã đăng nhập chưa
  if (username && user) {
    // Hiển thị lời chào "Xin chào, [Họ tên]"
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
      const confirmLogout = confirm("Bạn có chắc chắn muốn đăng xuất không?");
      if (confirmLogout) {
        // Chỉ xóa username, giữ lại các thông tin còn lại
        window.location.href = "index.html"; // Điều hướng lại trang chủ
      }
    });
  }
});

document.addEventListener("DOMContentLoaded", function () {
  const loginForm = document.getElementById("loginForm");

  if (!loginForm) {
    console.error("Form đăng nhập không được tìm thấy!");
    return;
  }

  // Gắn sự kiện submit vào form đăng nhập
  loginForm.addEventListener("submit", function (e) {
    e.preventDefault(); // Ngăn form tự động submit

    const email = document.getElementById("loginEmail").value.trim();
    const password = document.getElementById("loginPassword").value.trim();

    // Lấy thông tin tài khoản đã đăng ký từ localStorage
    const user = JSON.parse(localStorage.getItem("user"));

    // Kiểm tra thông tin đăng nhập
    if (!user) {
      alert("Không tìm thấy tài khoản nào trong hệ thống!");
    } else if (user.email === email && user.password === password) {
      alert("Đăng nhập thành công!");

      // Lưu tên người dùng vào localStorage
      localStorage.setItem("username", user.fullName); // Lưu fullName vào localStorage

      // Điều hướng về trang chủ (index.html)
      window.location.href = "index.html";
    } else {
      alert("Email hoặc mật khẩu không đúng!");
    }
  });
});
