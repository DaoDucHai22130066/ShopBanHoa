document.addEventListener("DOMContentLoaded", function () {
    // Đảm bảo sự kiện click chỉ được thêm vào sau khi DOM đã sẵn sàng
    document.getElementById("quickOrderBtn").addEventListener("click", function () {
        // Lấy thông tin sản phẩm
        var quantity = document.getElementById("quantity").value; // Số lượng sản phẩm
        var productName = document.querySelector("h2").innerText; // Lấy tên sản phẩm
        var originalPrice = document.querySelector(".original-price").innerText.replace(' VND', '').replace(',', ''); // Giá gốc
        var discountedPrice = document.querySelector(".discounted-price").innerText.replace(' VND', '').replace(',', ''); // Giá sau giảm
        var productImage = document.querySelector(".product-image").src; // Lấy ảnh sản phẩm

        // Kiểm tra số lượng hợp lệ
        if (quantity <= 0) {
            alert("Số lượng phải lớn hơn 0");
            return;
        }

        // Lưu thông tin vào sessionStorage để sử dụng trên trang thanh toán
        sessionStorage.setItem("quantity", quantity);
        sessionStorage.setItem("productName", productName);
        sessionStorage.setItem("originalPrice", originalPrice);
        sessionStorage.setItem("discountedPrice", discountedPrice);
        sessionStorage.setItem("productImage", productImage);

        // Chuyển hướng đến trang thanh toán (checkout.html)
        window.location.href = "thanh-toan.html"; // Đảm bảo trang thanh toán có tên "checkout.html"
    });
});


