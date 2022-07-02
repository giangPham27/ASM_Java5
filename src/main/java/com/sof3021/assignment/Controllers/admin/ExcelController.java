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

import com.sof3021.assignment.entities.Account;
import com.sof3021.assignment.reposories.AccountRepository;
import com.sof3021.assignment.reposories.CategoryRepository;
import com.sof3021.assignment.reposories.OrderDetailRepostory;
import com.sof3021.assignment.reposories.OrderRepository;
import com.sof3021.assignment.reposories.ProductRepository;
import com.sof3021.assignment.services.ExcelAccountGenerator;

@Controller
public class ExcelController {
	@Autowired
	private AccountRepository accountRepository;
	
	@Autowired
	private OrderRepository orderRepository;
	
	@Autowired
	private OrderDetailRepostory detailRepostory;
	
	@Autowired
	private ProductRepository  productRepository;
	
	@Autowired
	private CategoryRepository  categoryRepository;
	
	@GetMapping("/admin/UserIndex/excel")
	public void exportAccIntoExcel(HttpServletResponse response) throws IOException {
		response.setContentType("application/ontet-stream");
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd_HH:mm:ss");
		String currentDateTime = dateFormat.format(new Date());
		
		String headerKey = "Content-Disposition";
		String headerValue = "attachment; filename=accounts_"+currentDateTime+".xlsx";
		response.setHeader(headerKey, headerValue);
		
		List<Account> listOfAccounts = accountRepository.findAll();
		ExcelAccountGenerator generator = new ExcelAccountGenerator(listOfAccounts);
		generator.generate(response);
	}
}

