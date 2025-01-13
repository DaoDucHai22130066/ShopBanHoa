<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Hoa Sinh Nhật</title>
  <link rel="icon" href="images/icon-logo.png" type="image/png">
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" />
  <!-- FontAwesome CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
  <!-- Custom CSS -->
  <link rel="stylesheet" href="../../css/flower.css" />
</head>

<body>
<!-- Include Header -->
<jsp:include page="../layout/header.jsp" />

<div class="container">
  <h2 class="section-title">Hoa Sinh Nhật</h2>
  <div class="sort-bar">
    <div class="view-options">
      <i class="fa fa-th"></i>
    </div>
    <label for="sort-by">Sắp xếp theo:</label>
    <select id="sort-by">
      <option value="default">Mặc định</option>
      <option value="price-asc">Giá: Thấp đến Cao</option>
      <option value="price-desc">Giá: Cao đến Thấp</option>
      <option value="best-seller">Bán chạy nhất</option>
    </select>
    <select id="items-per-page">
      <option value="12">12</option>
      <option value="24">24</option>
      <option value="48">48</option>
    </select>
  </div>
</div>

<main>
  <div class="container product-section">
    <div class="row" id="product-list"></div>
  </div>

  <div id="pagination" class="pagination"></div>
  <div class="pagination-info">Hiển thị từ 1 đến 16 / 348 (21 Trang)</div>

  <div class="floating-icons">
    <a href="#"><i class="fab fa-facebook-messenger"></i></a>
    <a href="#"><i class="fab fa-zalo"></i></a>
    <a href="#"><i class="fas fa-phone"></i></a>
  </div>
</main>

<!-- Include Footer -->
<jsp:include page="../layout/footer.jsp" />

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Custom JS -->
<script src="../../js/hoa-sinh-nhat-cao-cap.js"></script>
</body>

</html>
