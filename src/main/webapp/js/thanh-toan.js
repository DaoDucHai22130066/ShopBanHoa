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
        window.location.href = "index.jsp"; // Tải lại trang
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


//Xử lý lấy thông tin phần chi tiết đơn hàng
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




