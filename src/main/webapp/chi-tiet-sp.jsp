<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 27/12/2024
  Time: 19:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Bloom & Shine</title>
  <!--    Shortcut Icon-->
  <link rel="icon" href="./images/icon-logo.png" type="image/png">
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- FontAwesome CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
  <!-- Custom CSS -->
  <link rel="stylesheet" href="./css/chi-tiet-sp.css">
</head>
<body>
<jsp:include page="./header.jsp"/>
<main>
<div class="product-detail container">
  <div class="row">
    <!-- Phần ảnh sản phẩm -->
    <div class="col-md-6">
      <img src="./images/san-pham.webp" alt="Ảnh sản phẩm" class="product-image">
    </div>

    <!-- Phần thông tin sản phẩm -->
    <div class="col-md-6">
      <h2>Hẹn Hò</h2>
      <div class="product-price">
        <span class="original-price">410,000 VND</span>
        <span class="discounted-price">370,000 VND</span>
        <span class="discount-badge">10% Giảm</span>
      </div>
      <p class="contact-info">Gọi ngay: <span class="phone-number">1900 633 045</span></p>
      <p class="chat-options">
        Chat ngay:
        <a href="#"><i class="fab fa-facebook-messenger"></i></a>
        <a href="#"><i class="fab fa-zalo"></i></a>
        <a href="#"><i class="fab fa-zalo"></i></a>
        <a href="#"><i class="fab fa-zalo"></i></a>
      </p>

      <div class="shipping-options">
        <p>Phí giao hàng: <span>Miễn phí</span></p>
      </div>

      <div class="delivery-warning">
        <i class="fa fa-exclamation-circle"></i> Sản phẩm này không hỗ trợ giao vào ngày: 20-10-2024
      </div>

      <div class="quantity-section">
        <label for="quantity">Số Lượng</label>
        <input type="number" id="quantity" min="1" value="1">
        <button class="btn btn-primary">Thêm Giỏ</button>
        <button class="btn btn-warning" id="quickOrderBtn">Đặt Nhanh</button>
      </div>

      <div class="additional-info">
        <p><i class="fa fa-truck"></i> Giao hoa NHANH trong 60 phút</p>
        <p><i class="fa fa-gift"></i> Tặng miễn phí thiệp hoặc banner</p>
      </div>
    </div>
  </div>

  <!-- Phần mô tả sản phẩm -->
  <div class="product-description">
    <h3>Mô tả sản phẩm</h3>
    <p>Hoa Hẹn Hò là lựa chọn hoàn hảo để gửi gắm tình cảm và sự chân thành, món quà ý nghĩa trong những dịp
      đặc biệt.</p>
    <h4>Hoa bao gồm các loại hoa chính:</h4>
    <ul>
      <li>Hoa Hồng</li>
      <li>Hoa Baby trắng</li>
    </ul>
    <h5>Hương hoa:</h5>
    <ul>
      <li>Hương thơm của hoa hồng, như tình đầu mới quen</li>
    </ul>
  </div>

  <div class="related-products">
    <h2 class="related-title">Sản phẩm liên quan</h2>
    <div id="relatedProductsCarousel" class="carousel slide" data-bs-ride="false">
      <div class="carousel-inner">
        <div class="carousel-item active">
          <div class="row">
            <div class="col-md-3">
              <div class="product-card">
                <div class="product-image">
                  <img src="./images/sanpham21.webp" alt="Mã Hồng">
                </div>
                <div class="product-name">Mã Hồng</div>
                <div class="product-price">920,000VNĐ</div>
                <a href="chi-tiet-sp.jsp" class="buy-btn">ĐẶT HÀNG</a>
              </div>
            </div>
            <div class="col-md-3">
              <div class="product-card">
                <div class="product-image">
                  <img src="./images/sanpham23.webp" alt="Ngày Ngọt Ngào">
                </div>
                <div class="product-name">Ngày Ngọt Ngào</div>
                <div class="product-price">1,010,000VNĐ</div>
                <a href="chi-tiet-sp.jsp" class="buy-btn">ĐẶT HÀNG</a>
              </div>
            </div>
            <div class="col-md-3">
              <div class="product-card">
                <div class="product-image">
                  <img src="./images/sanpham8.webp" alt="Cầu Vồng">
                </div>
                <div class="product-name">Cầu Vồng</div>
                <div class="product-price">680,000VNĐ</div>
                <a href="chi-tiet-sp.jsp" class="buy-btn">ĐẶT HÀNG</a>
              </div>
            </div>
            <div class="col-md-3">
              <div class="product-card">
                <div class="product-image">
                  <img src="./images/sanpham16.webp" alt="Summer Delight">
                </div>
                <div class="product-name">Summer Delight</div>
                <div class="product-price">660,000VNĐ</div>
                <a href="chi-tiet-sp.jsp" class="buy-btn">ĐẶT HÀNG</a>
              </div>
            </div>
          </div>
        </div>
        <div class="carousel-item">
          <div class="row">
            <div class="col-md-3">
              <div class="product-card">
                <div class="product-image">
                  <img src="./images/sanpham11.webp" alt="Hoa Tươi">
                </div>
                <div class="product-name">Hoa Tươi</div>
                <div class="product-price">750,000VNĐ</div>
                <a href="chi-tiet-sp.jsp" class="buy-btn">ĐẶT HÀNG</a>
              </div>
            </div>
            <div class="col-md-3">
              <div class="product-card">
                <div class="product-image">
                  <img src="./images/sanpham17.webp" alt="Hương Đêm">
                </div>
                <div class="product-name">Hương Đêm</div>
                <div class="product-price">840,000VNĐ</div>
                <a href="chi-tiet-sp.jsp" class="buy-btn">ĐẶT HÀNG</a>
              </div>
            </div>
            <div class="col-md-3">
              <div class="product-card">
                <div class="product-image">
                  <img src="./images/san-pham-3.jpg" alt="Đêm Huyền Bí">
                </div>
                <div class="product-name">Đêm Huyền Bí</div>
                <div class="product-price">800,000VNĐ</div>
                <a href="chi-tiet-sp.jsp" class="buy-btn">ĐẶT HÀNG</a>
              </div>
            </div>
            <div class="col-md-3">
              <div class="product-card">
                <div class="product-image">
                  <img src="./images/san-pham-4.webp" alt="Summer Delight">
                </div>
                <div class="product-name">Summer Delight</div>
                <div class="product-price">660,000VNĐ</div>
                <a href="chi-tiet-sp.jsp" class="buy-btn">ĐẶT HÀNG</a>
              </div>
            </div>
          </div>
        </div>
        <div class="carousel-item">
          <div class="row">
            <div class="col-md-3">
              <div class="product-card">
                <div class="product-image">
                  <img src="./images/sanpham13.webp" alt="Hoa Tươi">
                </div>
                <div class="product-name">Hoa Tươi</div>
                <div class="product-price">750,000VNĐ</div>
                <a href="hoa-sinh-nhat-cao-cap.jsp" class="buy-btn">ĐẶT HÀNG</a>
              </div>
            </div>
            <div class="col-md-3">
              <div class="product-card">
                <div class="product-image">
                  <img src="./images/sanpham17.webp" alt="Hương Đêm">
                </div>
                <div class="product-name">Hương Đêm</div>
                <div class="product-price">840,000VNĐ</div>
                <a href="hoa-sinh-nhat-cao-cap.jsp" class="buy-btn">ĐẶT HÀNG</a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#relatedProductsCarousel"
              data-bs-slide="prev" id="prevBtn">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#relatedProductsCarousel"
              data-bs-slide="next" id="nextBtn">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>
  </div>
