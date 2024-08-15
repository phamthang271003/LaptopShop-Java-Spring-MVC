package com.thietbimay.laptopshop.service;

import java.util.List;

import org.springframework.stereotype.Service;
import com.thietbimay.laptopshop.domain.ProductImage;
import com.thietbimay.laptopshop.repository.ProductImageRepository;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ProductImageService {
    private final ProductImageRepository productImageRepository;

    public ProductImageService(ProductImageRepository productImageRepository) {
        this.productImageRepository = productImageRepository;
    }

    public ProductImage hanldeSaveProductImage(ProductImage productImage) {
        return this.productImageRepository.save(productImage);
    }

    public List<ProductImage> handleGetAllProductImage(long id) {
        return this.productImageRepository.findByProductId(id);
    }

    public void handleDeleteProductImage(long id) {
        System.out.println("Deleting images for product ID: " + id);
        this.productImageRepository.deleteByProductId(id);
    }
}
