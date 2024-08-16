package com.example.fatura.FileUtils;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

public class XsltUtil {
    public static String getXslt() throws IOException {
        try {
            // Dosya yolunu belirtiyorsunuz -- Her çağırıldığında yeniden okuma yapmasını istiyoruz ki güncellemeleri alalım
            Path path = Paths.get("C:\\Users\\Fahri\\IdeaProjects\\KolaySoftFatura\\backend\\fatura-master\\src\\main\\resources\\static\\billXslt.xslt");
            // Dosyayı her seferinde diskten okuyor
            return new String(Files.readAllBytes(path), StandardCharsets.UTF_8);
        } catch (Exception e) {
            e.printStackTrace();
            return "Beklenmeyen bir hata oluştu.";
        }
    }
}
