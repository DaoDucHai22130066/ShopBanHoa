// Xử lý sự kiện nút toggle
document.addEventListener('DOMContentLoaded', function () {
    var navbarToggler = document.querySelector('.navbar-toggler');
    var navbarCollapse = document.getElementById('navbarNav');

    navbarToggler.addEventListener('click', function () {
        navbarCollapse.classList.toggle('collapse');
    });
});

// Xử lý sự kiện cho nút xác nhận đơn hàng
// Lấy các phần tử cần thiết
const paymentMethods = document.querySelectorAll('input[name="payment_method"]');
const agreeCheckbox = document.getElementById('input-agree');
const confirmOrderButton = document.getElementById('validate_order');

// Hàm kiểm tra và cập nhật trạng thái nút "Xác nhận đơn hàng"
function updateConfirmButtonState() {
    const isPaymentMethodSelected = Array.from(paymentMethods).some(method => method.checked);
    const isAgreeChecked = agreeCheckbox.checked;

    // Kích hoạt nút "Xác nhận đơn hàng" khi cả hai điều kiện được thỏa mãn
    confirmOrderButton.disabled = !(isPaymentMethodSelected && isAgreeChecked);
}

// Gắn sự kiện thay đổi (change) cho các phương thức thanh toán
paymentMethods.forEach(method => method.addEventListener('change', updateConfirmButtonState));

// Gắn sự kiện thay đổi (change) cho checkbox "Điều khoản & Điều kiện"
agreeCheckbox.addEventListener('change', updateConfirmButtonState);

// Gắn sự kiện click cho nút "Xác nhận đơn hàng"
confirmOrderButton.addEventListener('click', () => {
    if (!confirmOrderButton.disabled) {
        // Ví dụ: Hiển thị thông báo và tải lại trang
        alert('Đơn hàng của bạn đã được xác nhận!');
        window.location.href = "index.html"; // Tải lại trang
    }
});

// Khởi tạo trạng thái của nút "Xác nhận đơn hàng" khi trang được tải
updateConfirmButtonState();


// Xử lý nút xác nhận và tiếp tục
document.addEventListener("DOMContentLoaded", function () {
    // Lấy các phần tử
    const buttonShippingAddress = document.getElementById("button-shipping-address");
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


window.addEventListener("load", function () {
    // Lấy dữ liệu sản phẩm đã chọn từ sessionStorage
    const selectedItems = JSON.parse(sessionStorage.getItem("selectedItems")) || [];

    const orderDetailsBody = document.getElementById("orderDetailsBody");
    const totalAmountElement = document.getElementById("totalAmount");

    // Kiểm tra nếu có sản phẩm được chọn, hiển thị chúng
    if (selectedItems.length > 0) {
        let totalAmount = 0;

        // Duyệt qua các sản phẩm đã chọn và hiển thị
        selectedItems.forEach(item => {
            const row = document.createElement("tr");
            const productImage = item.productImg; // Đảm bảo hình ảnh từ dữ liệu
            const productName = item.productName; // tên sp từ dữ liệu
            const quantity = item.quantity || 0; // số lượng sp
            const discountedPrice = (item.productPrice || 0).toLocaleString(); // Định dạng giá tiền
            const itemTotalPrice = (item.productPrice * item.quantity).toLocaleString();

            // Tạo mã HTML để hiển thị thông tin sản phẩm trong chi tiết đơn hàng
            const orderDetailsHTML = `
        <tr>
            <td class="text-center">
                <img src="${productImage}" alt="${productName}" class="img-thumbnail" />
            </td>
            <td class="text-start">
                <span class="cart-item-quantity">${quantity}</span> x
                <span class="cart-item-name">${productName}</span>
            </td>
            <td class="text-end" class="cart-item-price">${(quantity * discountedPrice).toLocaleString()} VND</td>
            <td class="text-end">
                <button type="button" id="removeProductBtn" class="btn btn-sm btn-danger" data-bs-toggle="tooltip" title="Loại bỏ">
                    <i class="fa-solid fa-circle-xmark"></i>
                </button>
            </td>
        </tr>
    `;

            // Thêm mã HTML vào bảng
            row.innerHTML = orderDetailsHTML;
            orderDetailsBody.appendChild(row);

            // Cộng dồn tổng tiền
            totalAmount += item.productPrice * quantity;
        });

        // Cập nhật tổng tiền vào phần tử #totalAmount
        totalAmountElement.textContent = `${totalAmount.toLocaleString()} VND`;
    } else {
        // Nếu không có sản phẩm nào được chọn
        orderDetailsBody.innerHTML = "<tr><td colspan='4' class='text-center'>Chưa có đơn hàng!</td></tr>";
        totalAmountElement.textContent = "Tổng số tiền: 0 VND";
    }
});




