// Validation for Registration Form
function validateForm() {
  let isValid = true;

  const fullname = document.getElementById("fullname").value.trim();
  const email = document.getElementById("email").value.trim();
  const phone = document.getElementById("phone").value.trim();
  const password = document.getElementById("password").value.trim();

  // Full Name Validation
  if (fullname.length < 1 || fullname.length > 32) {
    document.getElementById("name-error").style.display = "block";
    isValid = false;
  } else {
    document.getElementById("name-error").style.display = "none";
  }

  // Email Validation
  const emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
  if (!emailPattern.test(email)) {
    document.getElementById("email-error").style.display = "block";
    isValid = false;
  } else {
    document.getElementById("email-error").style.display = "none";
  }

  // Phone Validation
  const phonePattern = /^[0-9]{10,12}$/;
  if (!phonePattern.test(phone)) {
    document.getElementById("phone-error").style.display = "block";
    isValid = false;
  } else {
    document.getElementById("phone-error").style.display = "none";
  }

  // Password Validation
  if (password.length < 4 || password.length > 20) {
    document.getElementById("password-error").style.display = "block";
    isValid = false;
  } else {
    document.getElementById("password-error").style.display = "none";
  }

  return isValid;
}

// Handle Registration Submission
function handleFormSubmission(event) {
  event.preventDefault();
  if (validateForm()) {
    const fullname = document.getElementById("fullname").value.trim();
    const email = document.getElementById("email").value.trim();
    const password = document.getElementById("password").value.trim();

    // Store user data in localStorage
    localStorage.setItem("userEmail", email);
    localStorage.setItem("userPassword", password);
    localStorage.setItem("userFullname", fullname);

    alert("Registration successful!");
    showLogin(); // Show login form after registration
  }
}

// Login Validation
function validateLogin(event) {
  event.preventDefault();
  const email = document.getElementById("login-email").value.trim();
  const password = document.getElementById("login-password").value.trim();

  // Retrieve stored data for validation
  const storedEmail = localStorage.getItem("userEmail");
  const storedPassword = localStorage.getItem("userPassword");

  if (email === storedEmail && password === storedPassword) {
    alert("Login successful!");
    showHome(); // Show home section after successful login
  } else {
    document.getElementById("login-email-error").style.display = "block";
  }
}

// Show Registration Form
function showRegister() {
  document.getElementById("register-container").style.display = "block";
  document.getElementById("login-container").style.display = "none";
  document.getElementById("home-container").style.display = "none";
}

// Show Login Form
function showLogin() {
  document.getElementById("register-container").style.display = "none";
  document.getElementById("login-container").style.display = "block";
  document.getElementById("home-container").style.display = "none";
}

// Show Home Section (After Login)
function showHome() {
  document.getElementById("register-container").style.display = "none";
  document.getElementById("login-container").style.display = "none";
  document.getElementById("home-container").style.display = "block";

  // Display user's name in the welcome message
  const fullname = localStorage.getItem("userFullname");
  document.getElementById("user-fullname").textContent = fullname;
}

// Logout Function
function logout() {
  localStorage.removeItem("userEmail");
  localStorage.removeItem("userPassword");
  localStorage.removeItem("userFullname");
  alert("You have been logged out.");
  showLogin(); // Redirect to login form
}

// Event Listeners
document
  .getElementById("register-form")
  .addEventListener("submit", handleFormSubmission);
document.getElementById("login-form").addEventListener("submit", validateLogin);

// Auto-login if already logged in (for session persistence)
if (localStorage.getItem("userEmail") && localStorage.getItem("userPassword")) {
  showHome();
} else {
  showLogin();
}
function showLogin() {
  console.log("Switching to Login form");
  document.getElementById("register-container").style.display = "none";
  document.getElementById("login-container").style.display = "block";
  document.getElementById("home-container").style.display = "none";
}

