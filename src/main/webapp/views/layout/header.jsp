<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<Header>
    <!-- Phần trên cùng: Hotline và mạng xã hội -->
    <div class="top-bar text-center">
        <div class="container d-flex justify-content-between align-items-center">
            <div class="hotline">
                <span>HOTLINE: 1900 633 045 | 0865 160 360</span>
            </div>
            <div class="social-icons">
                <a href="https://web.facebook.com/Mr.Lebail/"><i class="fab fa-facebook-f"></i></a>
                <a href="#"><i class="fab fa-twitter"></i></a>
                <a href="#"><i class="fab fa-instagram"></i></a>
            </div>
        </div>
    </div>

    <!-- Phần header chính: logo, tìm kiếm, tài khoản, giỏ hàng -->
    <header class="main-header">
        <div class="container d-flex justify-content-between align-items-center">
            <!-- Logo -->
            <div class="logo">
                <a href="../pages/index.jsp"><img src="../../images/logo.png" width="" alt="Bloom & Shine Logo" class="img-fluid"></a>
            </div>

            <!-- Thanh tìm kiếm -->
            <div class="main-header search-bar">
                <form action="search.jsp" method="GET" style="display: flex; align-items: center;">
                    <input
                            type="text"
                            name="query"
                            placeholder="Tìm kiếm sản phẩm..."
                            class="form-control"
                            style="width: 70%; margin-right: 10px;"
                            required
                    />
                    <button
                            type="submit"
                            class="btn btn-primary"
                            style="background-color: #ff6f61; color: #fff; border: none; padding: 10px 20px;">
                        <i class="fas fa-search"></i>
                    </button>
                </form>
            </div>


            <!-- Tài khoản, giỏ hàng, thanh toán -->

            <div class="icon-links d-flex align-items-center">
                <!-- Dropdown Tài Khoản -->
                <div class="dropdown">
                    <a href="#" class="dropdown-toggle" id="accountDropdown" data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="fas fa-user"></i> <span id="accountText">Tài khoản</span>  <!-- Đây là phần sẽ thay đổi -->
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="accountDropdown">
                        <li><a class="dropdown-item" href="../pages/dangnhap.jsp" id="loginBtn">Đăng nhập</a></li>
                        <li><a class="dropdown-item" href="../pages/dangki.jsp" id="signupBtn">Đăng ký</a></li>
                        <li><a class="dropdown-item" href="../pages/thong-tin-tai-khoan.jsp" id="accountBtn" style="display: none">Xem tài khoản</a></li>
                        <li><a class="dropdown-item" href="#" id="logoutBtn" style="display: none">Đăng xuất</a></li>
                    </ul>
                </div>
                <!-- Tài khoản, giỏ hàng, thanh toán -->
                <div class="icon-links">

                    <a href="../pages/giohang.jsp" class="cart">

                        <i class="fas fa-shopping-cart"></i>
                        <span class="cart-count" id="cart-icon-span">0</span>
                    </a>

                </div>
            </div>
        </div>
    </header>
</Header>

<!--Main-->

<Main>
    <!-- Thanh menu -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav mx-auto">
                    <li class="nav-item dropdown">
                        <a class="nav-link" href="../hoa-sinh-nhat.jsp" id="navbarDropdown1" role="button">
                            Hoa Sinh Nhật
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat-cao-cap.jsp">Hoa Sinh Nhật Cao Cấp</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat-cao-cap.jsp">Hoa Sinh Nhật Giá Rẻ</a></li>
                            <li><a class="dropdown-item" href="../hoa-sinh-nhat-cao-cap.jsp">Hoa Sinh Nhật Tặng Mẹ</a></li>
                            <li><a class="dropdown-item" href="../hoa-sinh-nhat-cao-cap.jsp">Hoa Sinh Nhật Tặng Người Yêu</a></li>
                            <li><a class="dropdown-item" href="../hoa-sinh-nhat-cao-cap.jsp">Lẵng Hoa Sinh Nhật</a></li>
                            <li><a class="dropdown-item" href="../hoa-sinh-nhat-cao-cap.jsp">Giỏ Hoa Sinh Nhật</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link" href="../hoa-sinh-nhat.jsp" id="navbarDropdown2" role="button">
                            Hoa Khai Trương
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat-cao-cap.jsp">Lẵng Hoa Khai Trương 2 Tầng</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat-cao-cap.jsp">Hoa Khai Trương Để Bàn</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat-cao-cap.jsp">Kệ Hoa Khai Trương</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat-cao-cap.jsp">Hoa Khai Trương Cao Cấp</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat-cao-cap.jsp">Hoa Khai Trương Giá Rẻ</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link" href="../hoa-sinh-nhat.jsp" id="navbarDropdown3" role="button">
                            Lan Hồ Điệp
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat-cao-cap.jsp">Lan Hồ Điệp Nhỏ</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat-cao-cap.jsp">Lan Hồ Điệp Vàng</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat-cao-cap.jsp">Lan Hồ Điệp Trắng</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat-cao-cap.jsp">Lan Hồ Điệp Tím</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat-cao-cap.jspl">Lan Hồ Điệp Sọc</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat-cao-cap.jsp">Lan Hồ Điệp Đốm</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat-cao-cap.jsp">Chậu Lan Hồ Điệp 3 cành</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat-cao-cap.jsp">Chậu Lan Hồ Điệp 5 cành</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat-cao-cap.jsp">Chậu Lan Hồ Điệp 10 cành</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link" href="../pages/hoa-sinh-nhat.jsp" id="navbarDropdown4" role="button">
                            Chủ Đề
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat-cao-cap.jsp">Hoa Chúc Mừng</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat-cao-cap.jsp">Hoa Cưới</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat-cao-cap.jsp">Hoa Chia Buồn</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat-cao-cap.jsp">Hoa Valentine</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat-cao-cap.jsp">Hoa Kỷ Niệm</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat-cao-cap.jsp">Hoa 8/3</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat-cao-cap.jsp">Hoa 20/10</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat-cao-cap.jsp">Hoa 20/11 - Ngày Nhà Giáo</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat-cao-cap.jsp">Hoa Tặng Mẹ</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat-cao-cap.jsp">Hoa Tốt Nghiệp</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat-cao-cap.jsp">Hoa Tặng Mẹ</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link" href="../pages/hoa-sinh-nhat.jsp" id="navbarDropdown5" role="button">Thiết Kế</a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat-cao-cap.jsp">Lẵng Hoa</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat-cao-cap.jsp">Giỏ Hoa</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat-cao-cap.jsp">Kệ Hoa</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat-cao-cap.jsp">Bình Hoa</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat-cao-cap.jsp">Bó Hoa</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link" href="../pages/hoa-sinh-nhat.jsp" id="navbarDropdown6" role="button">
                            Hoa Tươi
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat-cao-cap.jsp">Hoa Hồng</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat-cao-cap.jsp">Hoa Hướng Dương</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat-cao-cap.jsp">Lan Hồ Điệp</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat-cao-cap.jsp">Hoa Mẫu Đơn</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat-cao-cap.jsp">Hoa Tulip</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat-cao-cap.jsp">Hoa Sen</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat-cao-cap.jsp">Hoa Đồng Tiền</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat-cao-cap.jsp">Hoa Cẩm Chướng</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat-cao-cap.jsp">Cẩm Tú Cầu</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat-cao-cap.jsp">Hoa Ly</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Hoa Tươi Giảm 30%</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</Main>