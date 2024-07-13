package com.thietbimay.laptopshop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.thietbimay.laptopshop.domain.Role;
import com.thietbimay.laptopshop.domain.User;
import com.thietbimay.laptopshop.repository.RoleRepository;
import com.thietbimay.laptopshop.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;
    private final RoleRepository roleRepository;

    public UserService(UserRepository userRepository, RoleRepository roleRepository) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
    }

    public List<User> getAllUser() {
        return userRepository.findAll();
    }

    public Role handleGetRoleByName(String roleName) {
        return this.roleRepository.findByName(roleName);
    }

    public User handleSaveUser(User user) {
        return this.userRepository.save(user);
    }

    public User handleGetUserById(long id) {
        return this.userRepository.findById(id);
    }

    public User handleDeleteUserById(long id) {
        return this.userRepository.deleteById(id);
    }
}