</div>
</Main>  <div class="product-detail container">
  <div class="row">
    <!-- Phần ảnh sản phẩm -->
    <div class="col-md-6">
      <img src="./images/san-pham.webp" alt="Ảnh sản phẩm" class="product-image">
    </div>

    <!-- Phần thông tin sản phẩm -->
    <div class="col-md-6">
      <h2>Hẹn Hò</h2>
      <div class="product-price">
        <span class="original-price">410,000 VND</span>
        <span class="discounted-price">370,000 VND</span>
        <span class="discount-badge">10% Giảm</span>
      </div>
      <p class="contact-info">Gọi ngay: <span class="phone-number">1900 633 045</span></p>
      <p class="chat-options">
        Chat ngay:
        <a href="#"><i class="fab fa-facebook-messenger"></i></a>
        <a href="#"><i class="fab fa-zalo"></i></a>
        <a href="#"><i class="fab fa-zalo"></i></a>
        <a href="#"><i class="fab fa-zalo"></i></a>
      </p>

      <div class="shipping-options">
        <p>Phí giao hàng: <span>Miễn phí</span></p>
      </div>

      <div class="delivery-warning">
        <i class="fa fa-exclamation-circle"></i> Sản phẩm này không hỗ trợ giao vào ngày: 20-10-2024
      </div>

      <div class="quantity-section">
        <label for="quantity">Số Lượng</label>
        <input type="number" id="quantity" min="1" value="1">
        <button class="btn btn-primary">Thêm Giỏ</button>
        <button class="btn btn-warning" id="quickOrderBtn">Đặt Nhanh</button>
      </div>

      <div class="additional-info">
        <p><i class="fa fa-truck"></i> Giao hoa NHANH trong 60 phút</p>
        <p><i class="fa fa-gift"></i> Tặng miễn phí thiệp hoặc banner</p>
      </div>
    </div>
  </div>

  <!-- Phần mô tả sản phẩm -->
  <div class="product-description">
    <h3>Mô tả sản phẩm</h3>
    <p>Hoa Hẹn Hò là lựa chọn hoàn hảo để gửi gắm tình cảm và sự chân thành, món quà ý nghĩa trong những dịp
      đặc biệt.</p>
    <h4>Hoa bao gồm các loại hoa chính:</h4>
    <ul>
      <li>Hoa Hồng</li>
      <li>Hoa Baby trắng</li>
    </ul>
    <h5>Hương hoa:</h5>
    <ul>
      <li>Hương thơm của hoa hồng, như tình đầu mới quen</li>
    </ul>
  </div>


  <div class="related-products">
    <h2 class="related-title">Sản phẩm liên quan</h2>
    <div id="relatedProductsCarousel" class="carousel slide" data-bs-ride="false">
      <div class="carousel-inner">
        <div class="carousel-item active">
          <div class="row">
            <div class="col-md-3">
              <div class="product-card">
                <div class="product-image">
                  <img src="./images/sanpham21.webp" alt="Mã Hồng">
                </div>
                <div class="product-name">Mã Hồng</div>
                <div class="product-price">920,000VNĐ</div>
                <a href="chi-tiet-sp.jsp" class="buy-btn">ĐẶT HÀNG</a>
              </div>
            </div>
            <div class="col-md-3">
              <div class="product-card">
                <div class="product-image">
                  <img src="./images/sanpham23.webp" alt="Ngày Ngọt Ngào">
                </div>
                <div class="product-name">Ngày Ngọt Ngào</div>
                <div class="product-price">1,010,000VNĐ</div>
                <a href="chi-tiet-sp.jsp" class="buy-btn">ĐẶT HÀNG</a>
              </div>
            </div>
            <div class="col-md-3">
              <div class="product-card">
                <div class="product-image">
                  <img src="./images/sanpham8.webp" alt="Cầu Vồng">
                </div>
                <div class="product-name">Cầu Vồng</div>
                <div class="product-price">680,000VNĐ</div>
                <a href="chi-tiet-sp.jsp" class="buy-btn">ĐẶT HÀNG</a>
              </div>
            </div>
            <div class="col-md-3">
              <div class="product-card">
                <div class="product-image">
                  <img src="./images/sanpham16.webp" alt="Summer Delight">
                </div>
                <div class="product-name">Summer Delight</div>
                <div class="product-price">660,000VNĐ</div>
                <a href="chi-tiet-sp.jsp" class="buy-btn">ĐẶT HÀNG</a>
              </div>
            </div>
          </div>
        </div>
        <div class="carousel-item">
          <div class="row">
            <div class="col-md-3">
              <div class="product-card">
                <div class="product-image">
                  <img src="./images/sanpham11.webp" alt="Hoa Tươi">
                </div>
                <div class="product-name">Hoa Tươi</div>
                <div class="product-price">750,000VNĐ</div>
                <a href="chi-tiet-sp.jsp" class="buy-btn">ĐẶT HÀNG</a>
              </div>
            </div>
            <div class="col-md-3">
              <div class="product-card">
                <div class="product-image">
                  <img src="./images/sanpham17.webp" alt="Hương Đêm">
                </div>
                <div class="product-name">Hương Đêm</div>
                <div class="product-price">840,000VNĐ</div>
                <a href="chi-tiet-sp.jsp" class="buy-btn">ĐẶT HÀNG</a>
              </div>
            </div>
            <div class="col-md-3">
              <div class="product-card">
                <div class="product-image">
                  <img src="./images/san-pham-3.jpg" alt="Đêm Huyền Bí">
                </div>
                <div class="product-name">Đêm Huyền Bí</div>
                <div class="product-price">800,000VNĐ</div>
                <a href="chi-tiet-sp.jsp" class="buy-btn">ĐẶT HÀNG</a>
              </div>
            </div>
            <div class="col-md-3">
              <div class="product-card">
                <div class="product-image">
                  <img src="./images/san-pham-4.webp" alt="Summer Delight">
                </div>
                <div class="product-name">Summer Delight</div>
                <div class="product-price">660,000VNĐ</div>
                <a href="chi-tiet-sp.jsp" class="buy-btn">ĐẶT HÀNG</a>
              </div>
            </div>
          </div>
        </div>
        <div class="carousel-item">
          <div class="row">
            <div class="col-md-3">
              <div class="product-card">
                <div class="product-image">
                  <img src="./images/sanpham13.webp" alt="Hoa Tươi">
                </div>
                <div class="product-name">Hoa Tươi</div>
                <div class="product-price">750,000VNĐ</div>
                <a href="hoa-sinh-nhat-cao-cap.jsp" class="buy-btn">ĐẶT HÀNG</a>
              </div>
            </div>
            <div class="col-md-3">
              <div class="product-card">
                <div class="product-image">
                  <img src="./images/sanpham17.webp" alt="Hương Đêm">
                </div>
                <div class="product-name">Hương Đêm</div>
                <div class="product-price">840,000VNĐ</div>
                <a href="hoa-sinh-nhat-cao-cap.jsp" class="buy-btn">ĐẶT HÀNG</a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#relatedProductsCarousel"
              data-bs-slide="prev" id="prevBtn">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#relatedProductsCarousel"
              data-bs-slide="next" id="nextBtn">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>
  </div>
</div>
</main>
<jsp:include page="/footer.jsp"/>
<!-- Bootstrap JS and dependencies -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
<script src="./js/themgio.js"></script>
<script src="./js/chitietsp.js"></script>
</body>
</html>
