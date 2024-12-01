// Lấy các phần tử HTML cần thiết
const cartIconSpan = document.querySelector("#cart-icon-span");
const selectAllCheckbox = document.getElementById("selectAll");
const cartTableBody = document.getElementById("cart-items");
const totalAmountElement = document.getElementById("totalAmount"); // Tổng số tiền

// Cập nhật lại giỏ hàng trong localStorage và hiển thị sản phẩm
function updateCart() {
    const cartItems = JSON.parse(localStorage.getItem("cartItems")) || [];
    cartTableBody.innerHTML = ""; // Xóa danh sách cũ

    let totalItems = 0;

    cartItems.forEach((item) => {
        const row = document.createElement("tr");
        row.id = `cart-item-${item.productId}`;

        row.innerHTML = `
    <td class="text-center">
        <input type="checkbox" class="select-product" data-product-id="${item.productId}" />
    </td>
    <td class="text-center">
        <img src="${item.productImg}" alt="${item.productName}" class="img-thumbnail" />
    </td>
    <td class="text-start">${item.productName}</td>
    <td class="text-start">${item.productId}</td>
    <td class="text-start">
        <div class="input-group">
            <input type="number" value="${item.quantity}" class="form-control quantity-input" min="1" data-product-id="${item.productId}" />
            <button class="btn btn-danger remove-item" data-product-id="${item.productId}">X</button>
        </div>
    </td>
    <td class="text-end">${item.productPrice.toLocaleString()} VND</td>
    <td class="text-end" id="item-total-${item.productId}">${(item.productPrice * item.quantity).toLocaleString()} VND</td>
`;

        cartTableBody.appendChild(row);
        totalItems += item.quantity; // Tăng tổng số lượng sản phẩm

        // Xử lý sự kiện thay đổi số lượng
        const quantityInput = row.querySelector(".quantity-input");
        const totalCell = row.querySelector(`#item-total-${item.productId}`);

        quantityInput.addEventListener("input", function () {
            const newQuantity = parseInt(quantityInput.value);
            if (newQuantity < 1) quantityInput.value = 1;

            const newTotal = item.productPrice * quantityInput.value;
            totalCell.textContent = `${newTotal.toLocaleString()} VND`;

            // Cập nhật lại localStorage
            item.quantity = newQuantity;
            localStorage.setItem("cartItems", JSON.stringify(cartItems));

            updateCartIcon();
            updateTotalPrice();
        });

        // Xử lý sự kiện xóa sản phẩm
        const removeButton = row.querySelector(".remove-item");
        removeButton.addEventListener("click", function () {
            const index = cartItems.findIndex((i) => i.productId === item.productId);
            if (index > -1) {
                cartItems.splice(index, 1); // Xóa sản phẩm
                localStorage.setItem("cartItems", JSON.stringify(cartItems));
                updateCart();
            }
        });
    });

    cartIconSpan.textContent = totalItems; // Cập nhật biểu tượng giỏ hàng
    updateTotalPrice(); // Cập nhật tổng tiền
}

// Tính tổng số tiền của các sản phẩm được chọn
function updateTotalPrice() {
    const cartItems = JSON.parse(localStorage.getItem("cartItems")) || [];
    const selectedCheckboxes = document.querySelectorAll(".select-product:checked");

    let totalPrice = 0;

    selectedCheckboxes.forEach((checkbox) => {
        const productId = checkbox.dataset.productId;
        const item = cartItems.find((item) => item.productId === productId);
        if (item) {
            totalPrice += item.productPrice * item.quantity;
        }
    });

    // Cập nhật tổng tiền vào phần tử #totalAmount
    totalAmountElement.textContent = `Tổng số tiền: ${totalPrice.toLocaleString()} VND`;
}

// Xử lý sự kiện chọn tất cả
selectAllCheckbox.addEventListener("change", function () {
    const checkboxes = document.querySelectorAll(".select-product");
    checkboxes.forEach((checkbox) => {
        checkbox.checked = selectAllCheckbox.checked;
    });
    updateTotalPrice(); // Cập nhật tổng tiền
});

// Xử lý sự kiện chọn từng sản phẩm
cartTableBody.addEventListener("change", function (event) {
    if (event.target.classList.contains("select-product")) {
        const checkboxes = document.querySelectorAll(".select-product");
        const allChecked = Array.from(checkboxes).every((checkbox) => checkbox.checked);
        const someChecked = Array.from(checkboxes).some((checkbox) => checkbox.checked);

        selectAllCheckbox.checked = allChecked;
        selectAllCheckbox.indeterminate = !allChecked && someChecked;

        updateTotalPrice(); // Cập nhật tổng tiền
    }
});

// Cập nhật biểu tượng giỏ hàng
function updateCartIcon() {
    const cartItems = JSON.parse(localStorage.getItem("cartItems")) || [];
    const totalItems = cartItems.reduce((sum, item) => sum + item.quantity, 0);
    cartIconSpan.textContent = totalItems;
}

// Khởi chạy khi tải trang
window.addEventListener("load", updateCart);
