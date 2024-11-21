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

    if (isValid) {
        const users = JSON.parse(localStorage.getItem("users")) || [];
        const newUser = { name, email, phone, password };

        // Kiểm tra nếu email đã tồn tại
        if (users.find(user => user.email === email)) {
            alert("Email đã được đăng ký!");
            return;
        }

        users.push(newUser); // Thêm người dùng mới vào danh sách
        localStorage.setItem("users", JSON.stringify(users)); // Lưu danh sách người dùng
        alert("Đăng ký thành công!");
        showLogin();
    }
}


    // Hàm đăng nhập
    function login() {
    const email = document.getElementById("loginEmail").value.trim();
    const password = document.getElementById("loginPassword").value.trim();

    const users = JSON.parse(localStorage.getItem("users")) || [];
    const user = users.find(user => user.email === email && user.password === password);

    if (user) {
        alert("Đăng nhập thành công!");
        localStorage.setItem("currentUser", JSON.stringify(user)); // Lưu thông tin người dùng hiện tại
        document.getElementById("account-link").textContent = "Xin chào, " + user.name;
        document.getElementById("logout-link").style.display = "inline-block";
        document.getElementById("edit-account-button").style.display = "inline-block"; // Hiển thị nút chỉnh sửa tài khoản
        document.getElementById("change-password-button").style.display = "inline-block"; // Hiển thị nút đổi mật khẩu
        closeModal("account-modal"); // Đóng modal đăng nhập
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
    const currentUser = JSON.parse(localStorage.getItem("currentUser"));

    if (currentUser) {
        // Nếu đã đăng nhập
        document.getElementById("account-link").textContent = "Xin chào, " + currentUser.name;
        document.getElementById("logout-link").style.display = "inline-block";
        document.getElementById("change-password-button").style.display = "inline-block";
        document.getElementById("edit-account-button").style.display = "inline-block"; // Hiển thị nút Chỉnh sửa tài khoản
    } else {
        // Nếu chưa đăng nhập
        document.getElementById("account-link").textContent = "Tài khoản";
        document.getElementById("logout-link").style.display = "none";
        document.getElementById("change-password-button").style.display = "none";
        document.getElementById("edit-account-button").style.display = "none"; // Ẩn nút Chỉnh sửa tài khoản
    }
};


    // Hàm đăng xuất
    function logout() {
    // Xóa thông tin người dùng khỏi localStorage
    localStorage.removeItem("currentUser");

    // Cập nhật giao diện về trạng thái mặc định
    alert("Bạn đã đăng xuất thành công!");
    document.getElementById("account-link").textContent = "Tài khoản";
    document.getElementById("logout-link").style.display = "none";
    document.getElementById("change-password-button").style.display = "none";
    document.getElementById("edit-account-button").style.display = "none"; // Ẩn nút Chỉnh sửa tài khoản
}

function toggleModal(modalId) {
    const modal = document.getElementById(modalId);
    modal.style.display = modal.style.display === "flex" ? "none" : "flex";
}



    
function showChangePassword() {
    const currentUser = JSON.parse(localStorage.getItem("currentUser"));
    if (!currentUser) {
        alert("Bạn cần đăng nhập trước!");
        return;
    }
    document.getElementById("changePasswordModal").style.display = "flex";
}

function closeModal(modalId) {
    document.getElementById(modalId).style.display = "none";
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

    // Kiểm tra mật khẩu hiện tại
    if (currentUser.password !== currentPassword) {
        alert("Mật khẩu hiện tại không đúng!");
        return;
    }

    // Kiểm tra khớp mật khẩu mới
    if (newPassword !== confirmPassword) {
        alert("Mật khẩu mới và xác nhận không khớp!");
        return;
    }

    // Kiểm tra độ dài mật khẩu mới
    if (newPassword.length < 4 || newPassword.length > 20) {
        alert("Mật khẩu mới phải từ 4 đến 20 ký tự!");
        return;
    }

    // Cập nhật mật khẩu trong danh sách người dùng
    users = users.map(user =>
        user.email === currentUser.email ? { ...user, password: newPassword } : user
    );
    localStorage.setItem("users", JSON.stringify(users));

    // Cập nhật mật khẩu của người dùng hiện tại
    currentUser.password = newPassword;
    localStorage.setItem("currentUser", JSON.stringify(currentUser));

    alert("Đổi mật khẩu thành công!");
    closeModal("changePasswordModal"); // Đóng modal đổi mật khẩu
}

window.onload = function () {
    const currentUser = JSON.parse(localStorage.getItem("currentUser"));

    if (currentUser) {
        // Nếu đã đăng nhập
        document.getElementById("account-link").textContent = "Xin chào, " + currentUser.name;
        document.getElementById("logout-link").style.display = "inline-block";
        document.getElementById("change-password-button").style.display = "inline-block";
        document.getElementById("edit-account-button").style.display = "inline-block"; // Hiển thị nút Chỉnh sửa tài khoản
    } else {
        // Nếu chưa đăng nhập
        document.getElementById("account-link").textContent = "Tài khoản";
        document.getElementById("logout-link").style.display = "none";
        document.getElementById("change-password-button").style.display = "none";
        document.getElementById("edit-account-button").style.display = "none"; // Ẩn nút Chỉnh sửa tài khoản
    }
};


function toggleModal() {
    document.getElementById("account-modal").classList.toggle("show-modal");
}
function showEditAccount() {
    const currentUser = JSON.parse(localStorage.getItem("currentUser"));
    if (currentUser) {
        // Điền thông tin hiện tại của người dùng vào các trường
        document.getElementById("editName").value = currentUser.name || "";
        document.getElementById("editEmail").value = currentUser.email || "";
        document.getElementById("editPhone").value = currentUser.phone || "";
        toggleModal("editAccountModal");
    } else {
        alert("Bạn cần đăng nhập trước!");
    }
}

function saveAccountInfo() {
    const name = document.getElementById("editName").value.trim();
    const email = document.getElementById("editEmail").value.trim();
    const phone = document.getElementById("editPhone").value.trim();

    if (!name || !email || !phone) {
        alert("Vui lòng nhập đầy đủ thông tin!");
        return;
    }

    const currentUser = JSON.parse(localStorage.getItem("currentUser"));
    let users = JSON.parse(localStorage.getItem("users")) || [];

    if (currentUser) {
        // Cập nhật thông tin người dùng hiện tại
        currentUser.name = name;
        currentUser.email = email;
        currentUser.phone = phone;

        // Cập nhật danh sách người dùng
        users = users.map(user =>
            user.email === currentUser.email ? { ...user, name, email, phone } : user
        );
        localStorage.setItem("users", JSON.stringify(users));
        localStorage.setItem("currentUser", JSON.stringify(currentUser)); // Cập nhật localStorage
        alert("Cập nhật thông tin tài khoản thành công!");

        // Cập nhật giao diện
        document.getElementById("account-link").textContent = "Xin chào, " + currentUser.name;

        // Đóng modal
        closeModal("editAccountModal");
    } else {
        alert("Có lỗi xảy ra. Vui lòng thử lại!");
    }
}

function toggleModal(modalId) {
    const modal = document.getElementById(modalId);
    modal.style.display = modal.style.display === "flex" ? "none" : "flex";
}

