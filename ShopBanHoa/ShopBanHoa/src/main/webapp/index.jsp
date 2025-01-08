<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Bloom & Shine</title>
    <!-- Favicon -->
    <link rel="icon" href="images/icon-logo.png" type="image/png">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/style.css" />
</head>
<body>
<!-- Header -->
<jsp:include page="header.jsp"/>

<!-- Carousel quảng cáo -->
<div class="container">
    <div id="banner-carousel" class="carousel slide" data-bs-ride="carousel">
        <!-- Carousel Indicators -->
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#banner-carousel" data-bs-slide-to="0" class="active"
                    aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#banner-carousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#banner-carousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
            <button type="button" data-bs-target="#banner-carousel" data-bs-slide-to="3" aria-label="Slide 4"></button>
            <button type="button" data-bs-target="#banner-carousel" data-bs-slide-to="4" aria-label="Slide 5"></button>
        </div>

        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="Carousel/carousel1.webp" class="d-block w-100 banner" alt="Banner Quảng Cáo 1" />
            </div>
            <div class="carousel-item">
                <img src="Carousel/carousel2.webp" class="d-block w-100 banner" alt="Banner Quảng Cáo 2" />
            </div>
            <div class="carousel-item">
                <img src="Carousel/carousel3.webp" class="d-block w-100 banner" alt="Banner Quảng Cáo 3" />
            </div>
            <div class="carousel-item">
                <img src="Carousel/carousel2.webp" class="d-block w-100 banner" alt="Banner Quảng Cáo 4" />
            </div>
            <div class="carousel-item">
                <img src="Carousel/carousel1.webp" class="d-block w-100 banner" alt="Banner Quảng Cáo 5" />
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#banner-carousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#banner-carousel" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</div>

<!-- Sản phẩm đang giảm giá -->
<div class="container">
    <h2 class="section-title">Đang Giảm Giá</h2>
    <div class="row">
        <!-- Sản phẩm 1 -->
        <div class="col-md-3">
            <div class="card product-card">
                <a href="chi-tiet-sp.jsp">
                    <img src="images/san-pham.webp" class="card-img-top" alt="Hoa 1" />
                </a>
                <div class="card-body">
                    <div class="sale-badge">Giảm 30%</div>
                    <h5 class="product-name">
                        <a href="chi-tiet-sp.jsp">Kiss Me</a>
                    </h5>
                    <p class="product-price">300,000đ</p>
                    <a href="#" class="btn btn-buy add-to-cart" data-product-name="Kiss Me" data-product-price="350000"
                       data-product-img="images/san-pham.webp" data-product-id="BOUQUET-10001">Thêm Giỏ</a>
                    <a href="chi-tiet-sp.jsp" class="btn btn-buy">Đặt Nhanh</a>
                </div>
            </div>
        </div>
        <!-- Sản phẩm 2 -->
        <div class="col-md-3">
            <div class="card product-card">
                <img src="images/san-pham-2.jpg" class="card-img-top" alt="Hoa 2" />

                <div class="card-body">
                    <div class="sale-badge">Giảm 30%</div>
                    <h5 class="product-name">Infallible</h5>
                    <p class="product-price">350,000đ</p>
                    <a href="#" class="btn btn-buy add-to-cart" data-product-name="Infallible" data-product-price="350000"
                       data-product-img="images/san-pham.webp" data-product-id="BOUQUET-10002">Thêm Giỏ</a>
                    <a href="#" class="btn btn-buy">Đặt Nhanh</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card product-card">
                <img src="images/san-pham-3.jpg" class="card-img-top" alt="Hoa 2" />

                <div class="card-body">
                    <div class="sale-badge">Giảm 30%</div>
                    <h5 class="product-name">Infallible</h5>
                    <p class="product-price">350,000đ</p>
                    <a href="#" class="btn btn-buy">Thêm Giỏ</a>
                    <a href="#" class="btn btn-buy">Đặt Nhanh</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card product-card">
                <img src="images/san-pham-4.webp" class="card-img-top" alt="Hoa 2" />

                <div class="card-body">
                    <div class="sale-badge">Giảm 30%</div>
                    <h5 class="product-name">Infallible</h5>
                    <p class="product-price">350,000đ</p>
                    <a href="#" class="btn btn-buy">Thêm Giỏ</a>
                    <a href="#" class="btn btn-buy">Đặt Nhanh</a>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Sản phẩm đặt nhiều nhất -->
