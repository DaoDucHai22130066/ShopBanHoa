<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 27/12/2024
  Time: 19:55
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
  <link rel="stylesheet" href="./css/Gioi-thieu.css">
</head>
<body>
<jsp:include page="./header.jsp"/>
<main>
<div class="container mt-5">
  <!-- Tiêu đề trang -->
  <section class="text-center mb-5">
    <h1 class="section-title">Giới thiệu về Bloom & Shine Shop</h1>
    <p class="lead intro-text">Chúng tôi mang đến những sản phẩm hoa tươi chất lượng và dịch vụ hoàn hảo.
    </p>
  </section>

  <!-- Phần Giới thiệu -->
  <section class="row mb-5">
    <div class="col-lg-6">
      <img src="./images/weare.jpg" alt="Flower Shop" class="img-fluid rounded shadow">
    </div>
    <div class="col-lg-6">
      <h2 class="section-title-small">Chúng tôi là ai?</h2>
      <p class="intro-text">Flower Corner là cửa hàng hoa tươi uy tín, chuyên cung cấp các loại hoa tươi
        đẹp
        và độc đáo cho mọi dịp. Chúng tôi cam kết mang đến những sản phẩm hoa chất lượng với giá cả hợp
        lý
        và dịch vụ tận tâm. Với kinh nghiệm lâu năm trong ngành hoa tươi, Flower Corner là sự lựa chọn
        hoàn
        hảo cho bạn.</p>
      <ul class="intro-list">
        <li>Hoa tươi chất lượng cao</li>
        <li>Giao hàng nhanh chóng và đúng hẹn</li>
        <li>Hỗ trợ tư vấn miễn phí cho các sự kiện</li>
        <li>Dịch vụ chăm sóc khách hàng tuyệt vời</li>
      </ul>
    </div>
  </section>

  <!-- Lịch sử cửa hàng -->
  <section class="mb-5">
    <h2 class="section-title-small text-center mb-3">Lịch sử hình thành</h2>
    <div class="row">
      <div class="col-md-6">
        <p class="intro-text">Flower Corner được thành lập từ năm 2010 với sứ mệnh mang đến cho khách
          hàngx
          những bông hoa tươi thắm nhất. Được yêu mến bởi chất lượng sản phẩm vượt trội và dịch vụ
          giao
          hàng nhanh chóng, chúng tôi đã mở rộng hệ thống cửa hàng trên toàn quốc.</p>
      </div>
      <div class="col-md-6">
        <img src="images/lichsuhinhthanh.jpg" alt="History" class="img-fluid rounded shadow">
      </div>
    </div>
  </section>

  <section class="row mb-5">
    <div class="col-lg-6">
      <img src="./images/sumenh.png" alt="Flower Shop" class="img-fluid rounded shadow">
    </div>
    <div class="col-lg-6">
      <h2 class="section-title-small">SỨ MỆNH VÀ TẦM NHÌN</h2>
      <p class="intro-text">Với phương châm hoạt động luôn đặt lợi ích của khách hàng lên hàng đầu. Do vậy
        Bloom & Shine hướng đến các sứ mệnh:</p>
      <ul class="intro-list">
        <li>Trở thành shop hoa tươi, điện hoa hàng đầu, là địa điểm đáng tin cậy khi khách hàng muốn mua
          hoa tươi hay sử dụng dịch vụ điện hoa toàn quốc.</li>
        <li>Mang đến sản phẩm hoa đẹp với giá thành cạnh tranh. Chất lượng hoa tươi của B&S luôn được
          kiểm tra kỹ lưỡng và có chính sách bảo hành với hoa bị hư hỏng.</li>
        <li>Giao hoa tươi một cách chuyên nghiệp và nhanh chóng và khiến khách hàng hai lòng khi đến với
          B&S shop</li>
      </ul>
      <p class="intro-text">Với khát khao mang đến nụ cười cho tất cả người dân Việt Nam thông qua những
        sản phẩm hoa tươi đẹp. B&S không ngừng cố gắng để đạt được:</p>
      <ul class="intro-list">
        <li>TTrở thành shop hoa tươi, dịch vụ điện hoa uy tín hàng đầu Việt Nam..</li>
        <li>Mở rộng quy mô doanh nghiệp ngày càng phát triển với các sản phẩm đa dạng đáp ứng mọi nhu
          cầu của khách hàng.</li>
        <li>Tối ưu hóa quy trình bán hàng, giao hàng và chăm sóc khách hàng mang đến trải nghiệm tốt
          nhất cho khách hàng.</li>
      </ul>
    </div>
  </section>


  <!-- Cam kết chất lượng -->
  <section>
    <h2 class="section-title-small text-center mb-3">Cam kết chất lượng</h2>
    <p class="intro-text text-center">Chúng tôi cam kết cung cấp hoa tươi với chất lượng cao nhất, được chọn
      lọc
      kỹ lưỡng từ các nông trại uy tín. Mỗi bông hoa đều được chăm sóc cẩn thận, đảm bảo mang lại cho bạn
      những trải nghiệm tuyệt vời nhất.</p>
    <div class="row">
      <div class="col-md-4">
        <div class="card quality-card">
          <img src="images/hoatuoilaudai.jpeg" class="card-img-top" alt="Quality 1">
          <div class="card-body">
            <h5 class="card-title">Hoa tươi lâu dài</h5>
            <p class="card-text">Chúng tôi đảm bảo hoa của bạn sẽ tươi lâu, giữ được vẻ đẹp tự nhiên
              lâu
              hơn so với các loại hoa thông thường.</p>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card quality-card">
          <img src="./images/dichvu.jpg" class="card-img-top" alt="Quality 2">
          <div class="card-body">
            <h5 class="card-title">Chăm sóc tận tình</h5>
            <p class="card-text">Dịch vụ chăm sóc khách hàng của chúng tôi luôn sẵn sàng tư vấn và
              hỗ
              trợ bạn mọi lúc mọi nơi.</p>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card quality-card">
          <img src="./images/giaohoa.png" class="card-img-top" alt="Quality 3">
          <div class="card-body">
            <h5 class="card-title">Giao hàng đúng hẹn</h5>
            <p class="card-text">Chúng tôi cam kết giao hàng nhanh chóng, đúng giờ đến tay bạn với
              sự
              hài lòng tuyệt đối.</p>
          </div>
        </div>
      </div>
    </div>
  </section>


  <!-- Thông tin liên hệ -->
  <section id="contact-info" class="mb-5">
    <h2 class="section-title-small text-center mb-3">Thông tin liên hệ</h2>
    <div class="row">
      <div class="col-md-6">
        <h4>Chúng tôi có mặt tại:</h4>
        <ul class="intro-list">
          <li><strong>Địa chỉ:</strong> 123 Flower Street, Hà Nội</li>
          <li><strong>Giờ mở cửa:</strong> 8:00 AM - 6:00 PM (Thứ 2 - Thứ 7)</li>
          <li><strong>Điện thoại:</strong> 0901 234 567</li>
        </ul>
      </div>
      <div class="col-md-6">
        <h4>Liên kết mạng xã hội:</h4>
        <ul class="list-inline text-center">
          <li class="list-inline-item">
            <a href="https://www.facebook.com/yourpage" target="_blank"
               class="btn btn-outline-primary">
              <i class="fab fa-facebook"></i> Facebook
            </a>
          </li>
          <li class="list-inline-item">
            <a href="https://zalo.me/yournumber" target="_blank" class="btn btn-outline-success">
              <i class="fab fa-zalo"></i> Zalo
            </a>
          </li>
          <li class="list-inline-item">
            <a href="https://m.me/yourpage" target="_blank" class="btn btn-outline-info">
              <i class="fab fa-facebook-messenger"></i> Messenger
            </a>
          </li>
          <li class="list-inline-item">
            <a href="https://www.youtube.com/channel/yourchannel" target="_blank"
               class="btn btn-outline-danger">
              <i class="fab fa-youtube"></i> YouTube
            </a>
          </li>
          <li class="list-inline-item">
            <a href="https://www.tiktok.com/@yourhandle" target="_blank"
               class="btn btn-outline-dark">
              <i class="fab fa-tiktok"></i> TikTok
            </a>
          </li>
          <li class="list-inline-item">
            <a href="mailto:your@email.com" class="btn btn-outline-secondary">
              <i class="fas fa-envelope"></i> Email
            </a>
          </li>
          <li class="list-inline-item">
            <a href="https://www.yourwebsite.com" target="_blank" class="btn btn-outline-primary">
              <i class="fas fa-globe"></i> Website
            </a>
          </li>
        </ul>
      </div>
    </div>
  </section>
</div>
</Main>
<jsp:include page="./footer.jsp"/>
<!-- Bootstrap JS and dependencies -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
<script src="./js/gio-hang.js"></script>
<script>

  // Lấy phần tử nút cuộn lên đầu trang
  const scrollToTopBtn = document.getElementById('scrollToTopBtn');

  // Theo dõi sự kiện cuộn để hiển thị/ẩn nút
  function handleScrollToTopBtn() {
    if (window.scrollY > 300) {
      scrollToTopBtn.style.display = 'block';
    } else {
      scrollToTopBtn.style.display = 'none';
    }
  }

  // Xử lý sự kiện click vào nút cuộn lên
  scrollToTopBtn.addEventListener('click', () => {
    window.scrollTo({
      top: 0,
      behavior: 'smooth'
    });
  });

  window.addEventListener('scroll', handleScrollToTopBtn);

  // Ví dụ: Hiệu ứng hover cho các card
  const cards = document.querySelectorAll('.card');

  cards.forEach(card => {
    card.addEventListener('mouseenter', () => {
      card.style.transform = 'scale(1.05)';
    });
    card.addEventListener('mouseleave', () => {
      card.style.transform = 'scale(1)';
    });
  });

</script>



</body>
</html>
