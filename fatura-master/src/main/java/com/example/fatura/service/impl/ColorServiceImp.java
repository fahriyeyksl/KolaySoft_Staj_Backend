package com.example.fatura.service.impl;

import com.example.fatura.entities.Color;
import com.example.fatura.repository.ColorRepository;
import com.example.fatura.service.ColorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ColorServiceImp implements ColorService {

    private final ColorRepository colorRepository;

    @Autowired
    public ColorServiceImp(ColorRepository colorRepository) {
        this.colorRepository = colorRepository;
    }

    @Override
    public ResponseEntity<List<Color>> getAllColors() {
        List<Color> colors = colorRepository.findAll();
        if (colors.isEmpty()) {
            return ResponseEntity.noContent().build();
        }
        return ResponseEntity.ok(colors);
    }
}
