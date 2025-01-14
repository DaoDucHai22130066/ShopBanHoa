package com.projectltw.shopbanhoa.model;

import java.math.BigDecimal;
import java.util.Date;

public class Product {
    private int productId; // ID của sản phẩm
    private String productName; // Tên sản phẩm
    private String description; // Mô tả sản phẩm
    private BigDecimal unitPrice; // Giá sản phẩm
    private int categoryId; // ID danh mục của sản phẩm
    private String categoryName; // Tên danh mục của sản phẩm
    private String imagePath; // Đường dẫn hình ảnh sản phẩm
    private BigDecimal discountValue; // Giá trị giảm giá
    private int quantity; // Số lượng sản phẩm
    private Date updatedAt; // Ngày cập nhật sản phẩm
    private Date createdAt; // Ngày tạo sản phẩm

    // Constructors
    public Product() {
    }

    public Product(int productId, String productName, String imagePath, String description, BigDecimal unitPrice) {
        this.productId = productId;
        this.productName = productName;
        this.imagePath = imagePath;
        this.description = description;
        this.unitPrice = unitPrice;
    }
    public Product(int productId, String productName, String description, BigDecimal unitPrice, int categoryId,
                   String categoryName, String imagePath, BigDecimal discountValue, int quantity,
                   Date updatedAt, Date createdAt) {
        this.productId = productId;
        this.productName = productName;
        this.description = description;
        this.unitPrice = unitPrice;
        this.categoryId = categoryId;
        this.categoryName = categoryName;
        this.imagePath = imagePath;
        this.discountValue = discountValue;
        this.quantity = quantity;
        this.updatedAt = updatedAt;
        this.createdAt = createdAt;
    }

    // Getters and Setters
    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public BigDecimal getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(BigDecimal unitPrice) {
        this.unitPrice = unitPrice;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }

    public BigDecimal getDiscountValue() {
        return discountValue;
    }

    public void setDiscountValue(BigDecimal discountValue) {
        this.discountValue = discountValue;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Date getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Date updatedAt) {
        this.updatedAt = updatedAt;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    @Override
    public String toString() {
        return "Product{" +
                "productId=" + productId +
                ", productName='" + productName + '\'' +
                ", description='" + description + '\'' +
                ", unitPrice=" + unitPrice +
                ", categoryId=" + categoryId +
                ", categoryName='" + categoryName + '\'' +
                ", imagePath='" + imagePath + '\'' +
                ", discountValue=" + discountValue +
                ", quantity=" + quantity +
                ", updatedAt=" + updatedAt +
                ", createdAt=" + createdAt +
                '}';
    }
}