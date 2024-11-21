package com.example.fatura.service;
import com.example.fatura.FileUtils.XmlUtil;
import org.apache.tomcat.util.http.fileupload.ByteArrayOutputStream;
import org.springframework.core.io.ClassPathResource;
import org.springframework.http.*;
import org.springframework.stereotype.Service;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import javax.xml.XMLConstants;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import java.io.*;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Map;

import static com.example.fatura.FileUtils.OtherUtils.updateText;
import static com.example.fatura.FileUtils.OtherUtils.updateCss;
import static com.example.fatura.FileUtils.XsltUtil.getXslt;

@Service
public class FileServiceImp implements FileService {


    @Override
    //giriş/ çıkış hataları veya xslt dönüşüm hataları fırlatabilir
    public ResponseEntity<byte[]> getInvoiceByte() throws IOException, TransformerException {
        // XSLT dosyasının yolunu belirtiyoruz
        Path xsltPath = Paths.get("C:\\Users\\Fahri\\IdeaProjects\\KolaySoftFatura\\backend\\fatura-master\\src\\main\\resources\\static\\billXslt.xslt");
        Path xmlPath = Paths.get("C:\\Users\\Fahri\\IdeaProjects\\KolaySoftFatura\\backend\\fatura-master\\src\\main\\resources\\static\\bill.xml");
        // XSLT ve XML dosyalarını okuyor ve string olarak saklıyoruz
        String xslt = new String(Files.readAllBytes(xsltPath), StandardCharsets.UTF_8);
        String xml = new String(Files.readAllBytes(xmlPath),StandardCharsets.UTF_8);


        TransformerFactory transformerFactory = TransformerFactory.newInstance(); //Xslti dönüşümü için transformerFactory oluşturuyoruz
        transformerFactory.setFeature(XMLConstants.FEATURE_SECURE_PROCESSING, true);

        StringReader xsltReader = new StringReader(xslt);  // Xslt içeriğini okuyacak StringReader oluşturulur
        StreamSource xsltSource = new StreamSource(xsltReader);  //StringReader kullanarak bir streamSource oluşturulur ve bu xslt dosyasının kaynak olarak kullanılmasını sağlar

        Transformer transformer = transformerFactory.newTransformer(xsltSource); //Xslti dönüşümünü gerçekleştirmek için oluşturulur

        StringReader xmlReader = new StringReader(xml); //Xml içeriğini okuyacak StringReader oluşturulur
        StreamSource xmlSource = new StreamSource(xmlReader); // Xml içeriğini StreamSource nesnesi olarak sarar ve bu xml verisini kaynak olarak kullanılmasını sağlar


        ByteArrayOutputStream outputStream = new ByteArrayOutputStream(); //Dönüştürülen HTML içeriğini saklamak için ByteArrayOutputStream nesnesi oluşturuypruz
        try (OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, StandardCharsets.UTF_8)) {
            StreamResult outputStreamResult = new StreamResult(outputStreamWriter); //Dönüşüm sonucunu yazmaj için StreamResult nesnesi oluşturuyoruz
            transformer.transform(xmlSource, outputStreamResult); //XML kaynağını XSLT ile dönüştürüyoruz ve sonucu outputStreamResult a yazıyoruz
        }


        byte[] responseBytes = outputStream.toByteArray(); //ByteArrayOutputStream içeriğini bir byte dizisine dönüştürüyoruz


        HttpHeaders headers = new HttpHeaders(); //Yanıt başlıkları için HttpHeaders nesnesi oluşturuyoruz
        headers.setContentType(MediaType.TEXT_HTML); //İçeriğin MIME türünü text/html olarak ayarlıyoruz
        headers.setContentDispositionFormData("attachment", "invoice.html"); //Yanıtın bir dosya olarak indirilmesini sağlıyoruz


        headers.setCacheControl(CacheControl.noCache()); //Tarayıcının ön belleğini temizleyerek her seferinde yeni bir yanıt olmasını sağlar

