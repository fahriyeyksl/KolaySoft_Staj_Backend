package com.example.fatura.service;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import javax.xml.transform.TransformerException;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@Service
public interface FileService {

    ResponseEntity<?>  dowloadXslt() throws IOException, TransformerException;
    ResponseEntity<?> updateXsltCss(Map<String, Map<String, String>> styleMap);

    ResponseEntity<?> showXslt();
}