<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="container mt-2" style="min-height: 460px;">
	<h1>Danh sách sản phẩm</h1>
	<a href="/ASM_Java5/admin/create_product"
		class="btn btn-outline-primary">Thêm Sản Phẩm</a>
	<table class="table">
		<thead>
			<tr>
				<th scope="col">Hình ảnh</th>
				<th scope="col">Tên Sản phẩm</th>
				<th scope="col">Giá(VNĐ)</th>
				<th scope="col">Số lượng</th>
				<th colspan="2">Thao tác</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${ds}" var="p">
				<tr>
					<th scope="row">${p.image }</th>
					<td>${p.name }</td>
					<td>${p.price }</td>
					<td>${p.quantity }</td>
					<td>
						<%-- <a href="/ASM_Java5/admin/edit_product/${p.id}" class="btn btn-outline-primary" >Sửa</a> --%>
						<a href="" class="btn btn-outline-primary" data-bs-toggle="modal"
						data-bs-target="#staticBackdrop${p.id}">Sửa</a> <!-- Modal -->
						<div class="modal fade" id="staticBackdrop${p.id}"
							data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
							aria-labelledby="staticBackdropLabel" aria-hidden="true">
							<div class="modal-dialog modal-dialog-centered">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="staticBackdropLabel">Sửa
											Sản phẩm</h5>
										<button type="button" class="btn-close"
											data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">
										<form:form action="/ASM_Java5/admin/update_product/${p.id}"
											method="POST" modelAttribute="product">
											<div class="m-2">
												<label for="">Tên Sản phẩm</label>
												<form:input path="name" type="text" class="form-control" value="${p.name }" />
											</div>
											<div class="m-2">
												<label for="">Giá</label>
												<form:input path="price" type="text" class="form-control" value = "${p.price }"/>
											</div>
											<div class="m-2">
												<label for="">Loại</label>
												<form:select path="category_id" class="form-control">
													<c:forEach items="${ cate }" var="ct">
														<form:option value="${ct.id }">${ct.name}</form:option>
													</c:forEach>
												</form:select>
											</div>
											<div class="m-2">
												<label for="">Số lượng</label>
												<form:input path="quantity" type="number"
													class="form-control" value="${p.quantity}" />
											</div>
											<div class="m-2">
												<label for="">Hình Ảnh</label>
												<form:input path="image" type="file" class="form-control" value="${p.image}" />
											</div>

											<div style="width: 70%; margin-left: 15%;">
												<form:button class="container btn btn-outline-primary">Lưu sản phẩm</form:button>
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
						data-bs-target="#exampleModal${p.id}">Xóa</a>

						<div class="modal fade" id="exampleModal${p.id}" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">Xóa
											${p.name }</h5>
										<button type="button" class="btn-close"
											data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">
										<h3>Bạn có muốn xóa ${p.name } không?</h3>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-bs-dismiss="modal">Không</button>
										<a href="/ASM_Java5/admin/delete_product/${p.id}"
											class="btn btn-outline-danger">Có</a>
									</div>
								</div>
							</div>
						</div></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>