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
  const loginForm = document.getElementById("loginForm");
=======
document.addEventListener("DOMContentLoaded", () => {
    // Lấy các phần tử trong dropdown
    const loginBtn = document.getElementById("loginBtn");
    const signupBtn = document.getElementById("signupBtn");
    const accountBtn = document.getElementById("accountBtn");
    const accountText = document.getElementById("accountText");  // Lấy phần tử chứa tên tài khoản
    const logoutBtn = document.getElementById("logoutBtn");
>>>>>>> main

    // Kiểm tra trạng thái đăng nhập từ localStorage
    const isLoggedIn = localStorage.getItem("isLoggedIn") === "true";
    const userData = JSON.parse(localStorage.getItem("userData"));

<<<<<<< HEAD
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
=======
    // Hàm cập nhật giao diện dropdown
    function updateDropdown() {
        if (isLoggedIn && userData) {
            loginBtn.style.display = "none";
            signupBtn.style.display = "none";
            accountBtn.style.display = "block";
            logoutBtn.style.display = "block";
            // Cập nhật nội dung tài khoản với tên người dùng
            accountText.textContent = `Xin chào, ${userData.firstName}`;
        } else {
            loginBtn.style.display = "block";
            signupBtn.style.display = "block";
            accountBtn.style.display = "none";
            logoutBtn.style.display = "none";
            accountText.textContent = "Tài khoản";  // Nếu chưa đăng nhập, hiển thị "Tài khoản"
        }
>>>>>>> main
    }
    // Gọi hàm cập nhật giao diện khi tải trang
    updateDropdown();

    // Xử lý đăng ký
    const registerForm = document.getElementById("registerForm");
    if (registerForm) {
        registerForm.addEventListener("submit", (e) => {
            e.preventDefault();

            // Lấy thông tin người dùng từ form
            const firstName = document.getElementById("firstName").value;
            const lastName = document.getElementById("lastName").value;
            const email = document.getElementById("email").value;
            const phone = document.getElementById("phone").value;
            const password = document.getElementById("password").value;

            // Lưu thông tin vào localStorage
            const userData = { firstName, lastName, email, phone, password };
            localStorage.setItem("userData", JSON.stringify(userData));
            localStorage.setItem("isLoggedIn", "true");

            // Thông báo và chuyển hướng
            alert("Đăng ký thành công!");
            window.location.href = "index.html";
        });
    }

    // Xử lý đăng nhập
    const loginForm = document.getElementById("loginForm");
    if (loginForm) {
        loginForm.addEventListener("submit", (e) => {
            e.preventDefault();

            // Lấy thông tin người dùng từ form
            const email = document.getElementById("loginEmail").value;
            const password = document.getElementById("loginPassword").value;

            // Kiểm tra thông tin đăng nhập
            const storedUserData = JSON.parse(localStorage.getItem("userData"));
            if (
                storedUserData &&
                storedUserData.email === email &&
                storedUserData.password === password
            ) {
                localStorage.setItem("isLoggedIn", "true");
                alert("Đăng nhập thành công!");
                window.location.href = "index.html";
            } else {
                alert("Email hoặc mật khẩu không đúng!");
            }
        });
    }

    // Xử lý đăng xuất
    if (logoutBtn) {
        logoutBtn.addEventListener("click", (e) => {
            e.preventDefault();

            // Xóa trạng thái đăng nhập
            localStorage.setItem("isLoggedIn", "false");
            alert("Đăng xuất thành công!");
            updateDropdown();
            window.location.href = "index.html";
        });
    }

    // Hiển thị thông tin người dùng trong trang "Xem tài khoản"
    const accountInfoForm = document.getElementById("accountInfoForm");
    if (accountInfoForm && userData) {
        // Hiển thị email (dùng span để chỉ hiển thị, không chỉnh sửa)
        const emailElement = document.getElementById("emailInput");
        if (emailElement) {
            emailElement.textContent = userData.email || "";
        }

        // Hiển thị tên (chỉnh sửa được)
        const firstNameInput = document.getElementById("firstNameInput");
        if (firstNameInput) {
            firstNameInput.value = userData.firstName || "";
        }

        // Hiển thị họ (chỉnh sửa được)
        const lastNameInput = document.getElementById("lastNameInput");
        if (lastNameInput) {
            lastNameInput.value = userData.lastName || "";
        }

        // Hiển thị số điện thoại (chỉnh sửa được)
        const phoneInput = document.getElementById("phoneInput");
        if (phoneInput) {
            phoneInput.value = userData.phone || "";
        }
    }
});