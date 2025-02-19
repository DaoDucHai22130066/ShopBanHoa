<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>Flower Shop Admin - Hoa Tươi</title>
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
                        <h4 class="card-title float-left mt-2">Danh Sách Hoa Tươi</h4>
                        <button class="btn btn-primary float-right" data-toggle="modal" data-target="#flowerForm" onclick="openFlowerForm()">Thêm Hoa Mới</button>
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
                                        <th>Tên Hoa</th>
                                        <th>Giá</th>
                                        <th>Số Lượng</th>
                                        <th>Mô Tả</th>
                                        <th>Trạng Thái</th>
                                        <th class="text-right">Hành Động</th>
                                    </tr>
                                    </thead>
                                    <tbody id="flowerTable">
                                    <!-- Dữ liệu hoa sẽ được thêm ở đây -->
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Modal Thêm/Sửa Hoa -->
            <div class="modal fade" id="flowerForm" tabindex="-1" role="dialog" aria-labelledby="flowerFormLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="flowerFormLabel">Thêm Hoa Mới</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Đóng">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form id="flowerFormData">
                                <div class="form-group">
                                    <label for="flowerName">Tên Hoa</label>
                                    <input type="text" class="form-control" id="flowerName" placeholder="Tên hoa" required>
                                </div>
                                <div class="form-group">
                                    <label for="flowerPrice">Giá</label>
                                    <input type="number" class="form-control" id="flowerPrice" placeholder="Giá" required>
                                </div>
                                <div class="form-group">
                                    <label for="flowerQuantity">Số Lượng</label>
                                    <input type="number" class="form-control" id="flowerQuantity" placeholder="Số lượng" required>
                                </div>
                                <div class="form-group">
                                    <label for="flowerDescription">Mô Tả</label>
                                    <textarea class="form-control" id="flowerDescription" rows="3" placeholder="Mô tả hoa" required></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="flowerStatus">Trạng Thái</label>
                                    <select class="form-control" id="flowerStatus" required>
                                        <option value="available">Có sẵn</option>
                                        <option value="out_of_stock">Hết hàng</option>
                                    </select>
                                </div>
                                <button type="submit" class="btn btn-primary">Lưu Hoa</button>
                            </form>
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

<script>
    let flowers = [];

    function openFlowerForm() {
        document.getElementById("flowerFormData").reset(); // Reset form
        document.getElementById("flowerFormLabel").innerText = "Thêm Hoa Mới"; // Set title
        const saveButton = document.querySelector("#flowerForm .btn-primary");
        saveButton.onclick = addFlower; // Gắn sự kiện thêm mới
    }

    function addFlower(event) {
        event.preventDefault(); // Ngăn chặn reload trang
        const newFlower = {
            id: flowers.length + 1,
            name: document.getElementById("flowerName").value,
            price: parseInt(document.getElementById("flowerPrice").value),
            quantity: parseInt(document.getElementById("flowerQuantity").value),
            description: document.getElementById("flowerDescription").value,
            status: document.getElementById("flowerStatus").value
        };
        flowers.push(newFlower); // Thêm vào danh sách
        updateFlowerTable(); // Cập nhật bảng
        $('#flowerForm').modal('hide'); // Đóng modal
    }

    function updateFlowerTable() {
        const flowerTable = document.getElementById("flowerTable");
        flowerTable.innerHTML = ""; // Xóa dữ liệu cũ
        flowers.forEach((flower, index) => {
            const row = document.createElement("tr");
            row.innerHTML = `
                    <td>${flower.id}</td>
                    <td>${flower.name}</td>
                    <td>${flower.price.toLocaleString()} VNĐ</td>
                    <td>${flower.quantity}</td>
                    <td>${flower.description}</td>
                    <td>${flower.status == 'available' ? '<span class="badge badge-success">Có sẵn</span>' : '<span class="badge badge-danger">Hết hàng</span>'}</td>
                    <td class="text-right">
                        <button class="btn btn-sm btn-info" onclick="editFlower(${flower.id})">Sửa</button>
                                                <button class="btn btn-sm btn-danger" onclick="deleteFlower(${flower.id})">Xóa</button>
                    </td>
                `;
            flowerTable.appendChild(row);
        });
    }

    function editFlower(id) {
        const flower = flowers.find(f => f.id === id);
        if (flower) {
            document.getElementById("flowerName").value = flower.name;
            document.getElementById("flowerPrice").value = flower.price;
            document.getElementById("flowerQuantity").value = flower.quantity;
            document.getElementById("flowerDescription").value = flower.description;
            document.getElementById("flowerStatus").value = flower.status;
            document.getElementById("flowerFormLabel").innerText = "Sửa Hoa";
            const saveButton = document.querySelector("#flowerForm .btn-primary");
            saveButton.onclick = function(event) {
                updateFlower(event, id);
            };
            $('#flowerForm').modal('show');
        }
    }

    function updateFlower(event, id) {
        event.preventDefault(); // Ngăn chặn reload trang
        const flowerIndex = flowers.findIndex(f => f.id === id);
        if (flowerIndex !== -1) {
            flowers[flowerIndex] = {
                id: id,
                name: document.getElementById("flowerName").value,
                price: parseInt(document.getElementById("flowerPrice").value),
                quantity: parseInt(document.getElementById("flowerQuantity").value),
                description: document.getElementById("flowerDescription").value,
                status: document.getElementById("flowerStatus").value
            };
            updateFlowerTable(); // Cập nhật bảng
            $('#flowerForm').modal('hide'); // Đóng modal
        }
    }

    function deleteFlower(id) {
        const flowerIndex = flowers.findIndex(f => f.id === id);
        if (flowerIndex !== -1) {
            flowers.splice(flowerIndex, 1); // Xóa hoa khỏi danh sách
            updateFlowerTable(); // Cập nhật bảng
        }
    }
</script>
</body>

</html>