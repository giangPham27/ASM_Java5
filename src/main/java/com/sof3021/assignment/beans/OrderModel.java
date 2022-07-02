package com.sof3021.assignment.beans;

import java.util.List;

import javax.persistence.Entity;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrderModel {
	@NotBlank(message = "Không được để trống")
	@Pattern(regexp = "[A-Za-z0-9._%-+]+@gmail.com$", message = "Vui lòng nhập đúng Email")
	private String email;
	@NotBlank(message = "Không được để trống")
	private String address;
	private List<Integer> product_id;
	private List<Integer> quantity;
}
