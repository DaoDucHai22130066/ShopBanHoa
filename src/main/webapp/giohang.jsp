<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 27/12/2024
  Time: 11:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Giỏ hàng</title>
    <!--    Shortcut Icon-->
    <link rel="icon" href="./images/icon-logo.png" type="image/png">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <!-- FontAwesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
    <!-- Custom CSS -->
    <link rel="stylesheet" href="./css/gio-hang.css" />
</head>

<body>
<jsp:include page="./header.jsp"/>
<main>
<div id="checkout-cart" class="container">
    <ul class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="./index.jsp"><i class="fas fa-home"> </i></a>
        </li>
        <li class="breadcrumb-item">
            <a href="./giohang.jsp">Giỏ hàng</a>
        </li>
    </ul>

    <div class="row">
        <div id="content" class="col mt-5">
            <div id="shopping-cart">
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead>
                        <tr>
                            <td class="text-center">
                                <input type="checkbox" id="selectAll" title="Chọn tất cả" />
                            </td>
                            <td class="text-center">Hình ảnh</td>
                            <td class="text-start">Tên sản phẩm</td>
                            <td class="text-start">Mã sản phẩm</td>
                            <td class="text-start">Số lượng</td>
                            <td class="text-end">Đơn giá</td>
                            <td class="text-end">Tổng cộng</td>
                        </tr>
                        </thead>
                        <tbody id="cart-items">

                        </tbody>
                    </table>
                    <div id="totalAmount" style="font-weight: bold; margin-top: 20px;">
                        Tổng số tiền: 0 VND
                    </div>
                </div>
            </div>
            <div class="d-inline-block pt-2 pd-2 w-100">
                <div class="float-start">
                    <a href="./index.jsp" class="btn btn-light">Tiếp tục mua sắm</a>
                </div>
                <div class="float-end">
                    <a href="/thanh-toan.jsp" class="btn btn-primary" id="checkoutButton">Thanh toán</a>
                </div>
            </div>
        </div>
    </div>
</div>
</main>
<jsp:include page="./footer.jsp"/>
<!-- Bootstrap JS and dependencies -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
<script src="./js/gio-hang.js"></script>


</body>
</html>
