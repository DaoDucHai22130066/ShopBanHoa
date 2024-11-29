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

      // Lưu tên người dùng vào localStorage
      localStorage.setItem("username", user.username);

      // Điều hướng về trang chủ (index.html)
      window.location.href = "index.html";
    } else {
      alert("Email hoặc mật khẩu không đúng!");
    }
  });
});
