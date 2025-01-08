document.addEventListener("DOMContentLoaded", () => {
    // Lấy thông tin người dùng từ localStorage
    const userData = JSON.parse(localStorage.getItem("userData"));

    // Kiểm tra nếu không có userData thì chuyển hướng về trang đăng nhập
    if (!userData) {
        alert("Bạn chưa đăng nhập. Vui lòng đăng nhập trước.");
        window.location.href = "login.html"; // Điều hướng đến trang đăng nhập
    }

    // Xử lý đổi mật khẩu
    const changePasswordForm = document.getElementById("changePasswordForm");
    if (changePasswordForm) {
        changePasswordForm.addEventListener("submit", (e) => {
            e.preventDefault();

            // Lấy giá trị từ các trường nhập liệu
            const currentPassword = document.getElementById("currentPassword").value.trim();
            const newPassword = document.getElementById("newPassword").value.trim();
            const confirmPassword = document.getElementById("confirmPassword").value.trim();

            // Kiểm tra mật khẩu cũ
            if (currentPassword !== userData.password) {
                alert("Mật khẩu cũ không đúng. Vui lòng kiểm tra lại.");
                return;
            }

            // Kiểm tra mật khẩu mới và xác nhận mật khẩu mới
            if (newPassword !== confirmPassword) {
                alert("Mật khẩu mới và xác nhận mật khẩu không khớp. Vui lòng nhập lại.");
                return;
            }

            // Cập nhật mật khẩu mới vào localStorage
            userData.password = newPassword;
            localStorage.setItem("userData", JSON.stringify(userData));

            alert("Mật khẩu đã được thay đổi thành công!");
            window.location.href = "index.html"; // Quay về trang chủ sau khi đổi mật khẩu
        });
    }
});