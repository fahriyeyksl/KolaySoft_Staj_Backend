package com.example.fatura.service;


import com.example.fatura.core.ultitieds.result.Result;
import com.example.fatura.entities.Product;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ProductService {
    ResponseEntity<Result> addProduct(Product product);
    ResponseEntity<List<Product>> getAllProducts();
    ResponseEntity<List<Product>> getProductsByCompanyId(int companyId);
}
