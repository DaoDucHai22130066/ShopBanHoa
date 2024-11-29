document.addEventListener("DOMContentLoaded", () => {
  const forgotPasswordForm = document.getElementById("forgotPasswordForm");

  if (forgotPasswordForm) {
      forgotPasswordForm.addEventListener("submit", (e) => {
          e.preventDefault();

          // Lấy email từ input
          const forgotEmail = document.getElementById("forgotEmail").value.trim();

          // Lấy dữ liệu người dùng từ localStorage
          const storedUserData = JSON.parse(localStorage.getItem("userData"));

          if (storedUserData && storedUserData.email === forgotEmail) {
              // Hiển thị mật khẩu nếu email hợp lệ
              alert(`Mật khẩu của bạn là: ${storedUserData.password}`);
          } else {
              // Hiển thị thông báo lỗi nếu email không tìm thấy
              alert("Email không tồn tại. Vui lòng kiểm tra lại.");
          }
      });
  }
});
