package com.example.fatura.service;


import com.example.fatura.core.ultitieds.result.*;
import com.example.fatura.repository.CustomerRepository;
import com.example.fatura.entities.Customer;
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
    public ResponseEntity<Result> login(@RequestParam String customerEmail,@RequestParam String customerPassword) {
        try {
            Customer loginCustomer = customerRepository.findByCompanyEmail("info@kolaysoft.com.tr");
            if (loginCustomer != null && passwordEncoder.matches(customerPassword, loginCustomer.getCompanyPassword())){
                return new ResponseEntity<>(new  SuccesResult("Giriş başarılı." ), HttpStatus.OK);
            }
            else {
                return new ResponseEntity<>(new  ErrorResult("Email veya şifre hatalı!" ), HttpStatus.UNAUTHORIZED); //Kimlik doğrulama başarısız ise 401 Unauthorized döndürüyoruz.
            }
        }catch (Exception e){
            return new ResponseEntity<>(new ErrorResult("Oturum açılma sırasında beklenmeyen bir hata oluştu" ), HttpStatus.INTERNAL_SERVER_ERROR); //Sunucuda bir hata oluşursa 500 INTERNAL_SERVER_ERROR hatası döndürüyoruz.
        }

    }

    @Override
    public ResponseEntity<Result> deleteaccount(String customerEmail, String customerPassword) {
        try {
            //Müşteriyi email adresine göre buluyoruz.
            Customer deleteCustomer = customerRepository.findByCompanyEmail(customerEmail);

            //Müşterinin şifresi doğru ve müşteri null değil ise hesabını siliyoruz.
            if (deleteCustomer != null && passwordEncoder.matches(customerPassword, deleteCustomer.getCompanyPassword())){
                customerRepository.delete(deleteCustomer);
                return new ResponseEntity<>(new  SuccesResult("Müşteri başarıyla silindi."), HttpStatus.OK);
            }
            else {
                //Müşteri bulunamaz veya şifre eşleşmezse hatayı döndürüyoruz.
                return new ResponseEntity<>(new  ErrorResult("Müşteri silinirken bir hata oluştu."), HttpStatus.UNAUTHORIZED);
            }
        }catch (Exception e){
            //Beklenmeyen bir durum olursa
            return new ResponseEntity<>(new ErrorResult("Beklenmeyen bir hata oluştu."), HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }



}
