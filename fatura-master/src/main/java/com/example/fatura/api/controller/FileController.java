package com.example.fatura.api.controller;

import com.example.fatura.service.FileService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.xml.transform.TransformerException;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/filecontroller")
public class FileController {

    private FileService fileService;

    public FileController(FileService fileService) {
        this.fileService = fileService;
    }
    @GetMapping("dowloadXslt")
    public ResponseEntity<?> dowloadXslt() throws IOException, TransformerException {
        return this.fileService.dowloadXslt();
    }
    @PostMapping(value = "/updateXsltCss")
    public ResponseEntity<?> updateXsltCss(@RequestBody Map<String, Map<String, String>> styleMap) {
        return this.fileService.updateXsltCss(styleMap);
    }

    @GetMapping("/showXsltDowloadPage")
    public ResponseEntity<?> showXslt() {
        return this.fileService.showXslt();
    }


}