function register() {
  const name = document.getElementById("name").value.trim();
  const email = document.getElementById("email").value.trim();
  const phone = document.getElementById("phone").value.trim();
  const password = document.getElementById("password").value.trim();

  let isValid = true;

  // Kiểm tra tính hợp lệ của các trường
  if (!name) {
    document.getElementById("nameError").style.display = "block";
    isValid = false;
  } else {
    document.getElementById("nameError").style.display = "none";
  }

  const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  if (!email || !emailPattern.test(email)) {
    document.getElementById("emailError").style.display = "block";
    isValid = false;
  } else {
    document.getElementById("emailError").style.display = "none";
  }

  const phonePattern = /^\d{10,12}$/;
  if (!phone || !phonePattern.test(phone)) {
    document.getElementById("phoneError").style.display = "block";
    isValid = false;
  } else {
    document.getElementById("phoneError").style.display = "none";
  }

  if (password.length < 4 || password.length > 20) {
    document.getElementById("passwordError").style.display = "block";
    isValid = false;
  } else {
    document.getElementById("passwordError").style.display = "none";
  }

  if (isValid) {
    // Lấy danh sách người dùng từ LocalStorage
    let users = JSON.parse(localStorage.getItem("users")) || [];

    // Kiểm tra email đã tồn tại
    const isEmailExist = users.some((user) => user.email === email);
    if (isEmailExist) {
      alert("Email đã được sử dụng. Vui lòng sử dụng email khác.");
      return;
    }

    // Lưu người dùng mới vào danh sách
    users.push({ name, email, phone, password });
    localStorage.setItem("users", JSON.stringify(users));

    alert("Đăng ký thành công!");
    showLogin();
  }
}

// Hiển thị form chỉnh sửa tài khoản
function showEditAccount() {
  const userData = JSON.parse(localStorage.getItem("userData"));
  if (userData) {
    document.getElementById("editName").value = userData.name || "";
    document.getElementById("editEmail").value = userData.email || "";
    document.getElementById("editPhone").value = userData.phone || "";
  }
  document.getElementById("editAccountModal").style.display = "flex";
}

// Lưu thông tin tài khoản
function saveAccountInfo() {
  const name = document.getElementById("editName").value.trim();
  const email = document.getElementById("editEmail").value.trim();
  const phone = document.getElementById("editPhone").value.trim();

  const userData = { name, email, phone };
  localStorage.setItem("userData", JSON.stringify(userData));
  alert("Cập nhật thành công!");
  closeModal("editAccountModal");
}

// Hiển thị form đổi mật khẩu
function showChangePassword() {
  document.getElementById("changePasswordModal").style.display = "flex";
}

// Đổi mật khẩu
function changePassword() {
  const currentPassword = document.getElementById("currentPassword").value;
  const newPassword = document.getElementById("newPassword").value;
  const confirmPassword = document.getElementById("confirmPassword").value;
  const userData = JSON.parse(localStorage.getItem("userData"));

  if (
    userData &&
    userData.password === currentPassword &&
    newPassword === confirmPassword
  ) {
    userData.password = newPassword;
    localStorage.setItem("userData", JSON.stringify(userData));
    alert("Đổi mật khẩu thành công!");
    closeModal("changePasswordModal");
  } else {
    alert("Mật khẩu không đúng hoặc mật khẩu mới không khớp!");
  }
}

// Đóng modal
function closeModal(modalId) {
  document.getElementById(modalId).style.display = "none";
}

// Kiểm tra trạng thái đăng nhập khi tải trang
window.onload = function () {
  const userData = JSON.parse(localStorage.getItem("userData"));
  if (userData) {
    document.getElementById("account-link").textContent =
      "Xin chào, " + userData.name;
    document.getElementById("accountDropdown").style.display = "block";
  }
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
      document.getElementById("account-link").textContent =
        "Xin chào, " + user.name;
      document.getElementById("logout-link").style.display = "inline-block";
      toggleModal(); // Đóng modal đăng nhập
    } else {
      document.getElementById("loginError").style.display = "block";
    }
  }
  window.onload = function () {
    const currentUser = JSON.parse(localStorage.getItem("currentUser"));
    if (currentUser) {
      document.getElementById("account-link").textContent =
        "Xin chào, " + currentUser.name;
      document.getElementById("logout-link").style.display = "inline-block";
    }
  };
  function logout() {
    localStorage.removeItem("currentUser");
    alert("Bạn đã đăng xuất thành công!");
    window.location.reload(); // Tải lại trang
  }
  const hashedPassword = CryptoJS.SHA256(password).toString();
};
