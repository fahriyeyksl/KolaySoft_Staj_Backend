package com.example.fatura.repository;

import com.example.fatura.entities.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Integer> {

    boolean existsByCompanyEmail(String email);
    boolean existsByCompanyEmailAndCompanyPassword(String email, String password);
    Customer findByCompanyEmailAndCompanyPassword(String email, String password);
    Customer findByCompanyId(int companyId);
    boolean existsByCompanyEmailAndCompanyId(String email, int id);
    //Müşteriyi Email ile bulma
    Customer findByCompanyEmail(String customerEmail);



}
