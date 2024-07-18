package com.thietbimay.laptopshop.service;

import org.springframework.stereotype.Service;

import com.thietbimay.laptopshop.domain.Brand;
import com.thietbimay.laptopshop.repository.BrandRepository;

import java.util.List;

@Service
public class BrandService {

    private final BrandRepository brandRepository;

    public BrandService(BrandRepository brandRepository) {
        this.brandRepository = brandRepository;
    }

    public List<Brand> getAllBrand() {
        return this.brandRepository.findAllByOrderByNameAsc();
    }

}
