<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<link rel="stylesheet" href="../css/bootstrap.min.css">
<div class=""
	style="min-height: 600px; background-size: cover;">
	<div class="container p-0 mt-2 text-white" style="">
		<div class="row">
			<div class="col-12">
				<p>Danh sách hóa đơn</p>
				<table class="table">
					<thead class="table-dark">
						<tr>
							<th>Mã hóa đơn</th>
							<th>Địa chỉ</th>
							<th>Giá</th>
							<th></th>
							<th colspan="3"></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${ ls }" var="o">
							<tr>
								<td>${o.id }</td>
								<td>${o.address}</td>
								<td>${o.price }</td>
								<td>Chờ xác nhận</td>
								<td><a href="/ASM_Java5/admin/hdct/${o.id}"
									class="btn btn-warning">Xem chi tiết</a></td>
								<td><a href="/ASM_Java5/deleteOrder/${o.id}"
									class="btn btn-danger">Hủy Đơn</a></td>
								<td>
								<a class="btn btn-warning" href="/ASM_Java5/orderedit_user/${o.id}" >Sửa</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>