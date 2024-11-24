function validateRegister() {
  const name = document.getElementById("register-name").value;
  const email = document.getElementById("register-email").value;
  let isValid = true;

  // Kiểm tra tên
  if (!name || name.length < 1 || name.length > 32) {
    document.getElementById("register-name-error").innerText =
      "Tên phải có 1 đến 32 ký tự";
    isValid = false;
  } else {
    document.getElementById("register-name-error").innerText = "";
  }

  // Kiểm tra email
  if (!email || !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) {
    document.getElementById("register-email-error").innerText =
      "Dường như email không hợp lệ";
    isValid = false;
  } else {
    document.getElementById("register-email-error").innerText = "";
  }

  // Kiểm tra xem hàm có chạy đúng
  console.log("Họ tên:", name);
  console.log("Email:", email);
  console.log("isValid:", isValid);

  return isValid;
}
