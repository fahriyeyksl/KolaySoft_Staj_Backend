package com.example.fatura.securityConfig;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;


@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .authorizeRequests()
                .antMatchers("/swagger-ui/index.html","/swagger-ui.html","/swagger-ui/**","/v2/api-docs/**", "/swagger-resources/**").permitAll()
                .antMatchers("/api/customer/add").permitAll()
                .antMatchers("/api/customer/getall").permitAll()
                .antMatchers("/api/customer/login").permitAll()
                .antMatchers("/api/customer/deleteaccount").permitAll()

                .anyRequest().authenticated()

                .and()
                .csrf().disable();
    }
}
