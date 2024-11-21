package com.example.fatura.api.contrellers;

import com.example.fatura.service.ColorService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/colorcontroller")

public class ColorController {
    private final ColorService colorService;
    public ColorController(ColorService colorService) {
        this.colorService = colorService;
    }
    @GetMapping("/getallColors")
    public ResponseEntity<?> getAllColors() {
        return this.colorService.getAllColors();
    }
}
