document.addEventListener("DOMContentLoaded", function () {
  // Lấy form đăng ký
  const registerForm = document.getElementById("registerForm");

  // Kiểm tra nếu form không tồn tại
  if (!registerForm) {
    console.error("Form đăng ký không được tìm thấy!");
    return;
  }

  // Gắn sự kiện submit vào form
  registerForm.addEventListener("submit", function (e) {
    e.preventDefault(); // Ngăn form tự động submit

    // Lấy giá trị từ các trường
    const fullName = document.getElementById("fullName").value.trim();
    const email = document.getElementById("email").value.trim();
    const phone = document.getElementById("phone").value.trim();
    const password = document.getElementById("password").value.trim();
    const termsChecked = document.getElementById("terms").checked;

    // Xóa thông báo lỗi cũ
    document.querySelectorAll(".error-message").forEach((el) => el.remove());
    document
      .querySelectorAll(".form-control")
      .forEach((el) => el.classList.remove("input-error"));

    let isValid = true;

    // Kiểm tra từng trường
    if (fullName === "") {
      isValid = false;
      const error = document.createElement("div");
      error.className = "error-message";
      error.textContent = "Họ tên không được để trống.";
      document.getElementById("fullName").classList.add("input-error");
      document.getElementById("fullName").after(error);
    }

    if (!validateEmail(email)) {
      isValid = false;
      const error = document.createElement("div");
      error.className = "error-message";
      error.textContent = "Email không hợp lệ.";
      document.getElementById("email").classList.add("input-error");
      document.getElementById("email").after(error);
    }

    if (phone === "" || !/^\d{10,12}$/.test(phone)) {
      isValid = false;
      const error = document.createElement("div");
      error.className = "error-message";
      error.textContent = "Số điện thoại không hợp lệ.";
      document.getElementById("phone").classList.add("input-error");
      document.getElementById("phone").after(error);
    }

    if (password.length < 6) {
      isValid = false;
      const error = document.createElement("div");
      error.className = "error-message";
      error.textContent = "Mật khẩu phải có ít nhất 6 ký tự.";
      document.getElementById("password").classList.add("input-error");
      document.getElementById("password").after(error);
    }

    if (!termsChecked) {
      isValid = false;
      alert("Bạn cần đồng ý với Điều khoản & Điều kiện.");
    }

    // Nếu hợp lệ, hiển thị thông báo thành công
    if (isValid) {
      const successMessage = document.createElement("div");
      successMessage.className = "success-message";
      successMessage.textContent = "Đăng ký thành công!";
      document.querySelector(".card-body").appendChild(successMessage);

      // Lưu dữ liệu vào localStorage
      const userData = { fullName, email, phone, password };
      localStorage.setItem("user", JSON.stringify(userData));

      // Reset form
      registerForm.reset();
    }
  });

  // Hàm kiểm tra email hợp lệ
  function validateEmail(email) {
    const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailPattern.test(email);
  }
});
document
  .getElementById("registerForm")
  .addEventListener("submit", function (e) {
    e.preventDefault(); // Ngăn form tự động submit

    // Lấy dữ liệu từ các trường
    const fullName = document.getElementById("fullName").value.trim();
    const email = document.getElementById("email").value.trim();
    const phone = document.getElementById("phone").value.trim();

    // Lưu thông tin vào localStorage
    const user = {
      fullName: fullName,
      email: email,
      phone: phone,
    };

    // Lưu đối tượng user vào localStorage
    localStorage.setItem("user", JSON.stringify(user));

    // Thông báo và chuyển hướng (nếu cần)
    alert("Đăng ký thành công!");
    window.location.href = "dangnhap.html"; // Điều hướng đến trang đăng nhập
  });
