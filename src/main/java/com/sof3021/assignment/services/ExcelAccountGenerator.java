package com.sof3021.assignment.services;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFFont;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.sof3021.assignment.entities.Account;

public class ExcelAccountGenerator {
	private List<Account> lstAccounts;
	private XSSFWorkbook workbook;
	private XSSFSheet sheet;
	
	public ExcelAccountGenerator(List<Account> lstAccounts) {
		this.lstAccounts = lstAccounts;
		workbook = new XSSFWorkbook();
	}
	private void writeHeader() {
		sheet = workbook.createSheet("Account");
		
		Row row = sheet.createRow(0);
		
		CellStyle style = workbook.createCellStyle();
		XSSFFont font = workbook.createFont();
		font.setBold(true);
		font.setFontHeight(16);
		style.setFont(font);
		
		createCell(row,0,"ID",style);
		createCell(row,1,"Fullname",style);
		createCell(row,2,"Email",style);
		createCell(row,3,"Password",style);
		createCell(row,4,"Photo",style);
		createCell(row,5,"Activated",style);
		createCell(row,6,"Admin",style);
	}
	private void createCell(Row row, int i, Object value, CellStyle style) {
		sheet.autoSizeColumn(i);
		Cell cell = row.createCell(i);
		if (value instanceof Integer) {
			cell.setCellValue((Integer) value);
		} else if(value instanceof Double){
			cell.setCellValue((Double) value);
		}else if(value instanceof Long){
			cell.setCellValue((Long) value);
		}else if(value instanceof Boolean){
			cell.setCellValue((Boolean) value);
		}else {
			cell.setCellValue((String) value);
		}
		cell.setCellStyle(style);
	}
	private void wirte() {
		int rowCount = 1;
		
		CellStyle cellStyle = workbook.createCellStyle();
		XSSFFont font = workbook.createFont();
		font.setFontHeight(14);
		cellStyle.setFont(font);
		
		for (Account account : lstAccounts) {
			Row row = sheet.createRow(rowCount++);
			int columnCount = 0;
			
			createCell(row, columnCount++, account.getId(), cellStyle);
			createCell(row, columnCount++, account.getFullname(), cellStyle);
			createCell(row, columnCount++, account.getEmail(), cellStyle);
			createCell(row, columnCount++, account.getPassword(), cellStyle);
			createCell(row, columnCount++, account.getPhoto(), cellStyle);
			createCell(row, columnCount++, account.getActivated()==1?"Chưa kích hoạt":"Đã kích hoạt", cellStyle);
			createCell(row, columnCount++, account.getAdmin()==1?"Admin":"Member", cellStyle);
		}
	}
	public void generate(HttpServletResponse response) throws IOException{
		writeHeader();
		wirte();
		ServletOutputStream outputStream = response.getOutputStream();
		workbook.write(outputStream);
		workbook.close();
		
		outputStream.close();
	}
}
