package com.example.fatura.config;

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
                .antMatchers("/api/customer/**", "/api/product/**").permitAll() //Eklenen apiler için tek tek izin vermemek için.
                .antMatchers("/api/filecontroller/**").permitAll()
                .anyRequest().authenticated()

                .and()
                .csrf().disable();
    }
}
