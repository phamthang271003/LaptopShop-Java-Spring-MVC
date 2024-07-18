package com.thietbimay.laptopshop.repository;

import org.springframework.stereotype.Repository;

import com.thietbimay.laptopshop.domain.Product;

import org.springframework.data.jpa.repository.JpaRepository;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {

}
