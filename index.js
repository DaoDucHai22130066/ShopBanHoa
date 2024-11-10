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

function showRegister() {
  console.log("Switching to Register form");
  document.getElementById("register-container").style.display = "block";
  document.getElementById("login-container").style.display = "none";
  document.getElementById("home-container").style.display = "none";
}
