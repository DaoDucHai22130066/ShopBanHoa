// Xử lý sự kiện nút toggle
document.addEventListener('DOMContentLoaded', function () {
    var navbarToggler = document.querySelector('.navbar-toggler');
    var navbarCollapse = document.getElementById('navbarNav');

    navbarToggler.addEventListener('click', function () {
        navbarCollapse.classList.toggle('collapse');
    });
});

// Xử lý thông báo cho nút Lưu
document.addEventListener('DOMContentLoaded', function () {
    // Lấy phần tử nút "Lưu"
    const saveButton = document.getElementById('save-btn');

    // Thêm sự kiện click vào nút "Lưu"
    saveButton.addEventListener('click', function () {
        // Hiển thị thông báo bằng alert
        alert('Cập nhật thông tin tài khoản thành công!');
    });
});


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