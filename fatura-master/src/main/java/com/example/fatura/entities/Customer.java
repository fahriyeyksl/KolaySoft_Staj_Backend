package com.example.fatura.entities;


import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;


@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name="company")
@Entity
public class Customer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "company_id")
    private int companyId;

    @Column(name = "company_email")
    @NotBlank(message = "Email is mandatory")
    private String companyEmail;

    @Column(name = "company_name")
    @NotBlank(message = "Company Name is mandatory")
    private String companyName;

    @Column(name = "company_password")
    @NotBlank(message = "Company Password is mandatory")
    private String companyPassword;

    @Column(name = "company_phone")
    @NotBlank(message = "Company Phone is mandatory")
    private String companyPhone;

    @Column(name = "company_address")
    @NotBlank(message = "Company Address is mandatory")
    private String companyAddress;

    @Lob
    @Schema(type = "string", format = "byte")
    @Column(name = "company_logo")
    private String company_logo;




}
