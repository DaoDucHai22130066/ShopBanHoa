<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng Nhập</title>
    <!--    Shortcut Icon-->
    <link rel="icon" href="../../images/icon-logo.png" type="image/png">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
    <!-- Custom CSS -->
    <link rel="stylesheet" href="../../css/dangki.css" />
</head>
<body>
<!-- Header -->
<jsp:include page="../layout/header.jsp"/>
<main>
    <div class="container mt-5">
        <div class="text-center mb-4">
            <h1 class="fw-bold text-danger">Bloom & Shine</h1>
            <p class="text-muted">Say it with Flowers</p>
        </div>
        <div class="card mx-auto shadow-sm" style="max-width: 400px">
            <div class="card-body">
                <h2 class="text-center mb-4">Đăng Nhập</h2>
                <p class="text-center text-muted">
                    Nếu bạn chưa có tài khoản, vui lòng
                    <a href="dangki.jsp">Đăng ký</a>.
                </p>
                <form id="loginForm" action="login">
                    <div class="mb-3">
                        <label for="loginEmail" class="form-label">E-mail</label>
                        <input type="email" class="form-control" id="loginEmail" placeholder="Email" required />
                    </div>
                    <div class="mb-3">
                        <label for="loginPassword" class="form-label">Mật khẩu</label>
                        <input type="password" class="form-control" id="loginPassword" placeholder="Mật khẩu"
                               required />
                    </div>
                    <button type="submit" class="btn btn-danger w-100">
                        Đăng nhập
                    </button>
                </form>
                <p class="text-center text-muted">
                    Bạn quên mật khẩu ư? hãy bấm vào đây
                <p style="text-align: center;">
                    <a href="quenmatkhau.jsp">Quên mật khẩu</a>.
                </p>
                </p>

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