package com.example.fatura.business.abstracts;

import com.example.fatura.core.ultitieds.result.DataResult;
import com.example.fatura.core.ultitieds.result.Result;
import com.example.fatura.dataAccess.CustomerRepository;
import com.example.fatura.entities.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public interface CustomerService {

    //Müşterileri listelemek için
    DataResult<List<Customer>> getAll();

    //Müşterileri eklemek için
    Result add(Customer customer);

    //Müşteri login
    Result login(String customerEmail, String customerPassword);

    //Müşteri hesap silme
    Result deleteaccount(String customerEmail, String customerPassword);

}
