 // Hàm đăng ký tài khoản
 function register() {
  const name = document.getElementById("name").value.trim();
  const email = document.getElementById("email").value.trim();
  const phone = document.getElementById("phone").value.trim();
  const password = document.getElementById("password").value.trim();

  let isValid = true;

  // Kiểm tra tính hợp lệ của các trường
  if (!name) document.getElementById("nameError").style.display = "block";
  else document.getElementById("nameError").style.display = "none";

  const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  if (!email || !emailPattern.test(email)) document.getElementById("emailError").style.display = "block";
  else document.getElementById("emailError").style.display = "none";

  const phonePattern = /^\d{10,12}$/;
  if (!phone || !phonePattern.test(phone)) document.getElementById("phoneError").style.display = "block";
  else document.getElementById("phoneError").style.display = "none";

  if (password.length < 4 || password.length > 20) document.getElementById("passwordError").style.display = "block";
  else document.getElementById("passwordError").style.display = "none";

  isValid = name && email && emailPattern.test(email) && phonePattern.test(phone) && (password.length >= 4 && password.length <= 20);

  // Nếu hợp lệ, lưu vào localStorage
  if (isValid) {
      const user = { name, email, phone, password };
      localStorage.setItem("userData", JSON.stringify(user));
      alert("Đăng ký thành công!");
      showLogin();
  }
}

// Hàm đăng nhập
function login() {
const email = document.getElementById("loginEmail").value.trim();
const password = document.getElementById("loginPassword").value.trim();

// Lấy danh sách người dùng từ LocalStorage
const users = JSON.parse(localStorage.getItem("users")) || [];

// Kiểm tra thông tin đăng nhập
const user = users.find(
  (user) => user.email === email && user.password === password
);

if (user) {
  alert("Đăng nhập thành công!");
  localStorage.setItem("currentUser", JSON.stringify(user)); // Lưu thông tin người dùng hiện tại
  document.getElementById("account-link").textContent = "Xin chào, " + user.name;
  document.getElementById("logout-link").style.display = "inline-block";
  document.getElementById("change-password-button").style.display = "inline-block"; // Hiển thị nút "Đổi mật khẩu"
  toggleModal(); // Đóng modal đăng nhập
} else {
  alert("Email hoặc mật khẩu không đúng!");
}
}


// Chuyển đổi giữa form đăng ký và đăng nhập
function showRegister() {
  document.getElementById("loginForm").style.display = "none";
  document.getElementById("registerForm").style.display = "block";
}
function showForgotPassword() {
document.getElementById("loginForm").style.display = "none";
document.getElementById("forgotPasswordForm").style.display = "block";
}



function showLogin() {
  document.getElementById("registerForm").style.display = "none";
  document.getElementById("loginForm").style.display = "block";
}



window.onload = function () {
// Kiểm tra thông tin người dùng trong localStorage
const currentUser = JSON.parse(localStorage.getItem("currentUser"));

if (currentUser) {
  // Nếu đã đăng nhập
  document.getElementById("account-link").textContent = "Xin chào, " + currentUser.name;
  document.getElementById("logout-link").style.display = "inline-block";
  document.getElementById("change-password-button").style.display = "inline-block";
} else {
  // Nếu chưa đăng nhập (trạng thái mặc định)
  document.getElementById("account-link").textContent = "Tài khoản";
  document.getElementById("logout-link").style.display = "none";
  document.getElementById("change-password-button").style.display = "none";
}
};


// Hàm đăng xuất
function logout() {
// Xóa thông tin người dùng hiện tại
localStorage.removeItem("currentUser");
alert("Bạn đã đăng xuất thành công!");

// Đặt lại giao diện về trạng thái mặc định
document.getElementById("account-link").textContent = "Tài khoản";
document.getElementById("logout-link").style.display = "none";
document.getElementById("change-password-button").style.display = "none";
}



function forgotPassword() {
const email = document.getElementById("forgotEmail").value.trim();
const users = JSON.parse(localStorage.getItem("users")) || [];
const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

// Kiểm tra email hợp lệ
if (!emailPattern.test(email)) {
  document.getElementById("forgotEmailError").style.display = "block";
  return;
} else {
  document.getElementById("forgotEmailError").style.display = "none";
}

// Kiểm tra email có tồn tại trong hệ thống
const user = users.find(user => user.email === email);

if (user) {
  // Gửi email sử dụng EmailJS
  const templateParams = {
      to_email: email,
      user_name: user.name,
      password: user.password, // Gửi mật khẩu trực tiếp (không an toàn nếu lưu plaintext)
  };

  emailjs.send("YOUR_SERVICE_ID", "YOUR_TEMPLATE_ID", templateParams)
      .then(() => {
          alert("Mật khẩu đã được gửi đến email của bạn!");
          showLogin();
      })
      .catch(error => {
          console.error("Lỗi gửi email:", error);
          alert("Không thể gửi email. Vui lòng thử lại sau!");
      });
} else {
  alert("Email không tồn tại trong hệ thống!");
}
}
function changePassword() {
const currentPassword = document.getElementById("currentPassword").value.trim();
const newPassword = document.getElementById("newPassword").value.trim();
const confirmPassword = document.getElementById("confirmPassword").value.trim();
const currentUser = JSON.parse(localStorage.getItem("currentUser"));
let users = JSON.parse(localStorage.getItem("users")) || [];

if (!currentUser) {
  alert("Bạn cần đăng nhập trước!");
  return;
}

if (currentUser.password !== currentPassword) {
  alert("Mật khẩu hiện tại không đúng!");
  return;
}

if (newPassword !== confirmPassword) {
  alert("Mật khẩu mới và xác nhận không khớp!");
  return;
}

if (newPassword.length < 4 || newPassword.length > 20) {
  alert("Mật khẩu mới phải từ 4 đến 20 ký tự!");
  return;
}

// Cập nhật mật khẩu trong danh sách người dùng
users = users.map((user) =>
  user.email === currentUser.email ? { ...user, password: newPassword } : user
);
localStorage.setItem("users", JSON.stringify(users));

// Cập nhật mật khẩu cho người dùng hiện tại
currentUser.password = newPassword;
localStorage.setItem("currentUser", JSON.stringify(currentUser));

alert("Đổi mật khẩu thành công!");
closeModal("changePasswordModal");
}
window.onload = function () {
// Kiểm tra thông tin người dùng trong localStorage
const currentUser = JSON.parse(localStorage.getItem("currentUser"));

if (currentUser) {
  // Nếu đã đăng nhập
  document.getElementById("account-link").textContent = "Xin chào, " + currentUser.name;
  document.getElementById("logout-link").style.display = "inline-block";
  document.getElementById("change-password-button").style.display = "inline-block";
} else {
  // Nếu chưa đăng nhập (trạng thái mặc định)
  document.getElementById("account-link").textContent = "Tài khoản";
  document.getElementById("logout-link").style.display = "none";
  document.getElementById("change-password-button").style.display = "none";
}
};