<div class="container">
    <h2 class="section-title">Đặt Nhiều Nhất</h2>
    <div class="row">
        <!-- Sản phẩm 1 -->
        <div class="col-md-3">
            <div class="card product-card">
                <img src="images/sanpham5.webp" class="card-img-top" alt="Hoa 3" />
                <div class="card-body">

                    <h5 class="product-name">Infallible</h5>
                    <p class="product-price">350,000đ</p>
                    <a href="#" class="btn btn-buy">Thêm Giỏ</a>
                    <a href="#" class="btn btn-buy">Đặt Nhanh</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card product-card">
                <img src="images/sanpham6.webp" class="card-img-top" alt="Hoa 4" />
                <div class="card-body">

                    <h5 class="product-name">Infallible</h5>
                    <p class="product-price">350,000đ</p>
                    <a href="#" class="btn btn-buy">Thêm Giỏ</a>
                    <a href="#" class="btn btn-buy">Đặt Nhanh</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card product-card">
                <img src="images/sanpham8.webp" class="card-img-top" alt="Hoa 2" />

                <div class="card-body">

                    <h5 class="product-name">Infallible</h5>
                    <p class="product-price">350,000đ</p>
                    <a href="#" class="btn btn-buy">Thêm Giỏ</a>
                    <a href="#" class="btn btn-buy">Đặt Nhanh</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card product-card">
                <img src="images/sanpham9.webp" class="card-img-top" alt="Hoa 2" />

                <div class="card-body">

                    <h5 class="product-name">Infallible</h5>
                    <p class="product-price">350,000đ</p>
                    <a href="#" class="btn btn-buy">Thêm Giỏ</a>
                    <a href="#" class="btn btn-buy">Đặt Nhanh</a>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Sản phẩm Mới -->
<div class="container">
    <h2 class="section-title">Sản Phẩm Mới</h2>
    <div class="row">
        <!-- Sản phẩm 1 -->
        <div class="col-md-3">
            <div class="card product-card">
                <img src="images/sanpham10.webp" class="card-img-top" alt="Hoa 3" />

                <div class="card-body">

                    <h5 class="product-name">Infallible</h5>
                    <p class="product-price">350,000đ</p>
                    <a href="#" class="btn btn-buy">Thêm Giỏ</a>
                    <a href="#" class="btn btn-buy">Đặt Nhanh</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card product-card">
                <img src="images/sanpham11.webp" class="card-img-top" alt="Hoa 4" />

                <div class="card-body">

                    <h5 class="product-name">Infallible</h5>
                    <p class="product-price">350,000đ</p>
                    <a href="#" class="btn btn-buy">Thêm Giỏ</a>
                    <a href="#" class="btn btn-buy">Đặt Nhanh</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card product-card">
                <img src="images/sanpham12.webp" class="card-img-top" alt="Hoa 2" />

                <div class="card-body">
                    <div class="sale-badge">Giảm 10%</div>
                    <h5 class="product-name">Infallible</h5>
                    <p class="product-price">350,000đ</p>
                    <a href="#" class="btn btn-buy">Thêm Giỏ</a>
                    <a href="#" class="btn btn-buy">Đặt Nhanh</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card product-card">
                <img src="images/sanpham13.webp" class="card-img-top" alt="Hoa 2" />

                <div class="card-body">

                    <h5 class="product-name">Infallible</h5>
                    <p class="product-price">350,000đ</p>
                    <a href="#" class="btn btn-buy">Thêm Giỏ</a>
                    <a href="#" class="btn btn-buy">Đặt Nhanh</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Sản phẩm Sinh Nhật -->
