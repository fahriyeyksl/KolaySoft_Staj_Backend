package com.example.fatura.FileUtils;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.Base64;

public class OtherUtils {

    public static String encodeFileToBase64(String filePath) throws IOException {
        File file = new File(filePath);
        byte[] fileContent = Files.readAllBytes(file.toPath());
        return Base64.getEncoder().encodeToString(fileContent);
    }
    public static String updateCss(String cssContent, String selector, String newTop, String newLeft) {
        StringBuilder updatedCss = new StringBuilder();
        boolean inSelector = false;
        boolean topUpdated = false;
        boolean leftUpdated = false;
        String[] lines = cssContent.split("\\n");
        for (String line : lines) {
            if (line.trim().startsWith(selector )) {
                inSelector = true;
                updatedCss.append(selector).append(" {\n");
            } else if (inSelector && line.trim().endsWith("}")) {
                if (!topUpdated) {
                    updatedCss.append("    ").append(newTop).append("\n");
                }
                if (!leftUpdated) {
                    updatedCss.append("    ").append(newLeft).append("\n");
                }
                updatedCss.append(line).append("\n");
                inSelector = false;
            } else if (inSelector && line.trim().startsWith("top:")) {
                // İlk top ifadesini güncelle
                if (!topUpdated) {
                    updatedCss.append("    ").append(newTop).append("\n");
                    topUpdated = true;
                }
            } else if (inSelector && line.trim().startsWith("left:")) {
                // İlk left ifadesini güncelle
                if (!leftUpdated) {
                    updatedCss.append("    ").append(newLeft).append("\n");
                    leftUpdated = true;
                }
            } else {
                updatedCss.append(line).append("\n");
            }
        }

        return updatedCss.toString();
    }
    public static String updateText(String cssContent, String cssID, String objectKeys, String objectValue) {
        StringBuilder updateCss = new StringBuilder();
        boolean inSelector = false;
        boolean styleUpdated = false;
        String[] lines = cssContent.split("\\n");

        for (String line : lines) {

            if (line.trim().startsWith(cssID + " {")) {
                System.out.println(cssID );
                inSelector = true;
                updateCss.append(line).append("\n"); 
            } else if (inSelector && line.trim().endsWith("}")) {
                if (!styleUpdated) {
                    updateCss.append(objectKeys).append(":").append(objectValue).append(";\n");
                }
                updateCss.append(line).append("\n");
                inSelector = false;
            } else if (inSelector && line.trim().startsWith(objectKeys + ":")) {

                updateCss.append(objectKeys).append(":").append(objectValue).append(";\n");

                styleUpdated = true;
            } else {

                updateCss.append(line).append("\n");
            }
        }


        if (!inSelector && !styleUpdated) {
            updateCss.append(cssID).append(" {").append("\n")
                    .append("    ").append(objectKeys).append(": ").append(objectValue).append(";\n")
                    .append("}\n");
        }
        return updateCss.toString();
    }



}