        return new ResponseEntity<>(responseBytes, headers, HttpStatus.OK);
    }


    @Override
    public ResponseEntity<?> uppdateXslt(Map<String, List<Double>> positionMap) {
        try {
            String xslt = getXslt(); // XSLT dosyasını alıyoruz

            // XSLT içeriğini Document nesnesine dönüştür
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            factory.setNamespaceAware(true);
            DocumentBuilder builder = factory.newDocumentBuilder();
            Document document = builder.parse(new ByteArrayInputStream(xslt.getBytes(StandardCharsets.UTF_8)));

            // CSS stilini güncelle
            NodeList styleNodes = document.getElementsByTagName("style");
            for (int i = 0; i < styleNodes.getLength(); i++) {
                Node styleNode = styleNodes.item(i);
                if (styleNode.getNodeType() == Node.ELEMENT_NODE) {
                    //System.out.println(cssContent);

                    for (Map.Entry<String, List<Double>> entry : positionMap.entrySet()) {
                        Element styleElement = (Element) styleNode;
                        String cssContent = styleElement.getTextContent(); // Mevcut CSS içeriğini alıyoruz
                        String cssSelector = "#"+ entry.getKey();
                        List<Double> positions = entry.getValue();

                            // İlk double değerlerini al
                            double logoPositionX = positions.get(0); // X pozisyonu

                            double logoPositionY = positions.get(1); // Y pozisyonu
                            // Yeni top ve left değerlerini oluştur
                            String newTop = String.format("top: %spx;", logoPositionY);
                            String newLeft = String.format("left: %spx;", logoPositionX);

                            // CSS içeriğini güncelle
                            cssContent = updateCss(cssContent, cssSelector, newTop, newLeft);// Güncellenmiş içeriği atıyoruz
                           styleElement.setTextContent(cssContent); // Güncellenmiş CSS içeriğini yaz

                    }
                }
            }

            // Güncellenmiş CSS içeriğini dosyaya yaz
            Path filePath = Paths.get("C:\\Users\\Fahri\\IdeaProjects\\KolaySoftFatura\\backend\\fatura-master\\src\\main\\resources\\static\\billXslt.xslt"); // Güncellenmiş Css içeriğini yazmak için dosya yolunu belirtiyoruz
            try (BufferedWriter writer = new BufferedWriter(new FileWriter(filePath.toFile()))) {
                TransformerFactory transformerFactory = TransformerFactory.newInstance();
                Transformer transformer = transformerFactory.newTransformer();
                DOMSource source = new DOMSource(document);
                StreamResult result = new StreamResult(writer);
                transformer.transform(source, result);
            }

            return ResponseEntity.ok("XSLT updated successfully.");
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error updating XSLT.");
        }
    }



    @Override
    public ResponseEntity<?> updateXsltCss(Map<String, Map<String, String>> styleMap) {
        try{
            String xslt = getXslt();
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            factory.setNamespaceAware(true);
            DocumentBuilder builder = factory.newDocumentBuilder();
            Document document = builder.parse(new ByteArrayInputStream(xslt.getBytes(StandardCharsets.UTF_8)));
            NodeList styleNodes = document.getElementsByTagName("style");
            for(int i= 0; i< styleNodes.getLength(); i++){
                Node styleNode = styleNodes.item(i);
                if (styleNode.getNodeType() == Node.ELEMENT_NODE) {
                    for(Map.Entry<String, Map<String, String>> entry : styleMap.entrySet()){
                        Element styleElement = (Element) styleNode;
                        String cssContent = styleElement.getTextContent();
                        String  cssID = "#" +  entry.getKey();
                        System.out.println("TABLE ID: " + cssID);
                        Map<String,String> object = entry.getValue();
                        for (Map.Entry<String, String> styles : object.entrySet()) {
                            String styleName = styles.getKey().toLowerCase(); // Stil isimlerini küçük harfe çevirip kontrol edebilirsiniz
                            String styleValue = styles.getValue();

                            if (styleName.equals("fontsize") && styleValue != null) {
                                cssContent = updateText(cssContent, cssID, "font-size", styleValue);
                                styleElement.setTextContent(cssContent);
                            }
                            if (styleName.equals("fontfamily") && styleValue != null) {
                                cssContent = updateText(cssContent, cssID, "font-family", styleValue);
                                styleElement.setTextContent(cssContent);
                            }
                            if (styleName.equals("color") && styleValue != null) {
                                cssContent = updateText(cssContent, cssID, styleName, styleValue);
                                styleElement.setTextContent(cssContent);
                            }
                            if (styleName.equals("fontweight") && styleValue != null) {
                                cssContent = updateText(cssContent, cssID, "font-weight", styleValue);
                                styleElement.setTextContent(cssContent);
                            }
                            if (styleName.equals("top") && styleValue != null) {
                                cssContent = updateText(cssContent, cssID, styleName, styleValue);
                                styleElement.setTextContent(cssContent);
                            }
                            if (styleName.equals("left") && styleValue != null) {
                                cssContent = updateText(cssContent, cssID, styleName, styleValue);
                                styleElement.setTextContent(cssContent);
                            }
                            if (styleName.equals("fontstyle") && styleValue != null) {
                                cssContent = updateText(cssContent, cssID, "font-style", styleValue);
                                styleElement.setTextContent(cssContent);
                            }
                            if(styleName.equals("width") && styleValue != null) {
                                cssContent = updateText(cssContent, cssID, "width", styleValue);
                                System.out.println(styleName);
                                System.out.println(styleValue);
                                styleElement.setTextContent(cssContent);
                            }
                            if(styleName.equals("height") && styleValue != null) {
                                cssContent = updateText(cssContent, cssID, "height", styleValue);
                                styleElement.setTextContent(cssContent);
                            }
                        }

                    }
                }
            }
            Path filePath = Paths.get("C:\\Users\\Fahri\\IdeaProjects\\KolaySoftFatura\\backend\\fatura-master\\src\\main\\resources\\static\\billXslt.xslt"); // Güncellenmiş XSLT içeriğini yazmak için dosya yolunu belirtiyoruz
            try (BufferedWriter writer = new BufferedWriter(new FileWriter(filePath.toFile()))) {
                TransformerFactory transformerFactory = TransformerFactory.newInstance();
                Transformer transformer = transformerFactory.newTransformer();
                DOMSource source = new DOMSource(document);
                StreamResult result = new StreamResult(writer);
                transformer.transform(source, result);
            }

            return ResponseEntity.ok("XSLT updated successfully.");
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error updating XSLT.");
        }
    }


    @Override
    public ResponseEntity<?> showXslt() {
        try {
            // XML ve XSLT dosyalarının yollarını belirtin
            ClassPathResource xmlFile = new ClassPathResource("static/bill.xml");
            Path xsltPath = Paths.get("C:\\Users\\Fahri\\IdeaProjects\\KolaySoftFatura\\backend\\fatura-master\\src\\main\\resources\\static\\billXslt.xslt");

            // Dosyaların gerçekten yüklendiğini kontrol edin
            if (!xmlFile.exists() || !Files.exists(xsltPath)) {
                return new ResponseEntity<>("XML or XSLT file not found", HttpStatus.NOT_FOUND);
            }

            // XSLT dosyasını oku
            String xsltContent = new String(Files.readAllBytes(xsltPath), StandardCharsets.UTF_8);

            // TransformerFactory ve Transformer'ı başlatın
            TransformerFactory transformerFactory = TransformerFactory.newInstance();
            StringReader xsltReader = new StringReader(xsltContent);
            Transformer transformer = transformerFactory.newTransformer(new StreamSource(xsltReader));

            // StringWriter ile sonucu yakalayın
            StringWriter writer = new StringWriter();
            transformer.transform(new StreamSource(xmlFile.getInputStream()), new StreamResult(writer));

            // HTML çıktısını alın
            String htmlOutput = writer.toString();

            // HTML çıktısını ResponseEntity ile döndürün
            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.TEXT_HTML);
            return new ResponseEntity<>(htmlOutput, headers, HttpStatus.OK);

        } catch (TransformerConfigurationException e) {
            // XSLT dosyası ile ilgili hata olabilir
            return new ResponseEntity<>("XSLT File Error: " + e.getMessage(), HttpStatus.INTERNAL_SERVER_ERROR);
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<>("Error processing XSLT: " + e.getMessage(), HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }



}