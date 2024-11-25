document.addEventListener("DOMContentLoaded", function () {
  console.log("Script loaded successfully"); // Kiểm tra file đã được tải

  document.querySelector("form").addEventListener("submit", function (e) {
    e.preventDefault(); // Ngăn form tự động submit
    console.log("Form submitted"); // Xác nhận sự kiện submit được kích hoạt

    // Lấy giá trị từ các trường
    const fullName = document.getElementById("fullName").value.trim();
    const email = document.getElementById("email").value.trim();
    const phone = document.getElementById("phone").value.trim();
    const password = document.getElementById("password").value.trim();
    const termsChecked = document.getElementById("terms").checked;

    console.log("Data received:", {
      fullName,
      email,
      phone,
      password,
      termsChecked,
    });

    // Xóa thông báo lỗi cũ
    document.querySelectorAll(".error-message").forEach((el) => el.remove());
    document
      .querySelectorAll(".form-control")
      .forEach((el) => el.classList.remove("input-error"));

    let isValid = true;

    // Kiểm tra từng trường
    if (fullName === "") {
      isValid = false;
      console.log("Validation failed: Họ tên không được để trống.");
      const error = document.createElement("div");
      error.className = "error-message";
      error.textContent = "Họ tên không được để trống.";
      document.getElementById("fullName").classList.add("input-error");
      document.getElementById("fullName").after(error);
    }

    if (!validateEmail(email)) {
      isValid = false;
      console.log("Validation failed: Email không hợp lệ.");
      const error = document.createElement("div");
      error.className = "error-message";
      error.textContent = "Email không hợp lệ.";
      document.getElementById("email").classList.add("input-error");
      document.getElementById("email").after(error);
    }

    if (phone === "" || !/^\d{10,12}$/.test(phone)) {
      isValid = false;
      console.log("Validation failed: Số điện thoại không hợp lệ.");
      const error = document.createElement("div");
      error.className = "error-message";
      error.textContent = "Số điện thoại không hợp lệ.";
      document.getElementById("phone").classList.add("input-error");
      document.getElementById("phone").after(error);
    }

    if (password.length < 6) {
      isValid = false;
      console.log("Validation failed: Mật khẩu phải có ít nhất 6 ký tự.");
      const error = document.createElement("div");
      error.className = "error-message";
      error.textContent = "Mật khẩu phải có ít nhất 6 ký tự.";
      document.getElementById("password").classList.add("input-error");
      document.getElementById("password").after(error);
    }

    if (!termsChecked) {
      isValid = false;
      console.log("Validation failed: Điều khoản không được đồng ý.");
      alert("Bạn cần đồng ý với Điều khoản & Điều kiện.");
    }

    // Nếu hợp lệ, hiển thị thông báo thành công
    if (isValid) {
      console.log("All validations passed. Displaying success message.");
      const successMessage = document.createElement("div");
      successMessage.className = "success-message";
      successMessage.textContent = "Đăng ký thành công!";

      document.querySelector(".card-body").appendChild(successMessage);

      // Lưu dữ liệu vào localStorage (tuỳ chọn)
      const userData = { fullName, email, phone, password };
      localStorage.setItem("user", JSON.stringify(userData));
      console.log("User data saved to localStorage:", userData);

      // Reset form
      document.querySelector("form").reset();
    }
  });

  // Hàm kiểm tra email hợp lệ
  function validateEmail(email) {
    const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailPattern.test(email);
  }
});
