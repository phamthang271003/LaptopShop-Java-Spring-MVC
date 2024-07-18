package com.thietbimay.laptopshop.repository;

import com.thietbimay.laptopshop.domain.Brand;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface BrandRepository extends JpaRepository<Brand, Long> {
    List<Brand> findAllByOrderByNameAsc();
}
