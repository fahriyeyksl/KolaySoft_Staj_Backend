package com.example.fatura.service;

import com.example.fatura.core.ultitieds.result.Result;
import com.example.fatura.entities.Customer;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public interface CustomerService {

    //Müşterileri listelemek için
    ResponseEntity<List<Customer>> getAll();

    //Müşterileri eklemek için
    ResponseEntity<Result> add(Customer customer);

    //Müşteri login
    ResponseEntity<Result> login(String customerEmail, String customerPassword);

    //Müşteri hesap silme
    ResponseEntity<Result> deleteaccount(String customerEmail, String customerPassword);

}
