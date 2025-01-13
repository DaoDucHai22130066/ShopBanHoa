<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>Flower Shop Admin - Đơn Hàng</title>
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
                        <h4 class="card-title float-left mt-2">Danh Sách Đơn Hàng</h4>
                        <button class="btn btn-primary float-right" data-toggle="modal" data-target="#orderForm" onclick="openOrderForm()">Thêm Đơn Hàng</button>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-hover">
                                    <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Tên Khách Hàng</th>
                                        <th>Sản Phẩm</th>
                                        <th>Số Lượng</th>
                                        <th>Tổng Giá</th>
                                        <th>Ngày Đặt</th>
                                        <th>Trạng Thái</th>
                                        <th class="text-right">Hành Động</th>
                                    </tr>
                                    </thead>
                                    <tbody id="orderTable">
                                    <!-- Dữ liệu đơn hàng sẽ được thêm ở đây -->
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Modal Thêm/Sửa Đơn Hàng -->
            <div class="modal fade" id="orderForm" tabindex="-1" role="dialog" aria-labelledby="orderFormLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="orderFormLabel">Thêm Đơn Hàng Mới</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Đóng">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form id="orderFormData">
                                <div class="form-group">
                                    <label for="customerName">Tên Khách Hàng</label>
                                    <input type="text" class="form-control" id="customerName" placeholder="Tên khách hàng" required>
                                </div>
                                <div class="form-group">
                                    <label for="productName">Sản Phẩm</label>
                                    <input type="text" class="form-control" id="productName" placeholder="Tên sản phẩm" required>
                                </div>
                                <div class="form-group">
                                    <label for="quantity">Số Lượng</label>
                                    <input type="number" class="form-control" id="quantity" placeholder="Số lượng" required>
                                </div>
                                <div class="form-group">
                                    <label for="totalPrice">Tổng Giá</label>
                                    <input type="number" class="form-control" id="totalPrice" placeholder="Tổng giá" required>
                                </div>
                                <div class="form-group">
                                    <label for="orderDate">Ngày Đặt</label>
                                    <input type="date" class="form-control" id="orderDate" required>
                                </div>
                                <div class="form-group">
                                    <label for="orderStatus">Trạng Thái</label>
                                    <select class="form-control" id="orderStatus" required>
                                        <option value="pending">Đang chờ</option>
                                        <option value="completed">Hoàn thành</option>
                                        <option value="canceled">Đã hủy</option>
                                    </select>
                                </div>
                                <button type="submit" class="btn btn-primary">Lưu Đơn Hàng</button>
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
        let orders = [];

        function openOrderForm() {
            document.getElementById("orderFormData").reset(); // Reset form
            document.getElementById("orderFormLabel").innerText = "Thêm Đơn Hàng Mới"; // Set title
            const saveButton = document.querySelector("#orderForm .btn-primary");
            saveButton.onclick = addOrder; // Gắn sự kiện thêm mới
        }

        function addOrder(event) {
            event.preventDefault(); // Ngăn chặn reload trang
            const newOrder = {
                id: orders.length + 1,
                customerName: document.getElementById("customerName").value,
                productName: document.getElementById("productName").value,
                quantity: parseInt(document.getElementById("quantity").value),
                totalPrice: parseFloat(document.getElementById("totalPrice").value),
                orderDate: document.getElementById("orderDate").value,
                orderStatus: document.getElementById("orderStatus").value
            };
            orders.push(newOrder); // Thêm vào danh sách
            updateOrderTable(); // Cập nhật bảng
            $('#orderForm').modal('hide'); // Đóng modal
        }

        function updateOrderTable() {
            const orderTable = document.getElementById("orderTable");
            orderTable.innerHTML = ""; // Xóa dữ liệu cũ
            orders.forEach((order) => {
                const row = document.createElement("tr");
                row.innerHTML = `
                    <td>${order.id}</td>
                    <td>${order.customerName}</td>
                    <td>${order.productName}</td>
                    <td>${order.quantity}</td>
                    <td>${order.totalPrice.toFixed(2)} VNĐ</td>
                    <td>${Date(order.orderDate).toLocaleDateString()}</td>
                    <td>${order.orderStatus}</td>
                    <td class="text-right">
                        <button class="btn btn-sm btn-info" onclick="editOrder(${order.id})">Sửa</button>
                        <button class="btn btn-sm btn-danger" onclick="deleteOrder(${order.id})">Xóa</button>
                    </td>
                `;
                orderTable.appendChild(row);
            });
        }

        function editOrder(id) {
            const order = orders.find(o => o.id === id);
            if (order) {
                document.getElementById("customerName").value = order.customerName;
                document.getElementById("productName").value = order.productName;
                document.getElementById("quantity").value = order.quantity;
                document.getElementById("totalPrice").value = order.totalPrice;
                document.getElementById("orderDate").value = order.orderDate;
                document.getElementById("orderStatus").value = order.orderStatus;
                document.getElementById("orderFormLabel").innerText = "Sửa Đơn Hàng";
                const saveButton = document.querySelector("#orderForm .btn-primary");
                saveButton.onclick = function(event) {
                    updateOrder(event, id);
                };
                $('#orderForm').modal('show');
            }
        }

        function updateOrder(event, id) {
            event.preventDefault(); // Ngăn chặn reload trang
            const orderIndex = orders.findIndex(o => o.id === id);
            if (orderIndex !== -1) {
                orders[orderIndex] = {
                    id: id,
                    customerName: document.getElementById("customerName").value,
                    productName: document.getElementById("productName").value,
                    quantity: parseInt(document.getElementById("quantity").value),
                    totalPrice: parseFloat(document.getElementById("totalPrice").value),
                    orderDate: document.getElementById("orderDate").value,
                    orderStatus: document.getElementById("orderStatus").value
                };
                updateOrderTable(); // Cập nhật bảng
                $('#orderForm').modal('hide'); // Đóng modal
            }
        }

        function deleteOrder(id) {
            const orderIndex = orders.findIndex(o => o.id === id);
            if (orderIndex !== -1) {
                orders.splice(orderIndex, 1); // Xóa đơn hàng khỏi danh sách
                updateOrderTable(); // Cập nhật bảng
            }
        }
    </script>
</div>
</body>
</html>
