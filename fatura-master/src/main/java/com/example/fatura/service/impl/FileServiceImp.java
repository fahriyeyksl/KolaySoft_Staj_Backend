package com.example.fatura.service.impl;
import com.example.fatura.service.FileService;
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
import java.util.Base64;
import java.util.Map;
import java.util.UUID;

import static com.example.fatura.FileUtils.OtherUtils.updateText;
import static com.example.fatura.FileUtils.XsltUtil.getXslt;

@Service
public class FileServiceImp implements FileService {





    @Override
    public ResponseEntity<?> dowloadXslt() throws IOException, TransformerException {
        try {
            Path xsltPath = Paths.get("C:\\Users\\Fahri\\IdeaProjects\\KolaySoftFatura\\backend\\fatura-master\\src\\main\\resources\\static\\billXslt.xslt");
            ClassPathResource xmlFile = new ClassPathResource("static/bill.xml");
            String xsltContent = new String(Files.readAllBytes((xsltPath)), StandardCharsets.UTF_8);
            String xmlContent = new String(Files.readAllBytes(xmlFile.getFile().toPath()), StandardCharsets.UTF_8);
            TransformerFactory transformerFactory = TransformerFactory.newInstance();
            StringReader xsltReader = new StringReader(xsltContent);
            StreamSource xsltSource = new StreamSource(xsltReader);
            Transformer transformer = transformerFactory.newTransformer(xsltSource);
            StringReader xmlReader = new StringReader(xmlContent);
            StreamSource xmlSource = new StreamSource(xmlReader);
            ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
            try (OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, StandardCharsets.UTF_8)) {
                StreamResult outputStreamResult = new StreamResult(outputStreamWriter);
                transformer.transform(xmlSource, outputStreamResult);
            }
            return new ResponseEntity<byte[]>(outputStream.toByteArray(), HttpStatus.OK);
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<>("Error  XSLT: " + e.getMessage(), HttpStatus.INTERNAL_SERVER_ERROR);
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
                        Map<String,String> object = entry.getValue();
                        for (Map.Entry<String, String> styles : object.entrySet()) {
                            String styleName = styles.getKey().toLowerCase();
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
                                styleElement.setTextContent(cssContent);
                            }
                            if(styleName.equals("height") && styleValue != null) {
                                cssContent = updateText(cssContent, cssID, "height", styleValue);
                                styleElement.setTextContent(cssContent);
                            }
                            if(styleName.equals("bordercolor") && styleValue != null) {
                                cssContent = updateText(cssContent, cssID, "border-color",styleValue);
                                styleElement.setTextContent(cssContent);
                            }
                        }

                    }
                }
            }
            Path filePathXslt = Paths.get("C:\\Users\\Fahri\\IdeaProjects\\KolaySoftFatura\\backend\\fatura-master\\src\\main\\resources\\static\\billXslt.xslt");
            try (BufferedWriter writer = new BufferedWriter(new FileWriter(filePathXslt.toFile()))) {
                TransformerFactory transformerFactory = TransformerFactory.newInstance();
                Transformer transformer = transformerFactory.newTransformer();
                DOMSource source = new DOMSource(document);
                StreamResult result = new StreamResult(writer);
                transformer.transform(source, result);
            }
            UUID uuid = UUID.randomUUID();
            Path filePath = Paths.get("C:\\Users\\Fahri\\IdeaProjects\\KolaySoftFatura\\backend\\fatura-master\\src\\main\\resources\\xslt\\" + uuid + ".xslt");
            try (BufferedWriter writer = new BufferedWriter(new FileWriter(filePath.toFile()))) {
                TransformerFactory transformerFactory = TransformerFactory.newInstance();
                Transformer transformer = transformerFactory.newTransformer();
                DOMSource source = new DOMSource(document);
                StreamResult result = new StreamResult(writer);
                transformer.transform(source, result);
            }
            try {
                Path filePathXml = Paths.get("C:\\Users\\Fahri\\IdeaProjects\\KolaySoftFatura\\backend\\fatura-master\\src\\main\\resources\\static\\bill.xml");
                String baseXslt = Base64.getEncoder().encodeToString(xslt.getBytes(StandardCharsets.UTF_8));
                File xmlFile = filePathXml.toFile();

                DocumentBuilderFactory factoryxml = DocumentBuilderFactory.newInstance();
                DocumentBuilder builderxml = factoryxml.newDocumentBuilder();
                Document documentxml = builderxml.parse(xmlFile);

                NodeList nodeList = documentxml.getElementsByTagName("cbc:EmbeddedDocumentBinaryObject");
                for (int i = 0; i < nodeList.getLength(); i++) {
                    Element element = (Element) nodeList.item(i);
                    if (element.getAttribute("filename").equals("general.xslt")) {
                        element.setTextContent(baseXslt);
                        break;
                    }
                }
                Path newXmlFilePath = Paths.get("C:\\Users\\Fahri\\IdeaProjects\\KolaySoftFatura\\backend\\fatura-master\\src\\main\\resources\\xslt\\" + uuid + ".xml");
                try (BufferedWriter writer = new BufferedWriter(new FileWriter(newXmlFilePath.toFile()))) {
                    TransformerFactory transformerFactory = TransformerFactory.newInstance();
                    Transformer transformer = transformerFactory.newTransformer();
                    DOMSource source = new DOMSource(documentxml);
                    StreamResult result = new StreamResult(writer);
                    transformer.transform(source, result);
                }

            } catch (Exception e) {
                throw new RuntimeException(e);
            }

            return ResponseEntity.ok("XSLT updated successfully.");
        }catch (Exception e){
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error updating XSLT.");
        }
    }


    @Override
    public ResponseEntity<?> showXslt() {
        try {
            ClassPathResource xmlFile = new ClassPathResource("static/bill.xml");
            Path xsltPath = Paths.get("C:\\Users\\Fahri\\IdeaProjects\\KolaySoftFatura\\backend\\fatura-master\\src\\main\\resources\\static\\billXslt.xslt");
            if (!xmlFile.exists() || !Files.exists(xsltPath)) {
                return new ResponseEntity<>("XML or XSLT file not found", HttpStatus.NOT_FOUND);
            }
            String xsltContent = new String(Files.readAllBytes(xsltPath), StandardCharsets.UTF_8);

            TransformerFactory transformerFactory = TransformerFactory.newInstance();
            StringReader xsltReader = new StringReader(xsltContent);
            Transformer transformer = transformerFactory.newTransformer(new StreamSource(xsltReader));
            StringWriter writer = new StringWriter();
            transformer.transform(new StreamSource(xmlFile.getInputStream()), new StreamResult(writer));
            String htmlOutput = writer.toString();
            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.TEXT_HTML);
            return new ResponseEntity<>(htmlOutput, headers, HttpStatus.OK);

        } catch (TransformerConfigurationException e) {
            return new ResponseEntity<>("XSLT File Error: " + e.getMessage(), HttpStatus.INTERNAL_SERVER_ERROR);
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<>("Error processing XSLT: " + e.getMessage(), HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }



}