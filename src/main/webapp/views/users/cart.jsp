<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<div
	style="width: 100%; background-size: cover;">
	<div class="container p-3"
		style="width: 100%; min-height: 440px;">
		<div class="text-center">
			<h1 style="font-weight: bold;">Giỏ Hàng Của Bạn</h1>
		</div>
		<c:if test="${ empty ls }">
			<div class="alert alert-warning" role="alert"
				style="width: 50%; margin-left: 25%;">${sessionScope.trong}</div>
		</c:if>
		
		<c:if test="${!empty sessionScope.error }">
				<div class="alert alert-warning" role="alert">
					${sessionScope.error}
					<c:remove var="error" scope="session" />
				</div>
			</c:if>
		
		<c:if test="${!empty ls }">
			<div class="row mt-4">
				<form:form action="/ASM_Java5/store_order" class="d-flex" modelAttribute="order" method="post">
					<div class="col-8">
						<table class="table table-borderless">
							<thead>
								<tr>
									<th scope="col"><input type="checkbox"
										onclick="toggle(this)"></th>
									<th>Hình ảnh</th>
									<th scope="col">Tên Sản Phẩm</th>
									<th scope="col">Giá</th>
									<th scope="col">Số lượng kho</th>
									<th scope="col">Số lượng</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${ ls }" var="pro">
									<tr class="mt-2">
										<td><form:checkbox path="product_id" value="${ pro.product_id.id}" /></td>
										<td><img src="image/products/${ pro.product_id.image }"
											alt="" style="width: 100px; height: aoto;"></td>
										<td>${ pro.product_id.name }</td>
										<td>${ pro.product_id.price }</td>
										<td>${ pro.product_id.quantity }</td>
										<td><form:input type="number" min="1" value="1" path="quantity"/></td>
										<td><a href="/ASM_Java5/deleteCart/${pro.id}" class="btn btn-danger">Xóa khỏi giỏ hàng</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<div class="col-4 mt-4">
						<label for="">Địa điểm</label>
						<form:input type="text" class="form-control"
							placeholder="Địa chỉ nhận hàng" path="address" />
						<p style="font-size: 20px;" class="mt-2">Thông tin đơn hàng</p>
						<table class="table table-borderless">
						<c:forEach items="${ ls }" var="pro">
							<tr>
								<th scope="row">Tạm tính(1 sản phẩm)</th>
								<td> ${ pro.product_id.price } VNĐ</td>
							</tr>
						</c:forEach>
						</table>
						<button class="btn form-control"
							style="background-color: #E0D8B0;">Đặt Hàng</button>
					</div>
				</form:form>
			</div>
		</c:if>
	</div>
</div>
<script>
	function toggle(source) {
		checkboxes = document.getElementsByName('product_id');
		for (var i = 0, n = checkboxes.length; i < n; i++) {
			checkboxes[i].checked = source.checked;
		}
	}
</script>