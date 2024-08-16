package com.example.fatura.FileUtils;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.Base64;

public class OtherUtils {

    //Logo değişmesi istenilirse
    public static String encodeFileToBase64(String filePath) throws IOException {
        File file = new File(filePath);
        byte[] fileContent = Files.readAllBytes(file.toPath());
        return Base64.getEncoder().encodeToString(fileContent);
    }
    public static String updateCss(String cssContent, String selector, String newTransform) {
        StringBuilder updatedCss = new StringBuilder();
        boolean inSelector = false;
        boolean transformUpdated = false;

        String[] lines = cssContent.split("\\n");

        for (String line : lines) {
            if (line.trim().startsWith(selector)) {
                inSelector = true;
                updatedCss.append(selector).append(" {\n");
            } else if (inSelector && line.trim().endsWith("}")) {
                if (!transformUpdated) {
                    // Eğer transform henüz güncellenmediyse, yeni transform değerini ekle
                    updatedCss.append("    ").append(newTransform).append("\n");
                    transformUpdated = true;
                }
                updatedCss.append(line).append("\n");
                inSelector = false;
            } else if (inSelector && line.trim().startsWith("transform:")) {
                // Sadece ilk transform ifadesini güncelle
                if (!transformUpdated) {
                    updatedCss.append("    ").append(newTransform).append("\n");
                    transformUpdated = true;
                }
            } else {
                updatedCss.append(line).append("\n");
            }
        }

        return updatedCss.toString();
    }
}
