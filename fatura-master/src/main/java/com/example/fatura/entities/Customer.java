package com.example.fatura.entities;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name="Bill")
@Entity
public class Customer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "company_id")
    private int companyId;

    @Column(name = "company_email")
    private String companyEmail;

    @Column(name = "company_name")
    private String companyName;

    @Column(name = "company_password")
    private String companyPassword;

    @Column(name = "company_phone")
    private String companyPhone;

}
