<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 03/01/2025
  Time: 20:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hoa Sinh Nhật Cao Cấp</title>
    <!--    Shortcut Icon-->
    <link rel="icon" href="images/icon-logo.png" type="image/png">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- FontAwesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/flower.css">
</head>
<body>
<jsp:include page="header.jsp"/>

<Main>


    <div class="container">
        <h2 class="section-title">Hoa Sinh Nhật Cao Cấp</h2>
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
                <option value="16">16</option>
                <option value="24">24</option>
                <option value="48">48</option>
            </select>
        </div>
    </div>

    <div class="container product-section">
        <div class="row" id="product-list">
            <!--Sản phẩm được đưa lên tại đây-->>
        </div>
    </div>

    <div id="pagination" class="pagination">
        <!-- Nút phân trang sẽ được thêm tự động -->
    </div>
    <div class="pagination-info">Hiển thị từ 1 đến 16 / 348 (21 Trang)</div>
    <div class="floating-icons">
        <a href="#"><i class="fab fa-facebook-messenger"></i></a>
        <a href="#"><i class="fab fa-zalo"></i></a>
        <a href="#"><i class="fas fa-phone"></i></a>
    </div>
</Main>
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


const products = [
{ id: "BOUQUET-10010", name: "Kiss Me", price: "300,000đ", image: "images/san-pham.webp", sale: "Giảm 30%" },
{ id: "BOUQUET-10011", name: "Rose", price: "250,000đ", image: "images/san-pham-3.jpg", sale: "Giảm 20%" },
{ id: "BOUQUET-10012", name: "Lily", price: "180,000đ", image: "images/sanpham14.webp", sale: "Giảm 10%" },
{ id: "BOUQUET-10013", name: "Tulip", price: "220,000đ", image: "images/sanpham10.webp", sale: "Giảm 15%" },
{ id: "BOUQUET-10014", name: "Sunflower", price: "350,000đ", image: "images/sanpham12.webp", sale: "Giảm 25%" },
{ id: "BOUQUET-10015", name: "Daisy", price: "200,000đ", image: "images/sanpham14.webp", sale: "Giảm 30%" },
{ id: "BOUQUET-10016", name: "Orchid", price: "270,000đ", image: "images/sanpham15.webp", sale: "Giảm 5%" },
{ id: "BOUQUET-10017", name: "Peony", price: "320,000đ", image: "images/sanpham11.webp", sale: "Giảm 15%" },
{ id: "BOUQUET-10018", name: "Lotus", price: "400,000đ", image: "images/san-pham-4.webp", sale: "Giảm 20%" },
{ id: "BOUQUET-10019", name: "Tulip 2", price: "280,000đ", image: "images/san-pham-2.jpg", sale: "Giảm 10%" },
{ id: "BOUQUET-10020", name: "Chrysanthemum", price: "230,000đ", image: "images/sanpham16.webp", sale: "Giảm 5%" },
{ name: "Lilac", price: "300,000đ", image: "images/sanpham18.webp", sale: "Giảm 25%" },
{ name: "Iris", price: "270,000đ", image: "images/sanpham19.webp", sale: "Giảm 10%" },
{ name: "Violet", price: "350,000đ", image: "images/sanpham13.webp", sale: "Giảm 15%" },
{ name: "Jasmine", price: "400,000đ", image: "images/sanpham7.webp", sale: "Giảm 20%" },
{ name: "Carnation", price: "320,000đ", image: "images/sanpham20.webp", sale: "Giảm 30%" },
{ name: "Magnolia", price: "500,000đ", image: "images/sanpham16.webp", sale: "Giảm 5%" },
{ name: "Hydrangea", price: "350,000đ", image: "images/sanpham8.webp", sale: "Giảm 25%" },
{ name: "Freesia", price: "280,000đ", image: "images/sanpham24.webp", sale: "Giảm 10%" },
{ name: "Zinnia", price: "230,000đ", image: "images/sanpham13.webp", sale: "Giảm 15%" }
];

