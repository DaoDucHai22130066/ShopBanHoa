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


// Xử lý chọn option tỉnh / thành phố quận / huyện
// Định nghĩa danh sách quận/huyện theo từng tỉnh/thành phố
const districts = {
    43: [
        {value: 47, text: "Quận 1"},
        {value: 48, text: "Quận 3"},
        {value: 49, text: "Quận 4"},
        {value: 50, text: "Quận 5"},
        {value: 51, text: "Quận 6"},
        {value: 52, text: "Quận 7"},
        {value: 53, text: "Quận 8"},
        {value: 54, text: "Quận 10"},
        {value: 55, text: "Quận 11"},
        {value: 56, text: "Quận 12"},
        {value: 57, text: "Quận Tân Bình"},
        {value: 58, text: "Quận Tân Phú"},
        {value: 59, text: "Quận Bình Thạnh"},
        {value: 60, text: "Quận Bình Tân"},
        {value: 61, text: "Quận Phú Nhuận"}
    ],
    44: [
        {value: 62, text: "Quận Gò Vấp"},
        {value: 63, text: "TP Thủ Đức (Quận 2, 9, Thủ Đức)"},
        {value: 64, text: "Huyện Củ Chi"},
        {value: 65, text: "Huyện Bình Chánh"},
        {value: 66, text: "Huyện Nhà Bè"},
        {value: 67, text: "Huyện Cần Giờ"},
        {value: 68, text: "Huyện Hóc Môn"}
    ],
    45: [
        {value: 69, text: "Quận Ba Đình"},
        {value: 70, text: "Quận Hoàn Kiếm"},
        {value: 71, text: "Quận Đống Đa"},
        {value: 72, text: "Quận Thanh Xuân"},
        {value: 73, text: "Quận Cầu Giấy"},
        {value: 74, text: "Quận Hai Bà Trưng"},
    ],
    46: [
        {value: 75, text: "Quận Hà Đông"},
        {value: 76, text: "Quận Bắc Từ Liêm"},
        {value: 77, text: "Quận Hoàng Mai"},
        {value: 78, text: "Quận Long Biên"},
        {value: 79, text: "Quận Tây Hồ"},
        {value: 80, text: "Quận Nam Từ Liêm"},
        {value: 81, text: "Huyện Mê Linh"},
        {value: 82, text: "Huyện Đông Anh"}
    ]
};

// Lấy tham chiếu đến các trường select
const citySelect = document.getElementById("input-shipping-zone");
const districtSelect = document.getElementById("input-shipping-custom-field-30");

// Xử lý sự kiện thay đổi tỉnh/thành phố
citySelect.addEventListener("change", function () {
    const selectedValue = parseInt(this.value);

    // Xóa các tùy chọn quận/huyện hiện tại
    districtSelect.innerHTML = '<option value="0">Vui lòng chọn quận/huyện</option>';

    // Nếu có danh sách quận/huyện tương ứng, thêm các tùy chọn
    if (districts[selectedValue]) {
        districts[selectedValue].forEach(district => {
            const option = document.createElement("option");
            option.value = district.value;
            option.textContent = district.text;
            districtSelect.appendChild(option);
        });
    }
});


// Xử lý JS cho các trường ở mục Hóa đơn VAT
document.addEventListener('DOMContentLoaded', function () {
    const vatCheckbox = document.getElementById('input-shipping-custom-value-104'); // Checkbox "Yêu cầu hóa đơn VAT"
    const vatFields = document.querySelectorAll(
        '.section-shipping-address .col.custom-field-37, ' +
        '.section-shipping-address .col.custom-field-38, ' +
        '.section-shipping-address .col.custom-field-39, ' +
        '.section-shipping-address .col.custom-field-40, ' +
        '.section-shipping-address .col.custom-field-41'
    );

    // Thêm sự kiện `change` vào checkbox
    vatCheckbox.addEventListener('change', function () {
        if (vatCheckbox.checked) {
            vatFields.forEach(field => field.style.display = 'block'); // Hiện các thông tin hóa đơn VAT
        } else {
            vatFields.forEach(field => field.style.display = 'none'); // Ẩn các thông tin hóa đơn VAT
        }
    });
});

// Xử lý UI cho khung lịch ở trường ngày giao hàng
$(document).ready(function() {
    $("#input-shipping-custom-field-31").datepicker({
        dateFormat: "dd/mm/yy",
        minDate: 0, // Không cho chọn ngày quá khứ
        maxDate: "+1M" // Giới hạn trong 1 tháng
    });
});


// Xử lý phần nút xác nhận thông tin - Chỉnh sửa thông tin
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

        // Danh sách các trường cần kiểm tra
        const fields = [
            { id: 'input-shipping-firstname', errorId: 'error-shipping-firstname', message: 'Vui lòng nhập họ tên.' },
            { id: 'input-shipping-custom-field-29', errorId: 'error-shipping-custom-field-29', message: 'Vui lòng nhập điện thoại.' },
            { id: 'input-shipping-address-1', errorId: 'error-shipping-address-1', message: 'Vui lòng nhập địa chỉ.' },
            { id: 'input-shipping-zone', errorId: 'error-shipping-zone', message: 'Vui lòng chọn tỉnh/thành phố.' },
            { id: 'input-shipping-custom-field-30', errorId: 'error-shipping-custom-field-30', message: 'Vui lòng chọn quận/huyện.' }
        ];

        let isValid = true;

        fields.forEach(field => {
            const inputElement = document.getElementById(field.id);
            const errorElement = document.getElementById(field.errorId);

            if (!inputElement.value.trim() || (inputElement.tagName === 'SELECT' && inputElement.value === '0')) {
                // Hiển thị thông báo lỗi và đánh dấu trường là không hợp lệ
                errorElement.textContent = field.message;
                inputElement.classList.add('is-invalid');
                isValid = false;
            } else {
                // Xóa thông báo lỗi và lớp 'is-invalid'
                errorElement.textContent = '';
                inputElement.classList.remove('is-invalid');
            }
        });

        if (isValid) {
            // Nếu tất cả các trường hợp lệ, hiển thị phần chi tiết đơn hàng
            toggleSections(false, true);
            confirmDetailsDiv.classList.add("d-none"); // Ẩn nút "Xác nhận và tiếp tục"
            editDetailsDiv.classList.remove("d-none"); // Hiển thị nút "Chỉnh sửa thông tin"
        }
    });

    // Xử lý khi nhấn "Chỉnh sửa thông tin"
    editDetailsButton.addEventListener("click", function () {
        toggleSections(true, false); // Bật phần thông tin người nhận, tắt phần chi tiết đơn hàng
        editDetailsDiv.classList.add("d-none"); // Ẩn nút "Chỉnh sửa thông tin"
        confirmDetailsDiv.classList.remove("d-none"); // Hiển thị nút "Xác nhận và tiếp tục"
    });
});







