package com.example.fatura.core.ultitieds.result;

import com.example.fatura.dataAccess.CustomerRepository;
import com.example.fatura.entities.Customer;
import com.example.fatura.securityConfig.PasswordConfig;

public class ExistByResult {
    private CustomerRepository customerRepository;
    private final PasswordConfig passwordEncoder;

    public ExistByResult(PasswordConfig passwordEncoder) {
        this.passwordEncoder = passwordEncoder;
    }

    //Mail adresi kayıtlı mı değil mi kontrol et
    public Result existByMail(Customer customer) {
        if(customerRepository.existsByCompanyEmail(customer.getCompanyEmail())){
            return new ErrorResult("Mail already exists");
        }
        else {

            return new SuccesResult("Customer added");
        }
    }
}