<div class="container">
    <h2 class="section-title">Hoa Sinh Nhật</h2>
    <div class="row">
        <!-- Sản phẩm 1 -->
        <div class="col-md-3">
            <div class="card product-card">
                <img src="images/sanpham14.webp" class="card-img-top" alt="Hoa 3" />

                <div class="card-body">
                    <div class="sale-badge">Giảm 20%</div>
                    <h5 class="product-name">Infallible</h5>
                    <p class="product-price">350,000đ</p>
                    <a href="#" class="btn btn-buy">Thêm Giỏ</a>
                    <a href="#" class="btn btn-buy">Đặt Nhanh</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card product-card">
                <img src="images/sanpham15.webp" class="card-img-top" alt="Hoa 4" />

                <div class="card-body">

                    <h5 class="product-name">Infallible</h5>
                    <p class="product-price">350,000đ</p>
                    <a href="#" class="btn btn-buy">Thêm Giỏ</a>
                    <a href="#" class="btn btn-buy">Đặt Nhanh</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card product-card">
                <img src="images/sanpham16.webp" class="card-img-top" alt="Hoa 2" />

                <div class="card-body">

                    <h5 class="product-name">Infallible</h5>
                    <p class="product-price">350,000đ</p>
                    <a href="#" class="btn btn-buy">Thêm Giỏ</a>
                    <a href="#" class="btn btn-buy">Đặt Nhanh</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card product-card">
                <img src="images/sanpham17.webp" class="card-img-top" alt="Hoa 2" />

                <div class="card-body">

                    <h5 class="product-name">Infallible</h5>
                    <p class="product-price">350,000đ</p>
                    <a href="#" class="btn btn-buy">Thêm Giỏ</a>
                    <a href="#" class="btn btn-buy">Đặt Nhanh</a>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Sản phẩm Khai Trường -->
<div class="container">
    <h2 class="section-title">Hoa Khai Trương</h2>
    <div class="row">
        <!-- Sản phẩm 1 -->
        <div class="col-md-3">
            <div class="card product-card">
                <img src="images/sanpham18.webp" class="card-img-top" alt="Hoa 2" />
                <div class="card-body">

                    <h5 class="product-name">Infallible</h5>
                    <p class="product-price">350,000đ</p>
                    <a href="#" class="btn btn-buy">Thêm Giỏ</a>
                    <a href="#" class="btn btn-buy">Đặt Nhanh</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card product-card">
                <img src="images/sanpham19.webp" class="card-img-top" alt="Hoa 2" />
                <div class="card-body">

                    <h5 class="product-name">Infallible</h5>
                    <p class="product-price">350,000đ</p>
                    <a href="#" class="btn btn-buy">Thêm Giỏ</a>
                    <a href="#" class="btn btn-buy">Đặt Nhanh</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card product-card">
                <img src="images/sanpham20.webp" class="card-img-top" alt="Hoa 2" />

                <div class="card-body">

                    <h5 class="product-name">Infallible</h5>
                    <p class="product-price">350,000đ</p>
                    <a href="#" class="btn btn-buy">Thêm Giỏ</a>
                    <a href="#" class="btn btn-buy">Đặt Nhanh</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card product-card">
                <img src="images/sanpham21.webp" class="card-img-top" alt="Hoa 2" />

                <div class="card-body">

                    <h5 class="product-name">Infallible</h5>
                    <p class="product-price">350,000đ</p>
                    <a href="#" class="btn btn-buy">Thêm Giỏ</a>
                    <a href="#" class="btn btn-buy">Đặt Nhanh</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!--Hoa Tươi được săn đón nhiều nhất-->
