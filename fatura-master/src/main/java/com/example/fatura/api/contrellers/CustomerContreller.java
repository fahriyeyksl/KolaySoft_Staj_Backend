package com.example.fatura.api.contrellers;


import com.example.fatura.business.abstracts.CustomerService;
import com.example.fatura.core.ultitieds.result.DataResult;
import com.example.fatura.core.ultitieds.result.Result;
import com.example.fatura.entities.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/customer")
public class CustomerContreller {

    private CustomerService customerService;


    @Autowired
    public CustomerContreller(CustomerService customerService) {
        this.customerService = customerService;
    }

    @GetMapping("/getall")
    public DataResult<List<Customer>> getAll(){
        return this.customerService.getAll();
    }

    @PostMapping("/add")
    @CrossOrigin(origins = "http://localhost:5173")
    public Result addCustomer(@RequestBody Customer customer) {

        return this.customerService.add(customer);
    }

    @PostMapping("/login")
    public Result login( String customerEmail,  String customerPassword) {
        return this.customerService.login(customerEmail, customerPassword);
    }

    @PostMapping("/deleteaccount")
    public Result deleteaccount(@RequestParam String customerEmail, @RequestParam String customerPassword) {
        return this.customerService.deleteaccount(customerEmail, customerPassword);
    }
}
