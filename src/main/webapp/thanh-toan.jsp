<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 27/12/2024
  Time: 12:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thanh Toán</title>
    <!--    Shortcut Icon-->
    <link rel="icon" href="./images/icon-logo.png" type="image/png">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- FontAwesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="./css/thanh-toan.css">
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.min.js"></script>

</head>
<body>
<jsp:include page="./header.jsp"/>
<main>
<div id="checkout-checkout" class="container">
    <div class="row">
        <div id="content" class="col mt-5">
            <div class="row">
                <div class="col-md-7">
                    <div id="ckh_step_1">

                        <div id="checkout-shipping-address">
                            <fieldset>
                                <legend>Thông tin người nhận</legend>
                                <div id="shipping-existing" style="display: none;">
                                    <select name="address_id" id="input-shipping-address" class="form-select">
                                        <option>--- Vui lòng chọn ---</option>
                                    </select>
                                </div>
                                <br />
                                <div id="shipping-new">
                                    <form autocomplete="off" id="form-shipping-address"
                                          class="section-shipping-address">
                                        <div class="row row-cols-1 row-cols-md-2">
                                            <div class="col mb-3 required order-1">
                                                <label for="input-shipping-firstname" class="form-label">Họ
                                                    tên</label>
                                                <input type="text" name="shipping_firstname" autocomplete="off"
                                                       value="" placeholder="Họ tên" id="input-shipping-firstname"
                                                       class="form-control" />
                                                <div id="error-shipping-firstname" class="invalid-feedback">
                                                </div>
                                            </div>


                                            <div class="col col-md-12 mb-3 required order-3">
                                                <label for="input-shipping-address-1" class="form-label">Địa
                                                    chỉ</label>
                                                <input type="text" name="shipping_address_1" autocomplete="off"
                                                       value="" placeholder="Địa chỉ" id="input-shipping-address-1"
                                                       class="form-control" />
                                                <div id="error-shipping-address-1" class="invalid-feedback">
                                                </div>
                                            </div>

                                            <div class="col mb-3 required d-none">
                                                <label for="input-shipping-country" class="form-label">Quốc
                                                    gia</label>
                                                <select name="shipping_country_id" id="input-shipping-country"
                                                        class="form-select">
                                                    <option value="">--- Vui lòng chọn ---</option>
                                                    <option value="230" selected>Viet Nam</option>
                                                </select>
                                                <div id="error-shipping-country" class="invalid-feedback"></div>
                                            </div>
                                            <div class="col mb-3 required">
                                                <label for="input-shipping-zone" class="form-label">Tỉnh / thành phố</label>
                                                <select name="shipping_zone_id" id="input-shipping-zone" class="form-select">
                                                    <option value="0">Vui lòng chọn tỉnh/thành phố</option>
                                                    <option value="43" >TP.Hồ Chí Minh - Nội thành</option>
                                                    <option value="44" >TP.Hồ Chí Minh - Ngoại thành</option>
                                                </select>
                                                <div id="error-shipping-zone" class="invalid-feedback"></div>
                                            </div>
                                            <div class="col mb-3 custom-field custom-field-29">
                                                <label for="input-shipping-custom-field-29" class="form-label">Điện thoại</label>
                                                <input type="text" autocomplete="off"
                                                       name="shipping_custom_field[address][29]"
                                                       value="" placeholder="Điện thoại"
                                                       id="input-shipping-custom-field-29"
                                                       class="form-control"/>
                                                <div id="error-shipping-custom-field-29" class="invalid-feedback"></div>
                                            </div>
                                            <div class="col mb-3 custom-field custom-field-30">
                                                <label for="input-shipping-custom-field-30" class="form-label">Quận / Huyện</label>
                                                <select name="shipping_custom_field[address][30]"
                                                        id="input-shipping-custom-field-30" class="form-select">
                                                    <option value="0">Vui lòng chọn quận/huyện</option>
                                                </select>
                                                <div id="error-shipping-custom-field-30" class="invalid-feedback"></div>
                                            </div>
                                            <div class="col mb-3 custom-field custom-field-31">
                                                <label for="input-shipping-custom-field-31" class="form-label">Ngày giao hàng</label>
                                                <div class="input-group">
                                                    <input type="text" name="shipping_custom_field[address][31]"
                                                           value="" placeholder="Ngày giao hàng"
                                                           id="input-shipping-custom-field-31"
                                                           class="form-control date"/>
                                                    <div class="input-group-text">
                                                        <i class="fa-regular fa-calendar"></i>
                                                    </div>
                                                </div>
                                                <div id="error-shipping-custom-field-31" class="invalid-feedback"></div>
                                            </div>
                                            <div class="col mb-3 custom-field custom-field-32">
                                                <label for="input-shipping-custom-field-32" class="form-label">Thời gian giao hàng</label>
                                                <select name="shipping_custom_field[address][32]"
                                                        id="input-shipping-custom-field-32"
                                                        class="form-select">
                                                    <option value="105" selected>07:00</option>
                                                    <option value="106">08:00</option>
                                                    <option value="107">09:00</option>
                                                    <option value="108">10:00</option>
                                                    <option value="109">11:00</option>
                                                    <option value="110">12:00</option>
                                                    <option value="111">13:00</option>
                                                    <option value="112">14:00</option>
                                                    <option value="113">15:00</option>
                                                    <option value="114">16:00</option>
                                                    <option value="115">17:00</option>
                                                    <option value="116">18:00</option>
                                                    <option value="117">19:00</option>
                                                    <option value="118">20:00</option>
                                                    <option value="119">21:00</option>
                                                    <option value="120">Từ 8:00 - 12:00</option>
                                                    <option value="121">Từ 12:00 - 20:00</option>
                                                    <option value="122">Từ 8:00 - 20:00</option>
                                                </select>
                                                <div id="error-shipping-custom-field-32"
                                                     class="invalid-feedback"></div>
                                            </div>
                                            <div class="col col-md-12 mb-3 custom-field custom-field-33">
                                                <label for="input-shipping-custom-field-33" class="form-label">Lời nhắn [Cho người nhận]</label>
                                                <textarea name="shipping_custom_field[address][33]"
                                                          rows="2" placeholder=""
                                                          id="input-shipping-custom-field-33"
                                                          class="form-control"></textarea>
                                                <div id="error-shipping-custom-field-33" class="invalid-feedback"></div>
                                            </div>
                                            <div class="col col-md-12 mb-3 custom-field custom-field-34">
                                                <label for="input-shipping-custom-field-34" class="form-label">Yêu cầu, lưu ý [cho shop]</label>
                                                <textarea name="shipping_custom_field[address][34]"
                                                          rows="2" placeholder=""
                                                          id="input-shipping-custom-field-34"
                                                          class="form-control"></textarea>
                                                <div id="error-shipping-custom-field-34" class="invalid-feedback"></div>
                                            </div>
                                            <div class="col mb-3 custom-field custom-field-35">
                                                <label class="form-label">Ẩn thông tin</label>
                                                <div id="input-shipping-custom-field-35">
                                                    <div class="form-check">
                                                        <input type="checkbox"
                                                               name="shipping_custom_field[address][35][]"
                                                               value="102" id="input-shipping-custom-value-102"
                                                               class="form-check-input"/>
                                                        <label for="input-shipping-custom-value-102" class="whole-disabledform-check-label">Giấu thông tin người gửi</label>
                                                    </div>
                                                </div>
                                                <div id="error-shipping-custom-field-35" class="invalid-feedback"></div>
                                            </div>
                                            <div class="col mb-3 custom-field custom-field-36">
                                                <label class="form-label">Hoá đơn VAT</label>
                                                <div id="input-shipping-custom-field-36">
                                                    <div class="form-check">
                                                        <input type="checkbox"
                                                               name="shipping_custom_field[address][36][]"
                                                               value="104" id="input-shipping-custom-value-104"
                                                               class="form-check-input"/>
                                                        <label for="input-shipping-custom-value-104" class="form-check-label">Yêu cầu hoá đơn VAT</label>
                                                    </div>
                                                </div>
                                                <div id="error-shipping-custom-field-36" class="invalid-feedback"></div>
                                            </div>

                                            <!-- Thông tin hóa đơn VAT ( mặc định ẩn đi )-->
                                            <div class="col mb-3 custom-field custom-field-37">
                                                <label for="input-shipping-custom-field-37"
                                                       class="form-label">Tên công ty</label>
                                                <input type="text" autocomplete="off"
                                                       name="shipping_custom_field[address][37]" value=""
                                                       placeholder="Tên công ty"
                                                       id="input-shipping-custom-field-37" class="form-control" />
                                                <div id="error-shipping-custom-field-37"
                                                     class="invalid-feedback"></div>
                                            </div>
                                            <div class="col mb-3 custom-field custom-field-38">
                                                <label for="input-shipping-custom-field-38"
                                                       class="form-label">Mã số thuế</label>
                                                <input type="text" autocomplete="off"
                                                       name="shipping_custom_field[address][38]" value=""
                                                       placeholder="Mã số thuế" id="input-shipping-custom-field-38"
                                                       class="form-control" />
                                                <div id="error-shipping-custom-field-38"
                                                     class="invalid-feedback"></div>
                                            </div>
                                            <div class="col mb-3 custom-field custom-field-39">
                                                <label for="input-shipping-custom-field-39"
                                                       class="form-label">Địa chỉ công ty</label>
                                                <input type="text" autocomplete="off"
                                                       name="shipping_custom_field[address][39]" value=""
                                                       placeholder="Địa chỉ công ty"
                                                       id="input-shipping-custom-field-39" class="form-control" />
                                                <div id="error-shipping-custom-field-39"
                                                     class="invalid-feedback"></div>
                                            </div>
                                            <div class="col mb-3 custom-field custom-field-40">
                                                <label for="input-shipping-custom-field-40"
                                                       class="form-label">Tên người nhận hóa đơn</label>
                                                <input type="text" autocomplete="off"
                                                       name="shipping_custom_field[address][40]" value=""
                                                       placeholder="Tên người nhận hóa đơn"
                                                       id="input-shipping-custom-field-40" class="form-control" />
                                                <div id="error-shipping-custom-field-40"
                                                     class="invalid-feedback"></div>
                                            </div>
                                            <div class="col mb-3 custom-field custom-field-41">
                                                <label for="input-shipping-custom-field-41"
                                                       class="form-label">Email nhận hóa đơn</label>
                                                <input type="text" autocomplete="off"
                                                       name="shipping_custom_field[address][41]" value=""
                                                       placeholder="Email nhận hóa đơn"
                                                       id="input-shipping-custom-field-41" class="form-control" />
                                                <div id="error-shipping-custom-field-41"
                                                     class="invalid-feedback"></div>
                                            </div>


                                            <div class="col mb-3 custom-field custom-field-42">
                                                <label for="input-shipping-custom-field-42"
                                                       class="form-label">Mã nhân viên</label>
                                                <input type="text" autocomplete="off"
                                                       name="shipping_custom_field[address][42]" value=""
                                                       placeholder="Mã nhân viên"
                                                       id="input-shipping-custom-field-42" class="form-control" />
                                                <div id="error-shipping-custom-field-42"
                                                     class="invalid-feedback"></div>
                                            </div>
                                        </div>
                                        <div class="text-end" id="confirm_details_div">
                                            <button type="submit" id="button-shipping-address"
                                                    class="btn btn-primary">Xác nhận và tiếp tục</button>
                                        </div>
                                    </form>
                                </div>
                            </fieldset>
                        </div>

                    </div>

                    <div class="text-end d-none" id="edit_details_div">
                        <button type="button" id="edit_details" class="btn btn-dark">Chỉnh sửa thông
                            tin</button>
                    </div>

                </div>

                <div id="ckh_step_2" class="col-md-5 whole-disabled">
                    <div id="checkout-confirm">

                        <legend>Chi tiết đơn hàng</legend>
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover">
                                <thead>
                                <tr>
                                    <td class="text-start" style="min-width:80px">Ảnh sản phẩm</td>
                                    <td class="text-start">Tên sản phẩm</td>
                                    <td class="text-end">Tổng cộng</td>
                                    <td class="text-end"></td>
                                </tr>
                                </thead>
                                <tbody id="orderDetailsBody">
                                <!-- <input type="hidden" class="cart-total" value="330000" />
                                <tr>
                                    <input type="hidden" class="cart-product-id" value="7312" />
                                    <input type="hidden" class="cart-item-price" value="330,000VND" />
                                    <td class="text-center">
                                        <a href="https://www.flowercorner.vn/san-pham/thanh-tu">
                                            <img src="images/sp-hoa-thanhtu.png" alt="Thanh Tú"
                                                title="Thanh Tú" class="img-thumbnail" />
                                        </a>
                                    </td>
                                    <td class="text-start">
                                        <span class="cart-item-quantity">1</span> x
                                        <a href="https://www.flowercorner.vn/san-pham/thanh-tu"
                                            class="cart-item-name">Thanh Tú</a>
                                    </td>
                                    <td class="text-end">330,000VND</td>
                                    <td class="text-end">
                                        <form action="" method="post">
                                            <input type="hidden" name="key" value="37161">
                                            <button type="submit" data-bs-toggle="tooltip" title="Loại bỏ"
                                                class="btn btn-sm btn-danger">
                                                <i class="fa-solid fa-circle-xmark"></i>
                                            </button>
                                        </form>
                                    </td>
                                </tr> -->
                                </tbody>
                                <tfoot>
                                <tr>
                                    <td colspan="2" class="text-end"><strong>Tổng cộng</strong></td>
                                    <td class="text-end" colspan="2" id="totalAmount">0 VND</td>
                                </tr>
                                </tfoot>
                            </table>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <form id="form-coupon" action="" method="post">
                                    <div class="row mb-3">
                                        <label for="input-coupon" class="col-md-3 col-form-label">Mã giảm
                                            giá</label>
                                        <div class="col-md-6 mb-3">
                                            <input type="text" name="coupon" value="" placeholder="Mã giảm giá"
                                                   id="input-coupon" class="form-control" />
                                        </div>
                                        <div class="col-md-3">
                                            <div class="text-end">
                                                <button type="submit" class="btn btn-primary">Áp dụng</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>

                        <div id="checkout-payment">
                            <div class="text-end">
                                <button type="button" class="btn btn-primary" disabled>Xác nhận đơn
                                    hàng</button>
                            </div>
                        </div>

                    </div>

                    <!--                        Phương thức vận chuyển ( viết thêm nếu cần )-->

                    <!--                        Chọn phương thức thanh toán-->
                    <div id="checkout-payment-method" class="mb-4">
                        <form id="form-payment-method">
                            <fieldset>
                                <div class="input-group">
                                    <div class="input-payment-method-group">
                                        <div class="form-check">
                                            <input type="radio" name="payment_method" value="bank_transfer"
                                                   id="input-payment-method-bank_transfer"
                                                   class="form-check-input input-payment-method">
                                            <label for="input-payment-method-bank_transfer"
                                                   class="form-check-label">
                                                <img class="payment-method-icon"
                                                     src="./images/bank-transfer.png"  alt=""/>
                                                Chuyển khoản ngân hàng
                                                <span class="payment-brand-icon-bank_transfer"></span>
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input type="radio" name="payment_method" value="vnpay"
                                                   id="input-payment-method-vnpay"
                                                   class="form-check-input input-payment-method">
                                            <label for="input-payment-method-vnpay" class="form-check-label">
                                                <img class="payment-method-icon" src="./images/vnpay.png"  alt=""/>
                                                Thẻ ATM, Visa, Master, QR (VNPAY)
                                                <span class="payment-brand-icon-vnpay"></span>
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input type="radio" name="payment_method" value="onepay"
                                                   id="input-payment-method-onepay"
                                                   class="form-check-input input-payment-method">
                                            <label for="input-payment-method-onepay" class="form-check-label">
                                                <img class="payment-method-icon" src="./images/onepay.png"  alt=""/>
                                                Visa, Master, JCB, UnionPay, Amex
                                                <span class="payment-brand-icon-onepay"></span>
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input type="radio" name="payment_method" value="cheque"
                                                   id="input-payment-method-cheque"
                                                   class="form-check-input input-payment-method">
                                            <label for="input-payment-method-cheque" class="form-check-label">
                                                <img class="payment-method-icon" src="./images/cheque.png"  alt=""/>
                                                Ví điện tử
                                                <span class="payment-brand-icon-cheque"></span>
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input type="radio" name="payment_method" value="paypal"
                                                   id="input-payment-method-paypal"
                                                   class="form-check-input input-payment-method">
                                            <label for="input-payment-method-paypal" class="form-check-label">
                                                <img class="payment-method-icon" src="./images/paypal.png"  alt=""/>
                                                Paypal (Paypal, Thẻ Visa, Master)
                                                <span class="payment-brand-icon-paypal"></span>
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input type="radio" name="payment_method" value="cod"
                                                   id="input-payment-method-cod"
                                                   class="form-check-input input-payment-method">
                                            <label for="input-payment-method-cod" class="form-check-label">
                                                <img class="payment-method-icon" src="images/cod.png"  alt=""/>
                                                Thanh toán khi giao hàng
                                                <span class="payment-brand-icon-cod"></span>
                                            </label>
                                        </div>
                                    </div>
                                    <button type="button" id="button-payment-method"
                                            class="btn btn-light d-none"><i class="fa-solid fa-rotate"></i></button>
                                </div>
                            </fieldset>
                        </form>

                        <div class="mb-2 mt-3">
                            <div class="form-check text-end">
                                <input type="checkbox" name="agree" value="1" id="input-agree"
                                       class="form-check-input" checked />
                                <label for="input-agree" class="form-check-label">Tôi đã đọc và đồng ý với
                                    <a href="https://www.flowercorner.vn/info/dieu-khoan-dieu-kien"
                                       class="modal-link"><b> Điều khoản &amp; Điều kiện </b></a>
                                </label>
                            </div>
                        </div>
                        <hr />
                        <div class="text-end">
                            <button type="button" id="validate_order" class="btn btn-primary" disabled>Xác nhận
                                đơn hàng</button>
                        </div>
                        <div class="mt-3" id="paypal-button-container"></div>
                    </div>
                </div>
            </div>
        </div>

    </div>

</div>

</main>
<jsp:include page="./footer.jsp"/>
<!-- Bootstrap JS and dependencies -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>


<script src="./js/thanh-toan.js"></script>
<script src="./js/themgio.js"></script>
<script src="./js/gio-hang.js"></script>


</body>
</html>
