<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<div class="mt-5">
	<div class="pt-5"
		style="height: 650px; background-size: cover; display: flex; justify-content: center;">
		<div class="pt-4"
			style="width: 25%; background-color: rgba(255, 255, 255, 0); border-radius: 20px;">
			<h1 class=""
				style="font-family: NunitoSanRegular; font-weight: bold; color: rgb(248, 204, 7); margin-bottom: 20px;">
				Thông tin cá nhân</h1>
			<form:form action="/ASM_Java5/register_confirm" class="text-white" modelAttribute="acc" method="post">
				<div class="">
					<div class="mt-2">
						<label for="">Họ tên</label> <form:input type="text"
							class="form-control" placeholder="Tên của bạn" path="fullname"/>
					</div>

					<div class="mt-2">
						<label for="">Mật khẩu</label> <form:password 
							class="form-control" placeholder="Mật khẩu" path="password"/>
					</div>

					<div class="mt-2">
						<label for="">Ảnh đại diện</label> <form:input type="file"
							class="form-control" placeholder="Ảnh đại diện" path="photo"/>
					</div>

					<div class="text-center container-fluid" style="width: 70%;">
						<button class="btn btn-outline-primary mt-3" style="width: 100%;">Đăng
							Kí</button>
					</div>
				</div>
			</form:form>
			<div class="container text-center">
				<a href="" class="btn btn-warning mt-5">Quay lại trang chủ</a>
			</div>
		</div>
	</div>
</div>