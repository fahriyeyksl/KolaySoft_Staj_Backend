package com.example.fatura.service;

import com.example.fatura.entities.Color;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ColorService {
    ResponseEntity<List<Color>> getAllColors();
}
