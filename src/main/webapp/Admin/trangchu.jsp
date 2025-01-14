<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 1/13/2025
  Time: 7:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
  <title>Flower Shop Admin Dashboard</title>
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
        <span class="logoclass">Bloom & Shine</span>
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
          <a class="dropdown-item" href="hosocuatoi.jsp">Hồ Sơ Của Tôi</a>
          <a class="dropdown-item" href="../views/pages/dangnhap.jsp">Logout</a>
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
            <h4 class="card-title float-left mt-2">Chào mừng đến với Bloom & Shine Admin!</h4>
          </div>
        </div>
      </div>

      <div class="row">
        <div class="col-xl-3 col-sm-6 col-12">
          <div class="card board1 fill">
            <div class="card-body">
              <div class="dash-widget-header">
                <div>
                  <h3 class="card_widget_header">150</h3>
                  <h6 class="text-muted">Hoa Tươi</h6>
                </div>
                <div class="ml-auto mt-md-3 mt-lg-0">
                  <span class="opacity-7 text-muted"><i class="fas fa-rose"></i></span>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="col-xl-3 col-sm-6 col-12">
          <div class="card board1 fill">
            <div class="card-body">
              <div class="dash-widget-header">
                <div>
                  <h3 class="card_widget_header">85</h3>
                  <h6 class="text-muted">Đơn Hàng</h6>
                </div>
                <div class="ml-auto mt-md-3 mt-lg-0">
                  <span class="opacity-7 text-muted"><i class="fas fa-shopping-cart"></i></span>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="col-xl-3 col-sm-6 col-12">
          <div class="card board1 fill">
            <div class="card-body">
              <div class="dash-widget-header">
                <div>
                  <h3 class="card_widget_header">120</h3>
                  <h6 class="text-muted">Khách Hàng</h6>
                </div>
                <div class="ml-auto mt-md-3 mt-lg-0">
                  <span class="opacity-7 text-muted"><i class="fas fa-users"></i></span>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="col-xl-3 col-sm-6 col-12">
          <div class="card board1 fill">
            <div class="card-body">
              <div class="dash-widget-header">
                <div>
                  <h3 class="card_widget_header">$1500</h3>
                  <h6 class="text-muted">Doanh Thu</h6>
                </div>
                <div class="ml-auto mt-md-3 mt-lg-0">
                  <span class="opacity-7 text-muted"><i class="fas fa-dollar-sign"></i></span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="row">
        <div class="col-md-12">
          <div class="card">
            <div class="card-header">
              <h4 class="card-title">Danh Sách Đơn Hàng Gần Đây</h4>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-striped table-hover">
                  <thead>
                  <tr>
                    <th>ID Đơn Hàng</th>
                    <th>Khách Hàng</th>
                    <th>Trạng Thái</th>
                    <th>Tổng Tiền</th>
                    <th>Ngày Đặt</th>
                    <th class="text-right">Hành Động</th>
                  </tr>
                  </thead>
                  <tbody>
                  <tr>
                    <td>#1001</td>
                    <td>Nguyễn Văn A</td>
                    <td><span class="badge badge-success">Đã hoàn thành</span></td>
                    <td>$100</td>
                    <td>01/10/2023</td>
                    <td class="text-right">
                      <a href="order-details.html?id=1001" class="btn btn-sm btn-info">Chi tiết</a>
                    </td>
                  </tr>
                  <tr>
                    <td>#1002</td>
                    <td>Trần Thị B</td>
                    <td><span class="badge badge-warning">Đang xử lý</span></td>
                    <td>$150</td>
                    <td>02/10/2023</td>
                    <td class="text-right">
                      <a href="order-details.html?id=1002" class="btn btn-sm btn-info">Chi tiết</a>
                    </td>
                  </tr>
                  <tr>
                    <td>#1003</td>
                    <td>Phạm Văn C</td>
                    <td><span class="badge badge-danger">Đã hủy</span></td>
                    <td>$200</td>
                    <td>03/10/2023</td>
                    <td class="text-right">
                      <a href="order-details.html?id=1003" class="btn btn-sm btn-info">Chi tiết</a>
                    </td>
                  </tr>
                  </tbody>
                </table>
              </div>
            </div>
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
</body>

</html>