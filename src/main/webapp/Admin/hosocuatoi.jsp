<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 1/13/2025
  Time: 7:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>Admin - Hồ Sơ Của Tôi</title>
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/logo.png">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">
</head>

<body>
<div class="main-wrapper">
    <div class="header">
        <div class="header-left">
            <a href="trangchu.jsp" class="logo">
                <img src="assets/img/logo.png" width="50" height="70" alt="logo">
                <span class="logoclass">HỒ SƠ</span>
            </a>
        </div>
        <ul class="nav user-menu">
            <li class="nav-item dropdown has-arrow">
                <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                    <span class="user-img"><img class="rounded-circle" src="assets/img/profiles/avatar.png" width="31" alt="Admin"></span>
                </a>
                <div class="dropdown-menu">
                    <div class="user-header">
                        <div class="avatar avatar-sm">
                            <img src="assets/img/profiles/avatar.png" alt="User  Image" class="avatar-img rounded-circle">
                        </div>
                        <div class="user-text">
                            <h6>Admin</h6>
                            <p class="text-muted mb-0">Quản trị viên</p>
                        </div>
                    </div>
                    <a class="dropdown-item" href="hosocuatoi.jsp">Hồ Sơ của tôi</a>
                    <a class="dropdown-item" href="../views/pages/dangnhap.jsp">Đăng Xuất</a>
                </div>
            </li>
        </ul>
    </div>

    <!-- Sidebar -->
    <div class="sidebar" id="sidebar">
        <div class="sidebar-inner slimscroll">
            <div id="sidebar-menu" class="sidebar-menu">
                <ul>
                    <li><a href="trangchu.jsp"><i class="fa-solid fa-house"></i> <span>Trang chủ</span></a></li>
                    <li class="list-divider"></li>
                    <li><a href="hoatuoi.jsp"><i class="fas fa-seedling"></i> <span>Hoa Tươi</span></a></li>
                    <li><a href="donhang.jsp"><i class="fas fa-shopping-cart"></i> <span>Đơn Hàng</span></a></li>
                    <li><a href="khachhang.jsp"><i class="fas fa-user"></i> <span>Người dùng</span></a></li>
                </ul>
            </div>
        </div>
    </div>

    <div class="page-wrapper">
        <div class="content container-fluid">
            <div class="page-header">
                <div class="row align-items-center">
                    <div class="col">
                        <h4 class="card-title float-left mt-2">Hồ Sơ Của Tôi</h4>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <form id="profileForm">
                                <div class="form-group">
                                    <label for="profileName">Tên</label>
                                    <input type="text" class="form-control" id="profileName" placeholder="Tên của bạn" required>
                                </div>
                                <div class="form-group">
                                    <label for="profileEmail">Email</label>
                                    <input type="email" class="form-control" id="profileEmail" placeholder="Email của bạn" required>
                                </div>
                                <div class="form-group">
                                    <label for="profilePassword">Mật Khẩu</label>
                                    <input type="password" class="form-control" id="profilePassword" placeholder="Mật khẩu mới (nếu muốn thay đổi)">
                                </div>
                                <div class="form-group">
                                    <label for="profilePhone">Số Điện Thoại</label>
                                    <input type="text" class="form-control" id="profilePhone" placeholder="Số điện thoại của bạn" required>
                                </div>
                                <div class="form-group">
                                    <label for="profileImage">Ảnh Đại Diện</label>
                                    <input type="file" class="form-control-file" id="profileImage" accept="image/*">
                                </div>
                                <button type="submit" class="btn btn-primary">Cập Nhật Hồ Sơ</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="assets/js/jquery-3.5.1.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/script.js"></script>

    <script>
        // Giả lập dữ liệu người dùng
        const userProfile = {
            name: "Admin",
            email: "admin@example.com",
            phone: "0123456789",
            image: "assets/img/profiles/avatar-01.jpg"
        };

        // Hiển thị thông tin người dùng
        document.addEventListener("DOMContentLoaded", function() {
            document.getElementById("profileName").value = userProfile.name;
            document.getElementById("profileEmail").value = userProfile.email;
            document.getElementById("profilePhone").value = userProfile.phone;
            document.getElementById("profileImage").previousElementSibling.src = userProfile.image; // Hiển thị ảnh đại diện
        });

        // Cập nhật hồ sơ
        document.getElementById("profileForm").addEventListener("submit", function(event) {
            event.preventDefault(); // Ngăn chặn reload trang

            // Lấy dữ liệu từ form
            const updatedProfile = {
                name: document.getElementById("profileName").value,
                email: document.getElementById("profileEmail").value,
                phone: document.getElementById("profilePhone").value,
                password: document.getElementById("profilePassword").value,
                image: document.getElementById("profileImage").files[0] // Lưu ảnh đại diện
            };

            // Xử lý cập nhật hồ sơ (giả lập)
            console.log("Cập nhật hồ sơ:", updatedProfile);
            alert("Hồ sơ đã được cập nhật thành công!");

            // Cập nhật thông tin người dùng
            userProfile.name = updatedProfile.name;
            userProfile.email = updatedProfile.email;
            userProfile.phone = updatedProfile.phone;
            // Nếu có mật khẩu mới, xử lý ở đây
            if (updatedProfile.password) {
                // Xử lý thay đổi mật khẩu
                console.log("Mật khẩu đã được thay đổi.");
            }
            // Nếu có ảnh đại diện mới, xử lý ở đây
            if (updatedProfile.image) {
                // Xử lý upload ảnh
                console.log("Ảnh đại diện đã được thay đổi.");
            }
        });
    </script>
</div>
</body>

</html>