<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng ký tài khoản</title>
    <link rel="icon" href="../../images/icon-logo.png" type ="image/png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="../../css/dangki.css">
</head>
<body>
<!-- Header -->
<jsp:include page="../layout/header.jsp"/>

<!-- Main Content -->
<main>
    <div class="container mt-5">
        <div class="text-center mb-4">
            <h1 class="fw-bold text-danger">Bloom & Shine</h1>
            <p class="text-muted">Say it with Flowers</p>
        </div>
        <div class="card mx-auto shadow-sm" style="max-width: 600px">
            <div class="card-body">
                <h2 class="text-center mb-4">Đăng ký tài khoản</h2>
                <p class="text-center text-muted">
                    Nếu bạn đã có tài khoản, vui lòng <a href="dangnhap.jsp">Đăng nhập</a>.
                </p>
                <form id="registerForm">
                    <div class="mb-3">
                        <label for="firstName" class="form-label">Tên</label>
                        <input type="text" class="form-control" id="firstName" placeholder="Tên" required />
                    </div>
                    <div class="mb-3">
                        <label for="lastName" class="form-label">Họ</label>
                        <input type="text" class="form-control" id="lastName" placeholder="Họ" required />
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">E-mail</label>
                        <input type="email" class="form-control" id="email" placeholder="Email" required />
                    </div>
                    <div class="mb-3">
                        <label for="phone" class="form-label">Điện thoại</label>
                        <input type="text" class="form-control" id="phone" placeholder="Số điện thoại" required />
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Mật khẩu</label>
                        <input type="password" class="form-control" id="password" placeholder="Mật khẩu" required />
                    </div>
                    <div class="form-check mb-3">
                        <input type="checkbox" class="form-check-input" id="terms" required />
                        <label for="terms" class="form-check-label">
                            Tôi đã đọc và đồng ý với <a href="#">Điều khoản & Điều kiện</a>
                        </label>
                    </div>
                    <button type="submit" class="btn btn-danger w-100">Đăng ký</button>
                </form>
            </div>
        </div>
    </div>
</main>

<!-- Footer -->
<jsp:include page="../layout/footer.jsp"/>

<button id="scrollToTopBtn" title="Cuộn lên đầu trang">↑</button>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
<script src="../../js/dangkidangnhap.js"></script>
</body>
</html>
