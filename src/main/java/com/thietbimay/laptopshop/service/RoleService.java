package com.thietbimay.laptopshop.service;

import org.springframework.stereotype.Service;

import com.thietbimay.laptopshop.domain.Role;
import com.thietbimay.laptopshop.repository.RoleRepository;

@Service
public class RoleService {
    private RoleRepository roleRepository;

    public RoleService(RoleRepository roleRepository) {
        this.roleRepository = roleRepository;
    }
}
