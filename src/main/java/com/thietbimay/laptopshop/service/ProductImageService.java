package com.thietbimay.laptopshop.service;

import org.springframework.stereotype.Service;

import com.thietbimay.laptopshop.domain.ProductImage;
import com.thietbimay.laptopshop.repository.ProductImageRepository;

@Service
public class ProductImageService {
    private final ProductImageRepository productImageRepository;

    public ProductImageService(ProductImageRepository productImageRepository) {
        this.productImageRepository = productImageRepository;
    }

    public ProductImage hanldeSaveProductImage(ProductImage productImage) {
        return this.productImageRepository.save(productImage);
    }
}
