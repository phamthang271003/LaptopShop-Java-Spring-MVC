package com.thietbimay.laptopshop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.thietbimay.laptopshop.domain.User;
import com.thietbimay.laptopshop.repository.UserRepository;

@Service
public class UserService {
    private UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public List<User> getAllUser() {
        return userRepository.findAll();
    }
}
