package com.thietbimay.laptopshop.service;

import org.springframework.stereotype.Service;

import com.thietbimay.laptopshop.domain.Product;
import com.thietbimay.laptopshop.repository.ProductRepository;

@Service
public class ProductService {
    private final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public Product handleSaveProduct(Product product) {
        return this.productRepository.save(product);
    }
}
