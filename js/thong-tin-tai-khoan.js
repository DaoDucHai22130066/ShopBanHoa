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

