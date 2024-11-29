document.addEventListener("DOMContentLoaded", function () {
  // Lấy tên người dùng từ localStorage
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

// Xử lý sự kiện nút toggle
document.addEventListener("DOMContentLoaded", function () {
  var navbarToggler = document.querySelector(".navbar-toggler");
  var navbarCollapse = document.getElementById("navbarNav");

  navbarToggler.addEventListener("click", function () {
    navbarCollapse.classList.toggle("collapse");
  });
});

// Xử lý sự kiện cho nút xác nhận đơn hàng
// Lấy các phần tử cần thiết
const paymentMethods = document.querySelectorAll(
  'input[name="payment_method"]'
);
const agreeCheckbox = document.getElementById("input-agree");
const confirmOrderButton = document.getElementById("validate_order");

// Hàm kiểm tra và cập nhật trạng thái nút "Xác nhận đơn hàng"
function updateConfirmButtonState() {
  const isPaymentMethodSelected = Array.from(paymentMethods).some(
    (method) => method.checked
  );
  const isAgreeChecked = agreeCheckbox.checked;

  // Kích hoạt nút "Xác nhận đơn hàng" khi cả hai điều kiện được thỏa mãn
  confirmOrderButton.disabled = !(isPaymentMethodSelected && isAgreeChecked);
}

// Gắn sự kiện thay đổi (change) cho các phương thức thanh toán
paymentMethods.forEach((method) =>
  method.addEventListener("change", updateConfirmButtonState)
);

// Gắn sự kiện thay đổi (change) cho checkbox "Điều khoản & Điều kiện"
agreeCheckbox.addEventListener("change", updateConfirmButtonState);

// Gắn sự kiện click cho nút "Xác nhận đơn hàng"
confirmOrderButton.addEventListener("click", () => {
  if (!confirmOrderButton.disabled) {
    // Ví dụ: Hiển thị thông báo và tải lại trang
    alert("Đơn hàng của bạn đã được xác nhận!");
    location.reload(); // Tải lại trang
  }
});

// Khởi tạo trạng thái của nút "Xác nhận đơn hàng" khi trang được tải
updateConfirmButtonState();

// Xử lý nút xác nhận và tiếp tục
document.addEventListener("DOMContentLoaded", function () {
  // Lấy các phần tử
  const buttonShippingAddress = document.getElementById(
    "button-shipping-address"
  );
  const editDetailsButton = document.getElementById("edit_details");
  const shippingSection = document.getElementById("ckh_step_1");
  const orderDetailsSection = document.getElementById("ckh_step_2");
  const confirmDetailsDiv = document.getElementById("confirm_details_div");
  const editDetailsDiv = document.getElementById("edit_details_div");

  // Hàm để chuyển trạng thái
  function toggleSections(enableShipping, enableOrderDetails) {
    if (enableShipping) {
      shippingSection.classList.remove("whole-disabled");
      shippingSection.classList.add("whole-enabled");
    } else {
      shippingSection.classList.add("whole-disabled");
      shippingSection.classList.remove("whole-enabled");
    }

    if (enableOrderDetails) {
      orderDetailsSection.classList.remove("whole-disabled");
      orderDetailsSection.classList.add("whole-enabled");
    } else {
      orderDetailsSection.classList.add("whole-disabled");
      orderDetailsSection.classList.remove("whole-enabled");
    }
  }

  // Mặc định: chỉ hiển thị phần thông tin người nhận
  toggleSections(true, false);
  editDetailsDiv.classList.add("d-none");

  // Xử lý khi nhấn "Xác nhận và tiếp tục"
  buttonShippingAddress.addEventListener("click", function (event) {
    event.preventDefault(); // Ngăn chặn hành động mặc định của form
    toggleSections(false, true); // Bật phần chi tiết đơn hàng, tắt phần thông tin người nhận
    confirmDetailsDiv.classList.add("d-none"); // Ẩn nút "Xác nhận và tiếp tục"
    editDetailsDiv.classList.remove("d-none"); // Hiển thị nút "Chỉnh sửa thông tin"
  });

  // Xử lý khi nhấn "Chỉnh sửa thông tin"
  editDetailsButton.addEventListener("click", function () {
    toggleSections(true, false); // Bật phần thông tin người nhận, tắt phần chi tiết đơn hàng
    editDetailsDiv.classList.add("d-none"); // Ẩn nút "Chỉnh sửa thông tin"
    confirmDetailsDiv.classList.remove("d-none"); // Hiển thị nút "Xác nhận và tiếp tục"
  });
});
