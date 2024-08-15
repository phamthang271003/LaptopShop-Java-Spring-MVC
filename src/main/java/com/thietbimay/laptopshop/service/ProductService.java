package com.thietbimay.laptopshop.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.thietbimay.laptopshop.domain.Brand;
import com.thietbimay.laptopshop.domain.Category;
import com.thietbimay.laptopshop.domain.Product;
import com.thietbimay.laptopshop.repository.BrandRepository;
import com.thietbimay.laptopshop.repository.CategoryRepository;
import com.thietbimay.laptopshop.repository.ProductRepository;

@Service
public class ProductService {
    private final ProductRepository productRepository;
    private final CategoryRepository categoryRepository;
    private final BrandRepository brandRepository;

    public ProductService(ProductRepository productRepository, CategoryRepository categoryRepository,
            BrandRepository brandRepository) {
        this.productRepository = productRepository;
        this.categoryRepository = categoryRepository;
        this.brandRepository = brandRepository;
    }

    public List<Product> handleGetAllProduct() {
        return this.productRepository.findAll();
    }

    public Product handleSaveProduct(Product product) {
        return this.productRepository.save(product);
    }

    public Optional<Product> handleGetProductById(Long id) {
        return this.productRepository.findById(id);
    }

    public Category handleGetCategoryByName(String name) {
        return this.categoryRepository.findByName(name);
    }

    public Brand handleGetBrandByName(String name) {
        return this.brandRepository.findByName(name);
    }

    public void handleDeleteProductById(Long id) {
        this.productRepository.deleteById(id);
    }
}
