package com.example.fatura.dataAccess;

import com.example.fatura.core.ultitieds.result.DataResult;
import com.example.fatura.entities.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Long> {

    boolean existsByCompanyEmail(String email);
    boolean existsByCompanyEmailAndCompanyPassword(String email, String password);
    Customer findByCompanyEmailAndCompanyPassword(String email, String password);

}
