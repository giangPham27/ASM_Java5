package com.sof3021.assignment.Controllers.admin;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.lowagie.text.DocumentException;
import com.sof3021.assignment.beans.HistoryModel;
import com.sof3021.assignment.reposories.OrderDetailRepostory;
import com.sof3021.assignment.services.PDFGenerator;

@Controller
public class PDFController {
//	@Autowired
//	private OrderDetailRepostory detailRepostory;
//	
//	@GetMapping("/admin/pdf/{id}")
//	public void generatePdf(HttpServletResponse response, @PathVariable("id") Integer id) throws DocumentException, IOException{
//		
//		response.setContentType("application/pdf");
//		DateFormat dateFormat = new SimpleDateFormat("YYYY-MM-DD:HH:MM:SS");
//		String currentDateTime = dateFormat.format(new Date());
//		String headerKey = "Content-Disposisions";
//		String headerValue = "attachment; filename=pdf_"+currentDateTime+".pdf";
//		response.setHeader(headerKey, headerValue);
//		
//		List<HistoryModel> bill = detailRepostory.getBill(id);
//		
//		PDFGenerator generator = new PDFGenerator();
////		generator.setBill(bill);
//		generator.generate(response);
//	}
}
