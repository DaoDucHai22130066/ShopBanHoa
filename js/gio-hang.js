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

document.addEventListener("DOMContentLoaded", function () {
  // Lấy các thành phần cần thiết
  const shoppingCartTable = document.querySelector("#shopping-cart table");
  const cartBody = shoppingCartTable.querySelector("tbody");
  const cartFooter = shoppingCartTable.querySelector("tfoot");
  const content = document.querySelector("#content");

  // Lắng nghe sự kiện click trên tbody
  cartBody.addEventListener("click", function (event) {
    // Kiểm tra nếu phần tử được click là nút "Loại bỏ"
    if (event.target.closest(".btn-danger")) {
      event.preventDefault();

      // Lấy hàng <tr> chứa nút được nhấn
      const row = event.target.closest("tr");
      if (row) {
        row.remove(); // Xóa hàng khỏi bảng

        // Kiểm tra nếu không còn sản phẩm nào
        if (cartBody.querySelectorAll("tr").length === 0) {
          // Xóa bảng và hiển thị thông báo giỏ hàng trống
          shoppingCartTable.remove(); // Xóa toàn bộ bảng
          showEmptyCartMessage();
        } else {
          updateCartTotal(); // Cập nhật tổng tiền
        }
      }
    }
  });

  // Hàm hiển thị thông báo giỏ hàng trống
  function showEmptyCartMessage() {
    const emptyMessage = `
                <h2 class="text-center">Giỏ hàng</h2>
                <p class="text-center">Giỏ hàng của bạn trống.</p>
            `;
    content.innerHTML = emptyMessage;
  }

  // Hàm cập nhật tổng tiền trong giỏ hàng
  function updateCartTotal() {
    let total = 0;

    // Lấy tất cả các giá tiền từ các hàng còn lại
    const rows = cartBody.querySelectorAll("tr");
    rows.forEach(function (row) {
      const priceCell = row.querySelector(".cart-item-price");
      const quantityInput = row.querySelector('input[name="quantity"]');
      if (priceCell && quantityInput) {
        const priceText = priceCell.textContent.replace(/[^0-9]/g, "");
        const price = parseInt(priceText, 10);
        const quantity = parseInt(quantityInput.value, 10);
        if (!isNaN(price) && !isNaN(quantity)) {
          total += price * quantity;
        }
      }
    });

    // Cập nhật phần Tổng phụ và Tổng cộng
    const totalCells = cartFooter.querySelectorAll("td:last-child");
    totalCells.forEach(function (cell) {
      cell.textContent = total.toLocaleString() + "VND";
    });
  }
});
