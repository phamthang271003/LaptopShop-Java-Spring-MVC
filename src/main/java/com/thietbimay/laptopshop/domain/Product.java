package com.thietbimay.laptopshop.domain;

import java.time.LocalDate;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "products")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String name;

    @Column(columnDefinition = "MEDIUMTEXT")
    private String outStandingDesc;

    @Column(columnDefinition = "MEDIUMTEXT")
    private String parameterDesc;

    @Column(columnDefinition = "MEDIUMTEXT")
    private String detailDesc;

    private double price;
    private long quantity;
    private long discount;
    private long sold;

    private LocalDate createdAt;
    private LocalDate updatedAt;

    @ManyToOne
    @JoinColumn(name = "brand_id")
    private Brand brand;

    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category category;

    @OneToMany(mappedBy = "product")
    List<ProductImage> ProductImages;

    public Product() {
    }

    public Product(long id, String name, String outStandingDesc, String parameterDesc, String detailDesc,
            double price, long quantity, long discount, long sold, LocalDate createdAt, LocalDate updatedAt,
            Brand brand, Category category, List<ProductImage> productImages) {
        this.id = id;
        this.name = name;
        this.outStandingDesc = outStandingDesc;
        this.parameterDesc = parameterDesc;
        this.detailDesc = detailDesc;
        this.price = price;
        this.quantity = quantity;
        this.discount = discount;
        this.sold = sold;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
        this.brand = brand;
        this.category = category;
        ProductImages = productImages;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getOutStandingDesc() {
        return outStandingDesc;
    }

    public void setOutStandingDesc(String outStandingDesc) {
        this.outStandingDesc = outStandingDesc;
    }

    public String getParameterDesc() {
        return parameterDesc;
    }

    public void setParameterDesc(String parameterDesc) {
        this.parameterDesc = parameterDesc;
    }

    public String getDetailDesc() {
        return detailDesc;
    }

    public void setDetailDesc(String detailDesc) {
        this.detailDesc = detailDesc;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public long getQuantity() {
        return quantity;
    }

    public void setQuantity(long quantity) {
        this.quantity = quantity;
    }

    public long getDiscount() {
        return discount;
    }

    public void setDiscount(long discount) {
        this.discount = discount;
    }

    public long getSold() {
        return sold;
    }

    public void setSold(long sold) {
        this.sold = sold;
    }

    public LocalDate getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(LocalDate createdAt) {
        this.createdAt = createdAt;
    }

    public LocalDate getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(LocalDate updatedAt) {
        this.updatedAt = updatedAt;
    }

    public Brand getBrand() {
        return brand;
    }

    public void setBrand(Brand brand) {
        this.brand = brand;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public List<ProductImage> getProductImages() {
        return ProductImages;
    }

    public void setProductImages(List<ProductImage> productImages) {
        ProductImages = productImages;
    }

    @Override
    public String toString() {
        return "Product [id=" + id + ", name=" + name + ", outStandingDesc=" + outStandingDesc
                + ", parameterDesc=" + parameterDesc + ", detailDesc=" + detailDesc + ", price=" + price + ", quantity="
                + quantity + ", discount=" + discount + ", sold=" + sold + ", createdAt=" + createdAt + ", updatedAt="
                + updatedAt + ", brand=" + brand + ", category=" + category + ", ProductImages=" + ProductImages + "]";
    }

}
