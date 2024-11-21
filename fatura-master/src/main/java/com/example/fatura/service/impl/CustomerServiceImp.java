package com.example.fatura.service.impl;


import com.example.fatura.core.ultitieds.result.*;
import com.example.fatura.repository.CustomerRepository;
import com.example.fatura.entities.Customer;
import com.example.fatura.service.CustomerService;
import com.example.fatura.service.ProductService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import java.util.List;

@Service //Spring Framework'te  servis katmanını işaretliyoruz
public class CustomerServiceImp implements CustomerService {
    private final BCryptPasswordEncoder passwordEncoder;
    private final CustomerRepository customerRepository;
    private final ProductService productService;


    public CustomerServiceImp(CustomerRepository customerRepository, ProductService productService) {
        this.productService = productService;
        this.passwordEncoder = new BCryptPasswordEncoder(); //Şifreyi hashlemek için BCryptPasswordEncoder nesnesi oluşturuyoruz.
        this.customerRepository = customerRepository;

    }

    @Override
    public ResponseEntity<List<Customer>> getAll() { //ResponseEntity ile HTTP yanıtlarını döndürmek için kullanıyoruz
        try{
            List<Customer> customers = customerRepository.findAll();
            if(customers.isEmpty()){
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);

            }
            return new ResponseEntity<>(customers, HttpStatus.OK);
        }catch (Exception e){
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }

    }

    @Override
    public ResponseEntity<Result> add(@NotBlank @RequestBody @Valid Customer customer) {
      try {
          if(!customerRepository.existsByCompanyEmail(customer.getCompanyEmail())){
              //Şifreyi hashle
              String hashedPassword = passwordEncoder.encode(customer.getCompanyPassword());
              customer.setCompanyPassword(hashedPassword);
              //Müşteriyi kaydet
              Customer savedCustomer = customerRepository.save(customer);
              return new ResponseEntity<>(new SuccesResult("Müşteri başarıyla kaydedildi."), HttpStatus.OK);
          } else  {
              return new ResponseEntity<>(new ErrorResult("Bu mail adresi zaten kayıtlı."), HttpStatus.CONFLICT); //409 conflict
          }
      }catch (Exception e){
          return new ResponseEntity<>(new ErrorResult("Müşteri kaydedilirken bir sorun oluştu. "), HttpStatus.INTERNAL_SERVER_ERROR);
      }


    }

    @Override
    public ResponseEntity<Result> login(@RequestParam String customerEmail, @RequestParam String customerPassword) {
        try {
            Customer loginCustomer = customerRepository.findByCompanyEmail(customerEmail);
            if (loginCustomer == null) {
                System.out.println("Kullanıcı bulunamadı: " + customerEmail);
                return new ResponseEntity<>(new ErrorResult("Email veya şifre hatalı!"), HttpStatus.UNAUTHORIZED);
            }
            if (!passwordEncoder.matches(customerPassword, loginCustomer.getCompanyPassword())) {
                System.out.println("Şifre uyuşmuyor: " + customerPassword);
                return new ResponseEntity<>(new ErrorResult("Email veya şifre hatalı!"), HttpStatus.UNAUTHORIZED);
            }
            return new ResponseEntity<>(new SuccesResult("Giriş başarılı."), HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace(); // Hata detaylarını görmek için
            return new ResponseEntity<>(new ErrorResult("Oturum açılma sırasında beklenmeyen bir hata oluştu"), HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }


    @Override
    public ResponseEntity<Result> deleteaccount(String customerEmail, String customerPassword) {
        try {
            Customer deleteCustomer = customerRepository.findByCompanyEmail(customerEmail);
            if (deleteCustomer != null && passwordEncoder.matches(customerPassword, deleteCustomer.getCompanyPassword())){
                customerRepository.delete(deleteCustomer);
                return new ResponseEntity<>(new  SuccesResult("Müşteri başarıyla silindi."), HttpStatus.OK);
            }
            else {
                return new ResponseEntity<>(new  ErrorResult("Müşteri silinirken bir hata oluştu."), HttpStatus.UNAUTHORIZED);
            }
        }catch (Exception e){
            return new ResponseEntity<>(new ErrorResult("Beklenmeyen bir hata oluştu."), HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }



}
