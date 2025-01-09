// Lấy các nút "Thêm giỏ"
const addToCartButtons = document.querySelectorAll('.add-to-cart');

// Lấy phần tử hiển thị số sản phẩm trong giỏ hàng
const cartIconSpan = document.querySelector('#cart-icon-span'); // Thay #cart-icon-span bằng ID của phần tử hiển thị số lượng giỏ hàng

// Kiểm tra và cập nhật giỏ hàng từ localStorage
function updateCartIcon() {
    const cartItems = JSON.parse(localStorage.getItem('cartItems')) || [];
    cartIconSpan.textContent = cartItems.length; // Cập nhật số lượng sản phẩm trong giỏ hàng
}

// Thêm sản phẩm vào giỏ hàng
function addToCart(event) {
    event.preventDefault();
    const button = event.target;
    const productName = button.getAttribute('data-product-name');
    const productPrice = button.getAttribute('data-product-price');
    const productImg = button.getAttribute('data-product-img');
    const productId = button.getAttribute('data-product-id');

    // Lấy giỏ hàng từ localStorage hoặc khởi tạo giỏ hàng mới nếu chưa có
    const cartItems = JSON.parse(localStorage.getItem('cartItems')) || [];

    // Kiểm tra xem sản phẩm đã có trong giỏ hàng chưa
    const existingProduct = cartItems.find(item => item.productId === productId);
    if (existingProduct) {
        existingProduct.quantity += 1; // Nếu có rồi, tăng số lượng lên 1
    } else {
        // Nếu chưa có, thêm sản phẩm mới vào giỏ hàng
        cartItems.push({
            productName,
            productPrice,
            productImg,
            productId,
            quantity: 1
        });
    }

    // Lưu giỏ hàng vào localStorage
    localStorage.setItem('cartItems', JSON.stringify(cartItems));

    // Cập nhật lại số lượng giỏ hàng trên icon
    updateCartIcon();
}

// Thêm sự kiện click cho các nút "Thêm giỏ"
addToCartButtons.forEach(button => {
    button.addEventListener('click', addToCart);
});

// Cập nhật số lượng giỏ hàng khi trang được tải
window.addEventListener('load', updateCartIcon);
