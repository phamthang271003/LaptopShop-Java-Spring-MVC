package com.thietbimay.laptopshop.repository;

import org.springframework.stereotype.Repository;

import com.thietbimay.laptopshop.domain.Product;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {

    List<Product> findAll();
}
