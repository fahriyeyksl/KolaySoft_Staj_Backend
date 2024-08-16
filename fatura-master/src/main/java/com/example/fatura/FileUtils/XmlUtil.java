package com.example.fatura.FileUtils;

import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

public class XmlUtil {
    public static String getXml() throws IOException {
        Resource resource = new ClassPathResource("static/bill.xml");
        try (InputStream inputStream = resource.getInputStream();
             BufferedReader reader = new BufferedReader(new InputStreamReader(inputStream))) {
            StringBuilder xmlContent = new StringBuilder();
            String line;
            while ((line = reader.readLine()) != null) {
                xmlContent.append(line).append(System.lineSeparator());
            }
            return xmlContent.toString();
        }
    }
}
