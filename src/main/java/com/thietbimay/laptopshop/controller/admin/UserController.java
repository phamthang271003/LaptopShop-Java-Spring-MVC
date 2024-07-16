package com.thietbimay.laptopshop.controller.admin;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;

import com.thietbimay.laptopshop.domain.User;
import com.thietbimay.laptopshop.service.UploadService;
import com.thietbimay.laptopshop.service.UserService;

import jakarta.validation.Valid;

import java.util.List;

@Controller
public class UserController {

    private final UserService userService;
    private final UploadService uploadService;
    private PasswordEncoder passwordEncoder;

    public UserController(UserService userService, UploadService uploadService, PasswordEncoder passwordEncoder) {
        this.userService = userService;
        this.uploadService = uploadService;
        this.passwordEncoder = passwordEncoder;
    }

    @GetMapping("/admin/user")
    public String getUserPage(Model model) {
        List<User> users = userService.getAllUser();
        model.addAttribute("users", users);
        return "admin/user/show";
    }

    @GetMapping("/admin/user/create")
    public String getAddUserPage(Model model) {
        model.addAttribute("newUser", new User());
        return "admin/user/create";
    }

    @PostMapping("/admin/user/create")
    public String createUser(Model model, @ModelAttribute("newUser") @Valid User user, BindingResult bindingResult,
            @RequestParam("file") MultipartFile file) {

        if (bindingResult.hasErrors()) {
            return "admin/user/create";
        }

        String avatar = this.uploadService.handleSaveUploadFile(file, "avatars");
        String hashPassword = this.passwordEncoder.encode(user.getPassword());
        user.setAvatar(avatar);
        user.setPassword(hashPassword);
        user.setRole(this.userService.handleGetRoleByName(user.getRole().getName()));

        this.userService.handleSaveUser(user);
        return "redirect:/admin/user";
    }

    @GetMapping("/admin/user/{id}")
    public String getUserDetail(Model model, @PathVariable("id") long id) {
        User user = this.userService.handleGetUserById(id);
        model.addAttribute("user", user);
        return "admin/user/profile";
    }

    @PostMapping("/admin/user/update")
    public String postUpdateUser(Model model, @ModelAttribute("user") @Valid User user, BindingResult bindingResult,
            @RequestParam("file") MultipartFile file) {

        if (bindingResult.hasErrors()) {
            return "admin/user/profile";
        }

        User currentUser = this.userService.handleGetUserById(user.getId());
        if (currentUser != null) {

            if (!file.isEmpty()) {
                String avatar = this.uploadService.handleSaveUploadFile(file, "avatars");
                currentUser.setAvatar(avatar);
            }
            currentUser.setRole(this.userService.handleGetRoleByName(user.getRole().getName()));
            currentUser.setAddress(user.getAddress());
            currentUser.setEmail(user.getEmail());
            currentUser.setFullName(user.getFullName());
            currentUser.setPhone(user.getPhone());
            currentUser.setUpdatedAt(user.getUpdatedAt());

            this.userService.handleSaveUser(currentUser);

        }

        return "redirect:/admin/user";
    }

    @GetMapping("/admin/user/delete/{id}")
    public String getDeleteUserPage(Model model, @PathVariable long id) {
        // User currentUser = this.userService.handleGetUserById(id);
        // currentUser.setId(id);
        model.addAttribute("user", new User());
        return "admin/user/delete";
    }

    @PostMapping("/admin/user/delete")
    public String postDeleteUser(Model model, @ModelAttribute("user") User user) {
        this.userService.handleDeleteUserById(user.getId());
        return "redirect:/admin/user";
    }
}
