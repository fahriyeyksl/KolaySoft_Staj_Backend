package com.example.fatura.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {
    public void  addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/**")
                .allowedOrigins("http://localhost:5173") //Bu kökenden gelen istekleri kabul etmesi için.
                .allowedMethods("GET","POST","PUT","DELETE","OPTIONS") // İzin verilen HTTP methodları.
                .allowedHeaders("*")
                .allowCredentials(true);
    }
}
