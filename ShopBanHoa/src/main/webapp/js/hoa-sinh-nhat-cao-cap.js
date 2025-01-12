// Hiển thị nút cuộn lên đầu trang
const scrollToTopBtn = document.getElementById("scrollToTopBtn");

function handleScrollToTopBtn() {
    if (window.scrollY > 300) {
        scrollToTopBtn.style.display = "block";
    } else {
        scrollToTopBtn.style.display = "none";
    }
}

scrollToTopBtn.addEventListener("click", () => {
    window.scrollTo({
        top: 0,
        behavior: "smooth",
    });
});

window.addEventListener("scroll", handleScrollToTopBtn);

// Dữ liệu sản phẩm mẫu
const products = [
    { id: "BOUQUET-10010", name: "Kiss Me", price: "300,000đ", image: "../../images/san-pham.webp", sale: "Giảm 30%" },
    { id: "BOUQUET-10011", name: "Rose", price: "250,000đ", image: "../../images/san-pham-3.jpg", sale: "Giảm 20%" },
    { id: "BOUQUET-10012", name: "Lily", price: "180,000đ", image: "../../images/sanpham14.webp", sale: "Giảm 10%" },
    { id: "BOUQUET-10013", name: "Tulip", price: "220,000đ", image: "../../images/sanpham10.webp", sale: "Giảm 15%" },
    { id: "BOUQUET-10014", name: "Sunflower", price: "350,000đ", image: "../../images/sanpham12.webp", sale: "Giảm 25%" },
    { id: "BOUQUET-10015", name: "Daisy", price: "200,000đ", image: "../../images/sanpham14.webp", sale: "Giảm 30%" },
    { id: "BOUQUET-10016", name: "Orchid", price: "270,000đ", image: "../../images/sanpham15.webp", sale: "Giảm 5%" },
    { id: "BOUQUET-10017", name: "Peony", price: "320,000đ", image: "../../images/sanpham11.webp", sale: "Giảm 15%" },
    { id: "BOUQUET-10018", name: "Lotus", price: "400,000đ", image: "../../images/san-pham-4.webp", sale: "Giảm 20%" },
    { id: "BOUQUET-10019", name: "Tulip 2", price: "280,000đ", image: "../../images/san-pham-2.jpg", sale: "Giảm 10%" },
    { id: "BOUQUET-10020", name: "Chrysanthemum", price: "230,000đ", image: "../../images/sanpham16.webp", sale: "Giảm 5%" },
    { name: "Lilac", price: "300,000đ", image: "../../images/sanpham18.webp", sale: "Giảm 25%" },
    { name: "Iris", price: "270,000đ", image: "../../images/sanpham19.webp", sale: "Giảm 10%" },
    { name: "Violet", price: "350,000đ", image: "../../images/sanpham13.webp", sale: "Giảm 15%" },
    { name: "Jasmine", price: "400,000đ", image: "../../images/sanpham7.webp", sale: "Giảm 20%" },
    { name: "Carnation", price: "320,000đ", image: "../../images/sanpham20.webp", sale: "Giảm 30%" },
    { name: "Magnolia", price: "500,000đ", image: "../../images/sanpham16.webp", sale: "Giảm 5%" },
    { name: "Hydrangea", price: "350,000đ", image: "../../images/sanpham8.webp", sale: "Giảm 25%" },
    { name: "Freesia", price: "280,000đ", image: "../../images/sanpham24.webp", sale: "Giảm 10%" },
    { name: "Zinnia", price: "230,000đ", image: "../../images/sanpham13.webp", sale: "Giảm 15%" }
];

// Tạo thanh phân trang
function createPagination(currentPage) {
    const itemsPerPage = 16;
    const totalPages = 21;
    const paginationContainer = document.getElementById("pagination");

    paginationContainer.innerHTML = "";

    if (currentPage > 1) {
        const firstPageButton = document.createElement("button");
        firstPageButton.classList.add("page-btn");
        firstPageButton.innerHTML = "|<";
        firstPageButton.onclick = () => changePage(1);
        paginationContainer.appendChild(firstPageButton);

        const prevPageButton = document.createElement("button");
        prevPageButton.classList.add("page-btn");
        prevPageButton.innerText = "<";
        prevPageButton.onclick = () => changePage(currentPage - 1);
        paginationContainer.appendChild(prevPageButton);
    }

    let startPage = Math.max(1, currentPage - 2);
    let endPage = Math.min(totalPages, currentPage + 2);

    if (endPage - startPage < 4) {
        if (startPage === 1) {
            endPage = Math.min(5, totalPages);
        } else {
            startPage = Math.max(1, totalPages - 4);
        }
    }

    for (let i = startPage; i <= endPage; i++) {
        const pageButton = document.createElement("button");
        pageButton.classList.add("page-btn");
        pageButton.innerText = i;
        pageButton.onclick = () => changePage(i);
        if (i === currentPage) pageButton.classList.add("active");
        paginationContainer.appendChild(pageButton);
    }

    if (currentPage < totalPages) {
        const nextPageButton = document.createElement("button");
        nextPageButton.classList.add("page-btn");
        nextPageButton.innerText = ">";
        nextPageButton.onclick = () => changePage(currentPage + 1);
        paginationContainer.appendChild(nextPageButton);

        const lastPageButton = document.createElement("button");
        lastPageButton.classList.add("page-btn");
        lastPageButton.innerHTML = ">|";
        lastPageButton.onclick = () => changePage(totalPages);
        paginationContainer.appendChild(lastPageButton);
    }
}

// Thay đổi trang
function changePage(pageNumber) {
    const itemsPerPage = 16;
    const startIndex = (pageNumber - 1) * itemsPerPage;
    const endIndex = startIndex + itemsPerPage;
    const currentPageProducts = products.slice(startIndex, endIndex);

    const productList = document.getElementById("product-list");
    productList.innerHTML = "";

    currentPageProducts.forEach((product) => {
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
          <a href="chi-tiet-sp.html" class="btn btn-buy">Đặt nhanh</a>
        </div>
      </div>
    `;
        productList.appendChild(productElement);
    });

    createPagination(pageNumber);
}

// Khởi tạo trang đầu tiên khi tải trang
changePage(1);
