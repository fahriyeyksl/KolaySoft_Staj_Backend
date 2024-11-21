package com.example.fatura.api.contrellers;
import com.example.fatura.service.FileService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import javax.xml.transform.*;
import java.io.*;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/filecontroller")
public class FileController {

    private FileService fileService;

    public FileController(FileService fileService) {
        this.fileService = fileService;
    }

    @GetMapping("/download")
    @CrossOrigin(origins = "http://localhost:5173")
    public ResponseEntity<?> getInvoiceByte() throws IOException, TransformerException {
        return this.fileService.getInvoiceByte();
    }

    @PostMapping("/updateXslt")
    public ResponseEntity<?> updateXslt(@RequestBody Map<String, List<Double>> positionMap) {
        return this.fileService.uppdateXslt(positionMap);
    }

    @PostMapping(value = "/updateXsltCss")
    public ResponseEntity<?> updateXsltCss (@RequestBody Map<String,Map<String,String>> styleMap){
        return this.fileService.updateXsltCss(styleMap);
    }
    @GetMapping("/showXsltDowloadPage")
    public  ResponseEntity<?> showXslt() {
        return this.fileService.showXslt();
    }


}
