<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="container mt-2" style="min-height: 460px;">
	<h1>Danh sách người dùng</h1>
	<a href="/ASM_Java5/admin/create_user"
		class="btn btn-outline-primary">Thêm tài khoản</a>
	<table class="table">
		<thead>
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Họ Tên</th>
				<th scope="col">Email</th>
				<th scope="col">Hình Ảnh</th>
				<th colspan="3">Thao tác</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${lsUser}" var="acc">
				<tr>
					<th scope="row">${acc.id}</th>
					<td>${acc.fullname}</td>
					<td>${acc.email}</td>
					<td>${acc.photo}</td>
					<td>
						<a href=""
						class="btn btn-outline-primary" data-bs-toggle="modal"
						data-bs-target="#staticBackdrop${acc.id}">Sửa</a> <!-- Modal -->
						<div class="modal fade" id="staticBackdrop${acc.id}"
							data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
							aria-labelledby="staticBackdropLabel" aria-hidden="true">
							<div class="modal-dialog modal-dialog-centered">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="staticBackdropLabel">Cập nhật
											người dùng</h5>
										<button type="button" class="btn-close"
											data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">
										<form:form action="/ASM_Java5/admin/update_user/${acc.id}"
											method="POST" modelAttribute="user">
											<form:input type="text" path="fullname"
												class="form-control mt-2 formstyle" placeholder="Họ và Tên"
												value="${acc.fullname}" />
											<form:input type="text" path="email"
												class="form-control mt-2 formstyle" placeholder="Email"
												value="${acc.email}" />
											<form:password path="password"
												class="form-control mt-2 formstyle" placeholder="Mật khẩu" />
											<label for="" class="mt-2">Ảnh đại diện</label>
											<form:input type="file" path="photo"
												class="form-control mt-2" placeholder="avatar"
												value="${acc.photo}" />
											<div>
												<label for="">Trạng thái hoạt động</label>
												<div>
													<label for="">Có</label>
													<form:radiobutton path="activated" value="1" name="active"
														id="" class="m-3" />
													<label for="">Không</label>
													<form:radiobutton path="activated" value="0" name="active"
														id="" class="m-3" />
												</div>
											</div>
											<div style="width: 70%; margin-left: 15%;">
												<form:button class="container btn btn-outline-primary">Tạo tài khoản</form:button>
											</div>
										</form:form>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-bs-dismiss="modal">Close</button>
									</div>
								</div>
							</div>
						</div>


					</td>


					<td><a class="btn btn-outline-danger" data-bs-toggle="modal"
						data-bs-target="#exampleModal${acc.id}">Xóa</a> <!-- Modal -->

						<div class="modal fade" id="exampleModal${acc.id}" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">Xóa người
											Dùng</h5>
										<button type="button" class="btn-close"
											data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">
										<h3>Bạn có muốn xóa ${acc.fullname} không ?</h3>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-bs-dismiss="modal">Không</button>
										<a href="/ASM_Java5/admin/delete_user/${acc.id}"
											type="button" class="btn btn-primary">Có</a>
									</div>
								</div>
							</div>
						</div></td>
					<td>
					<div class="col-3 offset-6">
							<a type="button" class="btn btn-primary"
								href="/ASM_Java5/admin/UserIndex/excel"> <i
								class="fa-solid fa-file-excel"></i> <span>Export to excel</span>
							</a>
						</div>
					</td>
				</tr>
			</c:forEach>
	</table>
	</tbody>
</div>