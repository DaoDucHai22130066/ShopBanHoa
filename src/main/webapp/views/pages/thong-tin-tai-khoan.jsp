<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 27/12/2024
  Time: 11:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Thông tin tài khoản</title>
  <!--    Shortcut Icon-->
  <link rel="icon" href="../../images/icon-logo.png" type="image/png">
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- FontAwesome CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
  <!-- Custom CSS -->
  <link rel="stylesheet" href="../../css/thong-tin-tai-khoan.css">
</head>
<body>
<jsp:include page="../layout/header.jsp"/>
<main>
<div class="container">
  <div class="row">
    <div class="col-md-3">
      <div class="sidebar">
        <h4>TÀI KHOẢN</h4>
        <a href="../../views/pages/thong-tin-tai-khoan.jsp">Thông tin tài khoản</a>
        <a href="../../views/pages/doimatkhau.jsp">Đổi mật khẩu</a>
        <a href="../../views/pages/trangthaidonhang.jsp">Trạng thái đơn hàng</a>
        <a href="../../views/pages/lich-su-don-hang.jsp">Xem lịch sử mua hàng</a>
        <a href="#" id="logoutBtn">Đăng xuất</a>
      </div>
    </div>
    <div class="col-md-9">
      <div class="content">
        <h4>CẬP NHẬT THÔNG TIN TÀI KHOẢN</h4>
        <form id="accountInfoForm">
          <div class="form-group">
            <label>* Email của bạn:</label>
            <span id="emailInput"></span>
          </div>
          <div class="form-group">
            <label class="label-firstname">Tên:</label>
            <input type="text" class="form-control" id="firstNameInput">
          </div>
          <div class="form-group">
            <label class="label-lastname">Họ:</label>
            <input type="text" class="form-control" id="lastNameInput">
          </div>
          <div class="form-group">
            <label class="label-phone">Điện thoại:</label>
            <input type="text" class="form-control" id="phoneInput">
          </div>

          <!-- Các trường khác không cần thay đổi -->
          <div class="form-group">
            <label>Địa chỉ:</label>
            <input type="text" class="form-control">
          </div>
          <div class="form-group">
            <label>Quốc gia:</label>
            <select class="form-control">
              <option>Việt Nam</option>
            </select>
          </div>
          <div class="form-group">
            <label for="input-shipping-zone" class="form-label">Tỉnh / thành phố</label>
            <select name="shipping_zone_id" id="input-shipping-zone" class="form-select">
              <option value="0">Vui lòng chọn tỉnh/thành phố</option>
              <option value="43" >TP.Hồ Chí Minh - Nội thành</option>
              <option value="44" >TP.Hồ Chí Minh - Ngoại thành</option>
            </select>
          </div>
          <div class="form-group">
            <label for="input-shipping-custom-field-30" class="form-label">Quận / Huyện</label>
            <select name="shipping_custom_field[address][30]"
                    id="input-shipping-custom-field-30" class="form-select">
              <option value="0">Vui lòng chọn quận/huyện</option>
            </select>
          </div>
          <button type="submit" class="btn btn-save" id="save-btn">
            <i class="fas fa-save"></i> Lưu
          </button>
        </form>
      </div>
    </div>
  </div>
</div>
</main>
<jsp:include page="../layout/footer.jsp"/>
<!-- Bootstrap JS and dependencies -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<!-- Bootstrap JS -->
<script src="../../js/thong-tin-tai-khoan.js"></script>
<script src="../../js/thong-tin.js"></script>
<script src="../../js/themgio.js"></script>


</body>
</html>
