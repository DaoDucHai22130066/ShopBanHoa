document.addEventListener("DOMContentLoaded", function () {
    document.getElementById("quickOrderBtn").addEventListener("click", function () {
        const quantity = parseInt(document.getElementById("quantity").value, 10);
        const productName = document.querySelector("h2").innerText;
        const originalPrice = parseInt(document.querySelector(".original-price").innerText.replace(/\D/g, ''), 10);
        const discountedPrice = parseInt(document.querySelector(".discounted-price").innerText.replace(/\D/g, ''), 10);
        const productImage = document.querySelector(".product-image").src;

        if (quantity <= 0) {
            alert("Số lượng phải lớn hơn 0");
            return;
        }

        // Lấy danh sách sản phẩm hiện có trong `selectedItems` hoặc khởi tạo mảng mới
        const selectedItems = JSON.parse(sessionStorage.getItem("selectedItems")) || [];

        // Thêm sản phẩm mới vào mảng
        selectedItems.push({
            productName,
            productPrice: discountedPrice, // Hoặc originalPrice nếu dùng giá gốc
            quantity,
            productImg: productImage,
        });

        // Cập nhật lại `sessionStorage`
        sessionStorage.setItem("selectedItems", JSON.stringify(selectedItems));

        // Chuyển đến trang thanh toán
        window.location.href = "thanh-toan.jsp";
    });
});

// Xử lý sự kiện nút "Thêm Giỏ"
document.querySelector(".btn.btn-primary").addEventListener("click", function () {
    const productName = document.querySelector("h2").textContent.trim();
    const productPrice = parseInt(
        document.querySelector(".discounted-price").textContent.replace(/[^0-9]/g, "")
    );
    const productImg = document.querySelector(".product-image").src; // Thay thế bằng cách lấy URL ảnh sản phẩm
    const productId = "SP" + Math.floor(Math.random() * 10000); // Tạo mã sản phẩm giả lập
    const productQuantity = parseInt(document.getElementById("quantity").value);

    // Lấy danh sách sản phẩm từ localStorage
    const cartItems = JSON.parse(localStorage.getItem("cartItems")) || [];

    // Kiểm tra sản phẩm đã tồn tại trong giỏ hàng
    const existingProduct = cartItems.find(item => item.productName === productName);

    if (existingProduct) {
        existingProduct.quantity += productQuantity; // Tăng số lượng nếu đã tồn tại
    } else {
        cartItems.push({
            productId,
            productName,
            productPrice,
            productImg,
            quantity: productQuantity,
        });
    }

    // Cập nhật giỏ hàng vào localStorage
    localStorage.setItem("cartItems", JSON.stringify(cartItems));
});
