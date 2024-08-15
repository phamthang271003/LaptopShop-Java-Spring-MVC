package com.thietbimay.laptopshop.controller.admin;

import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.thietbimay.laptopshop.domain.Brand;
import com.thietbimay.laptopshop.domain.Category;
import com.thietbimay.laptopshop.domain.Product;
import com.thietbimay.laptopshop.domain.ProductImage;
import com.thietbimay.laptopshop.domain.User;
import com.thietbimay.laptopshop.service.BrandService;
import com.thietbimay.laptopshop.service.CategoryService;
import com.thietbimay.laptopshop.service.ProductImageService;
import com.thietbimay.laptopshop.service.ProductService;
import com.thietbimay.laptopshop.service.UploadService;
import java.util.List;
import java.util.Optional;

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
    public String getAllProduct(Model model) {
        List<Product> products = this.productService.handleGetAllProduct();
        model.addAttribute("products", products);
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

        if (files == null || files.length == 0) {
            newProductBindingResult.rejectValue("files", "error.files", "Please upload at least one image.");
            return "admin/product/create";
        }
        try {
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
        } catch (Exception e) {
            newProductBindingResult.reject("error.general", "An error occurred while processing your request.");
            return "admin/product/create";
        }
    }

    @GetMapping("/admin/product/update/{id}")
    public String getUpdateProductPage(Model model, @PathVariable long id) {
        Optional<Product> currentProduct = this.productService.handleGetProductById(id);
        model.addAttribute("newProduct", currentProduct.get());

        List<Category> categories = categoryService.getAllCategory();
        List<Brand> brands = brandService.getAllBrand();
        List<ProductImage> productImages = this.productImageService
                .handleGetAllProductImage(currentProduct.get().getId());
        model.addAttribute("productImages", productImages);
        model.addAttribute("categories", categories);
        model.addAttribute("brands", brands);
        return "admin/product/update";
    }

    @PostMapping("/admin/product/update")
    public String postUpdateProduct(
            Model model,
            @ModelAttribute("newProduct") @Valid Product product,
            BindingResult productBindingResult,
            @RequestParam("files") MultipartFile[] files) {

        Product currentProduct = this.productService.handleGetProductById(product.getId()).get();

        if (productBindingResult.hasErrors()) {
            return "admin/product/update";
        }

        try {

            // Nếu có file ảnh mới, lưu hình ảnh vào bảng product_images
            if (files != null && files.length > 0 && !files[0].isEmpty()) {
                this.productImageService.handleDeleteProductImage(currentProduct.getId());
                List<String> images = this.uploadService.handleSaveUploadMultiFile(files, "top-products");
                for (String image : images) {
                    ProductImage productImage = new ProductImage();
                    productImage.setProduct(currentProduct);
                    productImage.setImage(image);
                    this.productImageService.hanldeSaveProductImage(productImage);
                }
            }

            if (currentProduct != null) {
                currentProduct.setName(product.getName());
                currentProduct.setPrice(product.getPrice());
                currentProduct.setDiscount(product.getDiscount());
                currentProduct.setQuantity(product.getQuantity());
                currentProduct
                        .setCategory(this.productService.handleGetCategoryByName(product.getCategory().getName()));
                currentProduct.setBrand(this.productService.handleGetBrandByName(product.getBrand().getName()));
                this.productService.handleSaveProduct(product);
            }

            return "redirect:/admin/product";
        } catch (Exception e) {
            productBindingResult.reject("error.general", "An error occurred while processing your request.");
            return "admin/product/update";
        }
    }

    @GetMapping("/admin/product/delete/{id}")
    public String getDeleteProductPage(Model model, @PathVariable long id) {
        model.addAttribute("product", new Product());
        return "admin/product/delete";
    }

    @PostMapping("/admin/product/delete")
    public String postDeleteProduct(Model model, @ModelAttribute("product") Product product) {

        Product currentProduct = this.productService.handleGetProductById(product.getId()).get();

        this.productImageService.handleDeleteProductImage(currentProduct.getId());
        this.productService.handleDeleteProductById(product.getId());
        return "redirect:/admin/product";
    }

}
