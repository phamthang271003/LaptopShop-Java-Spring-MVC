package com.thietbimay.laptopshop.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.thietbimay.laptopshop.domain.Brand;
import com.thietbimay.laptopshop.domain.Category;
import com.thietbimay.laptopshop.domain.Product;
import com.thietbimay.laptopshop.service.BrandService;
import com.thietbimay.laptopshop.service.CategoryService;
import com.thietbimay.laptopshop.service.ProductService;
import com.thietbimay.laptopshop.service.UploadService;
import java.util.List;

import jakarta.validation.Valid;

@Controller
public class ProductController {

    private final ProductService productService;
    private final UploadService uploadService;
    private final CategoryService categoryService;
    private final BrandService brandService;

    public ProductController(ProductService productService, UploadService uploadService,
            CategoryService categoryService, BrandService brandService) {
        this.productService = productService;
        this.uploadService = uploadService;
        this.categoryService = categoryService;
        this.brandService = brandService;
    }

    @GetMapping("/admin/product")
    public String getProductPage(Model model) {
        return "admin/product/show";
    }

    @GetMapping("/admin/product/create")
    public String getCreateProductPage(Model model) {
        List<Category> categories = this.categoryService.getAllCategory();
        List<Brand> brands = this.brandService.getAllBrand();
        model.addAttribute("newProduct", new Product());
        model.addAttribute("categories", categories);
        model.addAttribute("brands", brands);
        return "admin/product/create";
    }

    @PostMapping("/admin/product/create")
    public String postCreateProduct(@ModelAttribute("newProduct") @Valid Product product,
            BindingResult newProductBindingResult,
            @RequestParam("file") MultipartFile file) {

        // validate
        if (newProductBindingResult.hasErrors()) {
            return "admin/product/create";
        }

        // upload image
        // String image = this.uploadService.handleSaveUploadFile(file, "product");
        // product.setImage(image);

        // this.productService.handleSaveProduct(product);
        return "redirect:/admin/product";
    }

}
