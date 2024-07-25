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
import com.thietbimay.laptopshop.domain.ProductImage;
import com.thietbimay.laptopshop.service.BrandService;
import com.thietbimay.laptopshop.service.CategoryService;
import com.thietbimay.laptopshop.service.ProductImageService;
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
    private final ProductImageService productImageService;

    public ProductController(ProductService productService, UploadService uploadService,
            CategoryService categoryService, BrandService brandService, ProductImageService productImageService) {
        this.productService = productService;
        this.uploadService = uploadService;
        this.categoryService = categoryService;
        this.brandService = brandService;
        this.productImageService = productImageService;
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
            @RequestParam("files") MultipartFile[] files) {

        // validate
        if (newProductBindingResult.hasErrors()) {
            return "admin/product/create";
        }

        List<String> images = this.uploadService.handleSaveUploadMultiFile(files, "top-products");

        this.productService.handleSaveProduct(product);

        // Save images to product_images table
        for (String image : images) {
            ProductImage productImage = new ProductImage();
            productImage.setProduct(product);
            productImage.setImage(image);
            this.productImageService.hanldeSaveProductImage(productImage);
        }
        return "redirect:/admin/product";
    }

}
