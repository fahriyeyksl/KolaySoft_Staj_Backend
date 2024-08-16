package com.example.fatura.service;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import javax.xml.transform.TransformerException;
import java.io.IOException;

@Service
public interface FileService {

    ResponseEntity<?> getInvoiceByte() throws IOException, TransformerException;
    ResponseEntity<?> uppdateXslt(double logoPositionX,double logoPositionY);
}
