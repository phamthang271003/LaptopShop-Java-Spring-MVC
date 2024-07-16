package com.thietbimay.laptopshop.service.validator;

import org.springframework.stereotype.Service;

import com.thietbimay.laptopshop.domain.User;
import com.thietbimay.laptopshop.service.UserService;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

@Service
public class UserValidator implements ConstraintValidator<UserChecked, User> {
    private final UserService userService;

    public UserValidator() {
        this.userService = null;
    }

    public UserValidator(UserService userService) {
        this.userService = userService;
    }

    @Override
    public boolean isValid(User user, ConstraintValidatorContext context) {
        boolean valid = true;

        // Additional validations can be added here
        // check email
        if (user.getEmail() == null) {
            if (this.userService.checkEmailExist(user.getEmail())) {
                context.buildConstraintViolationWithTemplate("Email đã tồn tại")
                        .addPropertyNode("email")
                        .addConstraintViolation()
                        .disableDefaultConstraintViolation();
                valid = false;
            }
        }

        if (user.getEmail() == null || user.getEmail().isEmpty()) {
            context.buildConstraintViolationWithTemplate("Email Không được để trống")
                    .addPropertyNode("email")
                    .addConstraintViolation()
                    .disableDefaultConstraintViolation();
            valid = false;
        }

        if (user.getEmail().matches("^[a-zA-Z0-9_!#$%&'*+/=?`{|}~^.-]+@[azA-Z0-9.-]+$")) {
            context.buildConstraintViolationWithTemplate("Email Không được để trống")
                    .addPropertyNode("email")
                    .addConstraintViolation()
                    .disableDefaultConstraintViolation();
            valid = false;
        }

        if (user.getPassword() == null || user.getPassword().isEmpty()) {
            context.buildConstraintViolationWithTemplate("Password Không được để trống")
                    .addPropertyNode("password")
                    .addConstraintViolation()
                    .disableDefaultConstraintViolation();
            valid = false;
        }
        if (user.getFullName() == null || user.getFullName().isEmpty()) {
            context.buildConstraintViolationWithTemplate("FullName Không được để trống")
                    .addPropertyNode("fullName")
                    .addConstraintViolation()
                    .disableDefaultConstraintViolation();
            valid = false;
        }
        if (user.getPhone() == null || user.getPhone().isEmpty()) {
            context.buildConstraintViolationWithTemplate("Phone Không được để trống")
                    .addPropertyNode("phone")
                    .addConstraintViolation()
                    .disableDefaultConstraintViolation();
            valid = false;
        }

        if (user.getAddress() == null || user.getAddress().isEmpty()) {
            context.buildConstraintViolationWithTemplate("Address Không được để trống")
                    .addPropertyNode("address")
                    .addConstraintViolation()
                    .disableDefaultConstraintViolation();
            valid = false;
        }
        return valid;
    }
}
