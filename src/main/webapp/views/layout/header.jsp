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
            <div class="search-bar">
                <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Tìm kiếm" aria-label="Search">
                    <button class="btn btn-outline-secondary" type="submit"><i class="fas fa-search"></i></button>
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
                        <a class="nav-link" href="../pages/hoa-sinh-nhat.jsp?category_id=1" id="navbarDropdown1" role="button">
                            Hoa Sinh Nhật
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=2">Hoa Sinh Nhật Cao Cấp</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=3">Hoa Sinh Nhật Giá Rẻ</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=4">Hoa Sinh Nhật Tặng Mẹ</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=5">Hoa Sinh Nhật Tặng Người Yêu</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=6">Lẵng Hoa Sinh Nhật</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=7">Giỏ Hoa Sinh Nhật</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link" href="../pages/hoa-sinh-nhat.jsp?category_id=8" id="navbarDropdown2" role="button">
                            Hoa Khai Trương
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=9">Lẵng Hoa Khai Trương 2 Tầng</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=10">Hoa Khai Trương Để Bàn</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=11">Kệ Hoa Khai Trương</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=12">Hoa Khai Trương Cao Cấp</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=13">Hoa Khai Trương Giá Rẻ</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link" href="../pages/hoa-sinh-nhat.jsp?category_id=48" id="navbarDropdown3" role="button">
                            Lan Hồ Điệp
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=14">Lan Hồ Điệp Nhỏ</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=15">Lan Hồ Điệp Vàng</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=16">Lan Hồ Điệp Trắng</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=17">Lan Hồ Điệp Tím</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=18">Lan Hồ Điệp Sọc</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=19">Lan Hồ Điệp Đốm</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=20">Chậu Lan Hồ Điệp 3 cành</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=21">Chậu Lan Hồ Điệp 5 cành</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=22">Chậu Lan Hồ Điệp 10 cành</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link" href="../pages/hoa-sinh-nhat.jsp?category_id=49" id="navbarDropdown4" role="button">
                            Chủ Đề
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=23">Hoa Chúc Mừng</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=24">Hoa Cưới</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=25">Hoa Chia Buồn</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=26">Hoa Valentine</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=27">Hoa Kỷ Niệm</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=28">Hoa 8/3</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=29">Hoa 20/10</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=30">Hoa 20/11 - Ngày Nhà Giáo</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=31">Hoa Tặng Mẹ</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=32">Hoa Tốt Nghiệp</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link" href="../pages/hoa-sinh-nhat.jsp?category_id=50" id="navbarDropdown5" role="button">Thiết Kế</a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=33">Lẵng Hoa</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=34">Giỏ Hoa</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=35">Kệ Hoa</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=36">Bình Hoa</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=37">Bó Hoa</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link" href="../pages/hoa-sinh-nhat.jsp?category_id=51" id="navbarDropdown6" role="button">
                            Hoa Tươi
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=38">Hoa Hồng</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=39">Hoa Hướng Dương</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=41">Hoa Mẫu Đơn</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=42">Hoa Tulip</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=43">Hoa Sen</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=44">Hoa Đồng Tiền</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=45">Hoa Cẩm Chướng</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=46">Cẩm Tú Cầu</a></li>
                            <li><a class="dropdown-item" href="../pages/hoa-sinh-nhat.jsp?category_id=47">Hoa Ly</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../pages/hoa-sinh-nhat.jsp?category_id=52">Hoa Tươi Giảm 30%</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</Main>