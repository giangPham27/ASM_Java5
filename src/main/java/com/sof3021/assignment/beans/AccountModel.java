package com.sof3021.assignment.beans;


import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AccountModel {
	@NotBlank(message = "Không được để trống")
	private String fullname;
	@NotBlank(message = "Không được để trống")
	@Pattern(regexp = "[A-Za-z0-9._%-+]+@gmail.com$" , message = "Vui lòng nhập đúng Email")
	private String email;
	@NotBlank(message = "Không được để trống")
	@Min(3)
	private String password;
	private String photo;
	private int activated;
}
