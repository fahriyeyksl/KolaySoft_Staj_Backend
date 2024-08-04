package com.example.fatura.dataAccess;

import com.example.fatura.entities.Customer;
import org.springframework.data.jpa.repository.JpaRepository;


//Customer için veri erişimi sağlanacak

public interface CustomerDao extends JpaRepository<Customer, Integer> {
    boolean existsByCompanyEmail(String email);
    boolean existsByCompanyEmailAndCompanyPassword(String email, String password);
}
