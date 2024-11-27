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
        location.reload(); // Tải lại trang
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

// Xử lý chọn option tỉnh / thành phố quận / huyện
document.addEventListener('DOMContentLoaded', function () {
    const districtSelect = document.getElementById('input-shipping-custom-field-30'); // Select Quận/Huyện
    const allOptions = Array.from(districtSelect.options); // Lưu tất cả option vào mảng


    // Thêm tùy chọn mặc định vào đầu danh sách
    const defaultOption = document.createElement('option');
    defaultOption.value = '';
    defaultOption.textContent = 'Vui lòng chọn Quận / Huyện';
    defaultOption.selected = true;
    defaultOption.disabled = true;
    districtSelect.insertBefore(defaultOption, districtSelect.firstChild);

    // Ẩn tất cả các tùy chọn khi trang được tải
    allOptions.forEach(option => option.style.display = 'none');

    // Lắng nghe sự kiện thay đổi trên Tỉnh/Thành phố
    document.getElementById('input-shipping-zone').addEventListener('change', function () {
        const zoneValue = this.value; // Lấy giá trị của option được chọn

        // Ẩn tất cả các tùy chọn trước khi hiển thị lại
        allOptions.forEach(option => option.style.display = 'none');

        // Hiển thị các option tương ứng với giá trị được chọn
        if (zoneValue === '43') {
            // Hiển thị các option từ value 47 đến 61
            allOptions.forEach(option => {
                const value = parseInt(option.value);
                if (value >= 47 && value <= 61) {
                    option.style.display = 'block';
                }
            });
        }

        if (zoneValue === '44') {
            // Hiển thị các option từ value 62 đến 68
            allOptions.forEach(option => {
                const value = parseInt(option.value);
                if (value >= 62 && value <= 68) {
                    option.style.display = 'block';
                }
            });
        }

        if (zoneValue === '45') {
            // Hiển thị các option từ value 62 đến 68
            allOptions.forEach(option => {
                const value = parseInt(option.value);
                if (value >= 69 && value <= 74) {
                    option.style.display = 'block';
                }
            });
        }

        if (zoneValue === '46') {
            // Hiển thị các option từ value 62 đến 68
            allOptions.forEach(option => {
                const value = parseInt(option.value);
                if (value >= 75 && value <= 98) {
                    option.style.display = 'block';
                }
            });
        }

        // Đặt lại giá trị mặc định cho select Quận/Huyện
        districtSelect.value = '';
    });
});





