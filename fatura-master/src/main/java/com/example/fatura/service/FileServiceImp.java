package com.example.fatura.service;
import com.example.fatura.FileUtils.XmlUtil;
import com.example.fatura.FileUtils.XsltUtil;
import org.apache.tomcat.util.http.fileupload.ByteArrayOutputStream;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import javax.xml.XMLConstants;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import java.io.*;
import java.nio.charset.StandardCharsets;
import java.nio.file.Path;
import java.nio.file.Paths;
import static com.example.fatura.FileUtils.OtherUtils.updateCss;
import static com.example.fatura.FileUtils.XsltUtil.getXslt;

@Service
public class FileServiceImp implements FileService {




    @Override
    public ResponseEntity<?> getInvoiceByte() throws IOException, TransformerException {
        String xslt = XsltUtil.getXslt();
        String xml =XmlUtil.getXml();

        TransformerFactory transformerFactory = TransformerFactory.newInstance();
        transformerFactory.setFeature(XMLConstants.FEATURE_SECURE_PROCESSING, true);

        StringReader xsmltReader = new StringReader(xslt);
        StreamSource xsmltSource = new StreamSource(xsmltReader);

        Transformer transformer = transformerFactory.newTransformer(xsmltSource);

        StringReader xmlReader = new StringReader(xml);
        StreamSource xmlSource = new StreamSource(xmlReader);

        org.apache.tomcat.util.http.fileupload.ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, StandardCharsets.UTF_8);
        StreamResult outputStreamResult = new StreamResult(outputStreamWriter);

        transformer.transform(xmlSource, outputStreamResult);

        String response = new String(outputStream.toByteArray(), StandardCharsets.UTF_8);

        return ResponseEntity.ok(response.getBytes(StandardCharsets.UTF_8));
    }



    @Override
    public ResponseEntity<?> uppdateXslt(double logoPositionX, double logoPositionY) {
        try {
            // XSLT dosyasını al
            String xslt = getXslt();
            String cssSelector = "#companylogo";

            // Yeni transform değeri oluştur
            String newTransform = String.format("transform:translate(%spx,%spx);", logoPositionX, logoPositionY);

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
                    Element styleElement = (Element) styleNode;
                    String cssContent = styleElement.getTextContent();
                    String updatedCssContent = updateCss(cssContent, cssSelector, newTransform);
                    styleElement.setTextContent(updatedCssContent);
                }
            }

            // Güncellenmiş XSLT içeriğini dosyaya yaz
            Path filePath = Paths.get("C:\\Users\\Fahri\\IdeaProjects\\KolaySoftFatura\\backend\\fatura-master\\src\\main\\resources\\static\\billXslt.xslt");
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


}
