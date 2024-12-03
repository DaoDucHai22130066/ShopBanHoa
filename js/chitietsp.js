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
        window.location.href = "thanh-toan.html";
    });
});

