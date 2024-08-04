package com.example.fatura.business.concretes;

import com.example.fatura.business.abstracts.CustomerService;
import com.example.fatura.core.ultitieds.result.*;
import com.example.fatura.dataAccess.CustomerDao;
import com.example.fatura.dataAccess.CustomerRepository;
import com.example.fatura.entities.Customer;
import com.example.fatura.securityConfig.PasswordConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;

@Service //Spring Framework'te  servis katmanını işaretliyoruz
public class CustomerManager implements CustomerService {
    private final PasswordConfig passwordEncoder;

    private CustomerDao customerDao;

    private CustomerRepository customerRepository;

    @Autowired //CustomerService interface bağımlı olduğunu belli etmek için
    public CustomerManager(CustomerDao customerDao, CustomerRepository customerRepository, PasswordConfig passwordEncoder ) {
        this.customerDao = customerDao;
        this.customerRepository = customerRepository;
        this.passwordEncoder = passwordEncoder;
    }

    @Override
    public DataResult<List<Customer>> getAll() {
        return new SuccesDataResult<List<Customer>>
                (customerDao.findAll(),"Data listelendi");
    }

    @Override
    public Result add(Customer customer) {
        if (customerRepository.existsByCompanyEmail(customer.getCompanyEmail())){
            return new ErrorResult("Bu e-posta adresi zaten kayıtlı.");
        }else {
            // Müşterinin girdiği şifreyi hashle
            String hashPassword = passwordEncoder.passwordEncoder().encode(customer.getCompanyPassword());
            customer.setCompanyPassword(hashPassword);

            //Müşteriyi kaydet
            this.customerDao.save(customer);
            return new SuccesResult("Müşteri başarıyla eklendi.");
        }

    }

    @Override
    public Result login(String customerEmail, String customerPassword) {
        if (customerRepository.existsByCompanyEmailAndCompanyPassword(customerEmail, customerPassword)){
            return new SuccesResult("Giriş başarılı");
        }
        else {
            return new ErrorResult("E-posta veya şifre hatalı");
        }
    }

    @Override
    public Result deleteaccount(String customerEmail, String customerPassword) {
        if(customerRepository.existsByCompanyEmailAndCompanyPassword(customerEmail, customerPassword)){
            Customer findByCustomer = customerRepository.findByCompanyEmailAndCompanyPassword(customerEmail,customerPassword);
            //Müştteriyi sil
            customerRepository.delete(findByCustomer);
            return new SuccesResult("Hesap başarıyla silindi");
        }
        else {
            return new ErrorResult("E-posta veya şifre hatalı");
        }
    }


}
