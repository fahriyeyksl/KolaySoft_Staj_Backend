package com.example.fatura.service;

import com.example.fatura.entities.Color;
import com.example.fatura.repository.ColorRepository;
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
        // Veritabanındaki tüm renkleri al
        List<Color> colors = colorRepository.findAll();
        // Renk listesi boşsa 204 No Content döndür
        if (colors.isEmpty()) {
            return ResponseEntity.noContent().build();
        }
        // Renk listesi varsa 200 OK döndür
        return ResponseEntity.ok(colors);
    }
}
