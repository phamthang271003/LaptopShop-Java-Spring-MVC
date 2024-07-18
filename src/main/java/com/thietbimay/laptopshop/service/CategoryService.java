package com.thietbimay.laptopshop.service;

import org.springframework.stereotype.Service;

import com.thietbimay.laptopshop.domain.Category;
import com.thietbimay.laptopshop.repository.CategoryRepository;
import java.util.List;

@Service
public class CategoryService {
    private final CategoryRepository categoryRepository;

    public CategoryService(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }

    public List<Category> getAllCategory() {
        return this.categoryRepository.findAllByOrderByNameAsc();
    }
}
