package com.example.fatura.api.contrellers;


import com.example.fatura.service.ProductService;
import com.example.fatura.core.ultitieds.result.Result;
import com.example.fatura.entities.Product;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/product")
public class ProductController {

    private final ProductService productService;

    public ProductController(ProductService productService) {
        this.productService = productService;
    }

    @PostMapping("/addProduct")
    public ResponseEntity<Result> addProduct(@RequestBody Product product) {
        return  this.productService.addProduct(product);
    }

    @GetMapping("/getAllProduct")
    public ResponseEntity<List<Product>> getAllProduct() {
        return this.productService.getAllProducts();
    }

    @GetMapping("/getProductsByCompanyId")
    public ResponseEntity<List<Product>> getProductsByCompanyId(@RequestParam int companyId) {
        return this.productService.getProductsByCompanyId(companyId);
    }
}