function createPagination(currentPage) {
const itemsPerPage = 16;
const totalPages = 8;
const paginationContainer = document.getElementById("pagination");

paginationContainer.innerHTML = ""; // Xóa các nút phân trang cũ

// Nếu đang ở trang đầu tiên, không hiển thị nút "Trang đầu" và "Trang trước"
if (currentPage > 1) {
const firstPageButton = document.createElement("button");
firstPageButton.classList.add("page-btn");
firstPageButton.innerHTML = "|<"; // Biểu tượng về trang đầu
firstPageButton.onclick = () => changePage(1);
paginationContainer.appendChild(firstPageButton);

const prevPageButton = document.createElement("button");
prevPageButton.classList.add("page-btn");
prevPageButton.innerText = "<"; // Biểu tượng chuyển về trang trước
prevPageButton.onclick = () => changePage(currentPage - 1);
paginationContainer.appendChild(prevPageButton);
}

// Xác định phạm vi của các trang hiển thị, giới hạn tối đa là 5 trang
let startPage = Math.max(1, currentPage - 2); // Đảm bảo không hiển thị trang số nhỏ hơn 1
let endPage = Math.min(totalPages, currentPage + 2); // Đảm bảo không hiển thị trang số lớn hơn tổng số trang

// Nếu tổng số trang lớn hơn 5, chỉ hiển thị 5 trang
if (endPage - startPage < 4) {
if (startPage === 1) {
endPage = Math.min(5, totalPages); // Nếu trang bắt đầu là 1, hiển thị từ 1 đến 5
} else {
startPage = Math.max(1, totalPages - 4); // Nếu trang bắt đầu không phải là 1, hiển thị 5 trang cuối
}
}

// Hiển thị các nút trang số
for (let i = startPage; i <= endPage; i++) {
const pageButton = document.createElement("button");
pageButton.classList.add("page-btn");
pageButton.innerText = i;
pageButton.onclick = () => changePage(i);
if (i === currentPage) pageButton.classList.add("active");
paginationContainer.appendChild(pageButton);
}

// Nếu đang ở trang cuối, không hiển thị nút "Trang sau" và "Trang cuối"
if (currentPage < totalPages) {
const nextPageButton = document.createElement("button");
nextPageButton.classList.add("page-btn");
nextPageButton.innerText = ">"; // Biểu tượng chuyển sang trang kế tiếp
nextPageButton.onclick = () => changePage(currentPage + 1);
paginationContainer.appendChild(nextPageButton);

const lastPageButton = document.createElement("button");
lastPageButton.classList.add("page-btn");
lastPageButton.innerHTML = ">|"; // Biểu tượng về trang cuối
lastPageButton.onclick = () => changePage(totalPages);
paginationContainer.appendChild(lastPageButton);
}
}

function changePage(pageNumber) {
const itemsPerPage = 16;
const startIndex = (pageNumber - 1) * itemsPerPage;
const endIndex = startIndex + itemsPerPage;
const currentPageProducts = products.slice(startIndex, endIndex);

const productList = document.getElementById("product-list");
productList.innerHTML = ""; // Xóa sản phẩm cũ

currentPageProducts.forEach(product => {
const productElement = document.createElement("div");
productElement.classList.add("col-md-3");
productElement.innerHTML = `
<div class="card product-card">
    <a href="#"><img src="${product.image}" class="card-img-top" alt="${product.name}"></a>
    <div class="card-body">
        <div class="sale-badge">${product.sale}</div>
        <h5 class="product-name">${product.name}</h5>
        <p class="product-price">${product.price}</p>
        <a href="#" class="btn btn-buy add-to-cart"
           data-product-id="${product.id}"
           data-product-name="${product.name}"
           data-product-price="${product.price.replace(',', '').replace('đ', '')}"
           data-product-img="${product.image}">Thêm Giỏ</a>

        <a href="chi-tiet-sp.jsp" class="btn btn-buy">Đặt nhanh</a>
    </div>
</div>
`;
productList.appendChild(productElement);
});

createPagination(pageNumber); // Làm mới thanh phân trang
}

// Khởi tạo trang đầu tiên khi tải trang
changePage(1);
</script>
<script src=js/themgio.js></script>
<script src="js/index.js"></script>

</body>
</html>
