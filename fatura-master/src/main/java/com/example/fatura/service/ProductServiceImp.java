package com.example.fatura.service;

import com.example.fatura.core.ultitieds.result.*;
import com.example.fatura.repository.CustomerRepository;
import com.example.fatura.repository.ProductRepository;
import com.example.fatura.entities.Product;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;

import java.util.List;

@Service
public class ProductServiceImp implements ProductService {


    private final ProductRepository productRepository;

    private final CustomerRepository customerRepository;

    public ProductServiceImp(ProductRepository productDao, CustomerRepository customerRepository) {
        this.productRepository = productDao;
        this.customerRepository = customerRepository;
    }

    @Override
    public ResponseEntity<Result> addProduct(@RequestBody  Product product) {
        try {
            //Şirketin veritabanında var olup olmadığınnı kontrol et
            if (customerRepository.findByCompanyId(product.getCompanyId()) != null) {
                //Şirket başarıyla bulunursaa kaydet ve kaydedildi mesajını döndür
                productRepository.save(product);
                return new ResponseEntity<>(new SuccesResult("Ürün başarıyla kaydedildi."), HttpStatus.OK);
            } else {
                //Şirket bulunamazsa
                return new ResponseEntity<>(new ErrorResult("Geçersiz email"), HttpStatus.BAD_REQUEST);
            }
        } catch (Exception e) {
            //Beklenmeyen hatalar için
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @Override
    public ResponseEntity<List<Product>> getAllProducts() {
        try {
            List<Product> products = productRepository.findAll();
            if (products.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }
            return new ResponseEntity<>(products, HttpStatus.OK);
        }catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }

    }

    @Override
    public ResponseEntity<List<Product>> getProductsByCompanyId(int companyId) {
        try {
            //Müşterinin Id adresine göre ürünlerini bul.
            List<Product> products = productRepository.findByCompanyId(companyId);
            if (products.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }
            return new ResponseEntity<>(products, HttpStatus.OK);
        }catch (Exception e) {
            return new  ResponseEntity<>(null,HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }


}