<div class="container">
    <h2 class="section-title">Hoa Thiết Kế</h2>
    <div class="row">
        <!-- Sản phẩm 1 -->
        <div class="col-md-3">
            <div class="card product-card">
                <img src="images/sanpham22.webp" class="card-img-top" alt="Hoa 3" />
                <div class="card-body">
                    <h5 class="product-name">Your Day</h5>
                    <p class="product-price">400,000đ</p>
                    <a href="#" class="btn btn-buy">Thêm Giỏ</a>
                    <a href="#" class="btn btn-buy">Đặt Nhanh</a>
                </div>
            </div>
        </div>
        <!-- Sản phẩm 2 -->
        <div class="col-md-3">
            <div class="card product-card">
                <img src="images/sanpham23.webp" class="card-img-top" alt="Hoa 4" />
                <div class="card-body">
                    <h5 class="product-name">Pink Moon</h5>
                    <p class="product-price">450,000đ</p>
                    <a href="#" class="btn btn-buy">Thêm Giỏ</a>
                    <a href="#" class="btn btn-buy">Đặt Nhanh</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card product-card">
                <img src="images/sanpham24.webp" class="card-img-top" alt="Hoa 2" />

                <div class="card-body">

                    <h5 class="product-name">Infallible</h5>
                    <p class="product-price">350,000đ</p>
                    <a href="#" class="btn btn-buy">Thêm Giỏ</a>
                    <a href="#" class="btn btn-buy">Đặt Nhanh</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card product-card">
                <img src="images/sanpham7.webp" class="card-img-top" alt="Hoa 2" />

                <div class="card-body">

                    <h5 class="product-name">Infallible</h5>
                    <p class="product-price">350,000đ</p>
                    <a href="#" class="btn btn-buy">Thêm Giỏ</a>
                    <a href="#" class="btn btn-buy">Đặt Nhanh</a>
                </div>
            </div>
        </div>
    </div>
</div>

<section class="container py-5">
    <h2 class="text-center mb-4 fw-bold custom-text">LƠI ÍCH KHI ĐẶT HOA Ở BLOOM&SHINE SHOP</h2>
    <div class="row g-4">
        <div class="col-md-3">
            <div class="feature-box">
                <i class="fas fa-thumbs-up"></i>
                <h5>Hoa đẹp như hình</h5>
                <p>Hoa đẹp như hình và giống đến 80-90% so với hình trên website</p>
            </div>
        </div>
        <div class="col-md-3">
            <div class="feature-box">
                <i class="fas fa-gift"></i>
                <h5>Miễn phí thiệp</h5>
                <p>Tặng kèm thiệp, bảng chúc mừng/chia buồn theo yêu cầu</p>
            </div>
        </div>
        <div class="col-md-3">
            <div class="feature-box">
                <i class="fas fa-truck"></i>
                <h5>Giao hàng siêu tốc</h5>
                <p>Giao hàng nhanh trong vòng 2h kể từ khi thanh toán</p>
            </div>
        </div>
        <div class="col-md-3">
            <div class="feature-box">
                <i class="fas fa-camera"></i>
                <h5>Chụp ảnh xác nhận</h5>
                <p>Chụp ảnh thành phẩm xác nhận trước và sau khi giao</p>
            </div>
        </div>
    </div>
</section>

<!-- Phần logo thanh toán -->
<section class="text-center py-3 bg-white">
    <div class="container payment-logos">
        <img src="https://via.placeholder.com/80x40?text=Zalo" alt="Zalo Pay" />
        <img src="https://via.placeholder.com/80x40?text=Vietcombank" alt="Vietcombank" />
        <img src="https://via.placeholder.com/80x40?text=ACB" alt="ACB" />
        <img src="https://via.placeholder.com/80x40?text=Momo" alt="Momo" />
        <img src="https://via.placeholder.com/80x40?text=Visa" alt="Visa" />
        <img src="https://via.placeholder.com/80x40?text=Mastercard" alt="Mastercard" />
        <img src="https://via.placeholder.com/80x40?text=Cash" alt="Cash" />
    </div>
</section>
<!-- Biểu tượng nổi bên trái -->
<div class="floating-icons">
    <a href="#"><i class="fab fa-facebook-messenger"></i></a>
    <a href="#"><i class="fab fa-zalo"></i></a>
    <a href="#"><i class="fas fa-phone"></i></a>
</div>
</main>
<jsp:include page="footer.jsp"/>

<button id="scrollToTopBtn" title="Cuộn lên đầu trang">↑</button>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
<script src="js/index.js"></script>
<script src=""></script>
</body>
</html>
