<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<div class="mt-0"
	style="min-height: 600px; background-size: cover;">
	<div class="container p-0 mt-2" style="">
		<div>
			<h2>Tổng doanh thu: ${ tien } VNĐ</h2>
		</div>

		<p>Danh sách hóa đơn</p>
		<c:if test="${ empty ls }">
			<div class="alert alert-warning" role="alert">
				${sessionScope.trong}</div>
		</c:if>
		<table class="table">
			<thead class="table-dark">
				<tr>
					<th>Mã hóa đơn</th>
					<th>Tên Khách Hàng</th>
					<th>Địa chỉ</th>
					<th>Giá</th>
					<th colspan="1"></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ ls.content }" var="o">
					<tr>
						<td>${o.id }</td>
						<td>${o.acc.fullname }</td>
						<td>${o.address}</td>
						<td>${o.price }</td>
						<td><a href="/ASM_Java5/admin/hdct/${o.id}"
							class="btn btn-warning">Xem chi tiết</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="row">
			<div class="col-12">
				<div class="text-center">
					<nav aria-label="Page navigation example">
						<ul class="pagination justify-content-center">
							<c:if test="${ls.number <= 0}">
								<li class="page-item bg-warning rounded">
									<button class="page-link" disabled="disabled">«</button>
								</li>
							</c:if>
							<c:if test="${ls.number > 0}">
								<li class="page-item bg-warning rounded"><a
									class="page-link"
									href="/ASM_Java5/admin/doanhthu?p=${ls.number -1}"> « </a></li>
							</c:if>

							<li class="page-item active" aria-current="page"><a
								class="page-link" href="#">${ls.number}</a></li>
							<c:if test="${ls.totalPages - lsUser.number -1 > 0}">
								<li class="page-item bg-warning rounded"><a
									class="page-link"
									href="/ASM_Java5/admin/doanhthu?p=${ls.number +1}">»</a></li>
							</c:if>
							<c:if test="${ls.totalPages - lsUser.number -1 == 0}">
								<li class="page-item bg-warning rounded">
									<button class="page-link" disabled="disabled">»</button>
								</li>
							</c:if>
						</ul>
					</nav>
				</div>
			</div>
		</div>


	</div>
</div>