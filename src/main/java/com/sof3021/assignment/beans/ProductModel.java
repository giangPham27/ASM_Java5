package com.sof3021.assignment.beans;

import java.util.Date;

import javax.validation.constraints.NotBlank;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductModel {
	@NotBlank(message = "Không được để trống")
	private String name;
	@NotBlank(message = "Không được để trống")
	private String price;
	@NotBlank(message = "Không được để trống")
	private String date;
	@NotBlank(message = "Không được để trống")
	private int quantity;
	private String image;
	private int category_id;
	private String note;
	
}
