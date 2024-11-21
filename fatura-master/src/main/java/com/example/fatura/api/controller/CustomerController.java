package com.example.fatura.api.contrellers;


import com.example.fatura.service.CustomerService;
import com.example.fatura.core.ultitieds.result.Result;
import com.example.fatura.entities.Customer;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/customer")
public class CustomerController {

    private final CustomerService customerService;



    public CustomerController(CustomerService customerService  ) {

        this.customerService = customerService;

    }

    @GetMapping("/getall")
    public ResponseEntity<List<Customer>> getAll(){
        return this.customerService.getAll();
    }

    @PostMapping("/add")
    @CrossOrigin(origins = "http://localhost:5173") //Bu kökenden gelen istekleri kabul etmesi için.
    public ResponseEntity<Result> addCustomer(@RequestBody Customer customer) {
        return this.customerService.add(customer);
    }

    @PostMapping("/login")
    @CrossOrigin(origins = "http://localhost:5173")
    public ResponseEntity<Result> login( String customerEmail,  String customerPassword) {
        return this.customerService.login(customerEmail, customerPassword);
    }

    @PostMapping("/deleteaccount")
    public ResponseEntity<Result> deleteaccount(@RequestParam String customerEmail, @RequestParam String customerPassword) {
        return this.customerService.deleteaccount(customerEmail, customerPassword);
    }


}

