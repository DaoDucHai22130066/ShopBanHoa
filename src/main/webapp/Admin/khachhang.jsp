<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>Admin - Quản lý Người Dùng</title>
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
                            <img src="assets/img/profiles/avatar.png" alt="User   Image" class="avatar-img rounded-circle">
                        </div>
                        <div class="user-text">
                            <h6>Admin</h6>
                            <p class="text-muted mb-0">Quản trị viên</p>
                        </div>
                    </div>
                    <a class="dropdown-item" href="hosocuatoi.jsp">Hồ Sơ Của Tôi</a>
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
                        <h4 class="card-title float-left mt-2">Danh Sách Người dùng</h4>
                        <button class="btn btn-primary float-right" data-toggle="modal" data-target="#customerForm" onclick="openCustomerForm()">Thêm Người Dùng</button>
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
                                        <th>Tên</th>
                                        <th>Email</th>
                                        <th>Mật khẩu</th>
                                        <th>Số Điện Thoại</th>
                                        <th>Quyền</th>
                                        <th>Ngày Tạo</th>
                                        <th>Trạng Thái</th>
                                        <th class="text-right">Hành Động</th>
                                    </tr>
                                    </thead>
                                    <tbody id="customerTable">
                                    <!-- Dữ liệu Người Dùng sẽ được thêm tại đây -->
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Modal Thêm/Sửa Người Dùng -->
            <div class="modal fade" id="customerForm" tabindex="-1" role="dialog" aria-labelledby="customerFormLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="customerFormLabel">Thêm Người Dùng Mới</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Đóng">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form id="customerFormData">
                                <div class="form-group">
                                    <label for="customerName">Tên Người Dùng</label>
                                    <input type="text" class="form-control" id="customerName" placeholder="Tên Người Dùng" required>
                                </div>
                                <div class="form-group">
                                    <label for="customerEmail">Email</label>
                                    <input type="email" class="form-control" id="customerEmail" placeholder="Email" required>
                                </div>
                                <div class="form-group">
                                    <label for="customerPassword">Mật Khẩu</label>
                                    <input type="password" class="form-control" id="customerPassword" placeholder="Mật khẩu" required>
                                </div>
                                <div class="form-group">
                                    <label for="customerPhone">Số Điện Thoại</label>
                                    <input type="text" class="form-control" id="customerPhone" placeholder="Số điện thoại" required>
                                </div>
                                <div class="form-group">
                                    <label for="customerRole">Quyền</label>
                                    <select class="form-control" id="customerRole" required>
                                        <option value="admin">Quản Trị Viên</option>
                                        <option value="user">Người Dùng</option>
                                    </select>
                                </div>
                                <button type="submit" class="btn btn-primary">Lưu Người Dùng</button>
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
        let customers = [];

        function openCustomerForm() {
            document.getElementById("customerFormData").reset(); // Reset form
            document.getElementById("customerFormLabel").innerText = "Thêm Người Dùng Mới"; // Set title
            const saveButton = document.querySelector("#customerForm .btn-primary");
            saveButton.onclick = addCustomer; // Gắn sự kiện thêm mới
        }

        function addCustomer(event) {
            event.preventDefault(); // Ngăn chặn reload trang
            const newCustomer = {
                id: customers.length + 1,
                name: document.getElementById("customerName").value,
                email: document.getElementById("customerEmail").value,
                password: document.getElementById("customerPassword").value,
                phone: document.getElementById("customerPhone").value,
                role: document.getElementById("customerRole").value,
                createdAt: new Date().toLocaleDateString(),
                status: 'active' // Mặc định trạng thái là hoạt động
            };
            customers.push(newCustomer); // Thêm vào danh sách
            updateCustomerTable(); // Cập nhật bảng
            $('#customerForm').modal('hide'); // Đóng modal
        }

        function updateCustomerTable() {
            const customerTable = document.getElementById("customerTable");
            customerTable.innerHTML = ""; // Xóa dữ liệu cũ
            customers.forEach((customer) => {
                const row = document.createElement("tr");
                row.innerHTML = `
                        <td>${customer.id}</td>
                        <td>${customer.name}</td>
                        <td>${customer.email}</td>
                        <td>${customer.password}</td>
                        <td>${customer.phone}</td>
                        <td>${customer.role}</td>
                                                <td>${customer.createdAt}</td>
                        <td>${customer.status}</td>
                        <td class="text-right">
                            <button class="btn btn-warning btn-sm" onclick="editCustomer(${customer.id})">Sửa</button>
                            <button class="btn btn-danger btn-sm" onclick="deleteCustomer(${customer.id})">Xóa</button>
                        </td>
                    `;
                customerTable.appendChild(row); // Thêm hàng vào bảng
            });
        }

        function editCustomer(id) {
            const customer = customers.find(c => c.id === id);
            if (customer) {
                document.getElementById("customerName").value = customer.name;
                document.getElementById("customerEmail").value = customer.email;
                document.getElementById("customerPassword").value = customer.password;
                document.getElementById("customerPhone").value = customer.phone;
                document.getElementById("customerRole").value = customer.role;
                document.getElementById("customerFormLabel").innerText = "Sửa Thông Tin Người Dùng";

                const saveButton = document.querySelector("#customerForm .btn-primary");
                saveButton.onclick = function(event) {
                    updateCustomer(event, id);
                };
                $('#customerForm').modal('show'); // Hiện modal
            }
        }

        function updateCustomer(event, id) {
            event.preventDefault(); // Ngăn chặn reload trang
            const customerIndex = customers.findIndex(c => c.id === id);
            if (customerIndex !== -1) {
                customers[customerIndex] = {
                    id: id,
                    name: document.getElementById("customerName").value,
                    email: document.getElementById("customerEmail").value,
                    password: document.getElementById("customerPassword").value,
                    phone: document.getElementById("customerPhone").value,
                    role: document.getElementById("customerRole").value,
                    createdAt: customers[customerIndex].createdAt, // Giữ nguyên ngày tạo
                    status: customers[customerIndex].status // Giữ nguyên trạng thái
                };
                updateCustomerTable(); // Cập nhật bảng
                $('#customerForm').modal('hide'); // Đóng modal
            }
        }

        function deleteCustomer(id) {
            const customerIndex = customers.findIndex(c => c.id === id);
            if (customerIndex !== -1) {
                customers.splice(customerIndex, 1); // Xóa Người Dùng khỏi danh sách
                updateCustomerTable(); // Cập nhật bảng
            }
        }
    </script>
</div>
</body>
</html>