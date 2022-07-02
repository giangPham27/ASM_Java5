<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<div class="" style="min-height: 600px; background-size: cover;">
	<div class="container p-0 mt-2 text-white" style="">
		<div class="">
			<p>Chi tiết hóa đơn</p>
			<table class="table text-white">
				<thead class="table-dark">
					<tr>
						<th>Tên sản phẩm</th>
						<th>Tổng giá</th>
						<th>Số lượng</th>
						<th colspan="1">Thao tác</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${ lsoddl }" var="od">
						<tr>
							<td>${od.products.name}</td>
							<td>${od.price}</td>
							<td>${od.quantity}</td>
							<td>
								<div class="col-3">
									<a type="button" class="btn btn-primary"
										href="/ASM_Java5/admin/pdf/${ od.orders.id }"> <i
										class="fa-solid fa-file-pdf"></i> <span>Export to PDF</span>
									</a>
								</div>

							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>
