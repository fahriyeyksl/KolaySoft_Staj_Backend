package com.example.fatura.service;

import com.example.fatura.core.ultitieds.result.Result;
import com.example.fatura.entities.Customer;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CustomerService {

    ResponseEntity<List<Customer>> getAll();

    ResponseEntity<Result> add(Customer customer);

    ResponseEntity<Result> login(String customerEmail, String customerPassword);

    ResponseEntity<Result> deleteaccount(String customerEmail, String customerPassword);

}
