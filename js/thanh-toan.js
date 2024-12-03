document.addEventListener('DOMContentLoaded', function () {
    // Toggle Navbar
    const navbarToggler = document.querySelector('.navbar-toggler');
    const navbarCollapse = document.getElementById('navbarNav');

    navbarToggler.addEventListener('click', function () {
        navbarCollapse.classList.toggle('collapse');
    });

    // Xác nhận đơn hàng
    const paymentMethods = document.querySelectorAll('input[name="payment_method"]');
    const agreeCheckbox = document.getElementById('input-agree');
    const confirmOrderButton = document.getElementById('validate_order');

    function updateConfirmButtonState() {
        const isPaymentMethodSelected = Array.from(paymentMethods).some(method => method.checked);
        const isAgreeChecked = agreeCheckbox.checked;
        confirmOrderButton.disabled = !(isPaymentMethodSelected && isAgreeChecked);
    }

    paymentMethods.forEach(method => method.addEventListener('change', updateConfirmButtonState));
    agreeCheckbox.addEventListener('change', updateConfirmButtonState);

    confirmOrderButton.addEventListener('click', () => {
        if (!confirmOrderButton.disabled) {
            alert('Đơn hàng của bạn đã được xác nhận!');
            window.location.href = "index.html";
        }
    });

    updateConfirmButtonState();

    // Quản lý giỏ hàng và chi tiết đơn hàng
    const orderDetailsBody = document.getElementById('orderDetailsBody');
    const totalAmountElement = document.getElementById('totalAmount');

    function renderCart() {
        const selectedItems = JSON.parse(sessionStorage.getItem('selectedItems')) || [];
        orderDetailsBody.innerHTML = '';
        let totalAmount = 0;

        if (selectedItems.length > 0) {
            selectedItems.forEach((item, index) => {
                const row = document.createElement('tr');
                const itemTotalPrice = item.productPrice * item.quantity;

                row.innerHTML = `
            <td class="text-center">
                <img src="${item.productImg}" alt="${item.productName}" class="img-thumbnail" />
            </td>
            <td class="text-start">
                <span class="cart-item-quantity">${item.quantity}</span> x
                <span class="cart-item-name">${item.productName}</span>
            </td>
            <td class="text-end">${itemTotalPrice.toLocaleString()} VND</td>
            <td class="text-end">
                <button type="button" class="btn btn-sm btn-danger remove-product-btn" data-index="${index}" title="Loại bỏ">
                    <i class="fa-solid fa-circle-xmark"></i>
                </button>
            </td>
        `;
                orderDetailsBody.appendChild(row);
                totalAmount += itemTotalPrice;
            });

            totalAmountElement.textContent = `${totalAmount.toLocaleString()} VND`;
        } else {
            orderDetailsBody.innerHTML = '<tr><td colspan="4" class="text-center">Chưa có sản phẩm nào!</td></tr>';
            totalAmountElement.textContent = '0 VND';
        }

        // Thêm sự kiện cho nút xóa
        document.querySelectorAll('.remove-product-btn').forEach(button => {
            button.addEventListener('click', function () {
                const index = parseInt(this.getAttribute('data-index'));
                selectedItems.splice(index, 1);
                sessionStorage.setItem('selectedItems', JSON.stringify(selectedItems));
                renderCart();
            });
        });
    }

    renderCart();

    // Chỉnh sửa thông tin và xác nhận
    const buttonShippingAddress = document.getElementById('button-shipping-address');
    const editDetailsButton = document.getElementById('edit_details');
    const shippingSection = document.getElementById('ckh_step_1');
    const orderDetailsSection = document.getElementById('ckh_step_2');
    const confirmDetailsDiv = document.getElementById('confirm_details_div');
    const editDetailsDiv = document.getElementById('edit_details_div');

    function toggleSections(enableShipping, enableOrderDetails) {
        shippingSection.classList.toggle('whole-disabled', !enableShipping);
        shippingSection.classList.toggle('whole-enabled', enableShipping);
        orderDetailsSection.classList.toggle('whole-disabled', !enableOrderDetails);
        orderDetailsSection.classList.toggle('whole-enabled', enableOrderDetails);
    }

    toggleSections(true, false);
    editDetailsDiv.classList.add('d-none');

    buttonShippingAddress.addEventListener('click', function (event) {
        event.preventDefault();
        toggleSections(false, true);
        confirmDetailsDiv.classList.add('d-none');
        editDetailsDiv.classList.remove('d-none');
    });

    editDetailsButton.addEventListener('click', function () {
        toggleSections(true, false);
        editDetailsDiv.classList.add('d-none');
        confirmDetailsDiv.classList.remove('d-none');
    });
});

