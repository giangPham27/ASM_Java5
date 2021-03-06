<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<div class="container p-0 mt-2" style="min-height: 460px;">
        <div class="" style="width: 30%; margin-left: 33%;">
            <form:form action="/ASM_Java5/admin/store_product" method="POST" modelAttribute="product">
                <div class="m-2">
                    <label for="">Tên Sản phẩm</label>
                    <form:input path="name" type="text" class="form-control"/>
                </div>
                <div class="m-2">
                    <label for="">Giá</label>
                    <form:input path="price" type="text" class="form-control"/>
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
                    <form:input path="quantity" type="number" class="form-control"/>
                </div>
                <div class="m-2">
                    <label for="">Hình Ảnh</label>
                    <form:input path="image" type="file" class="form-control"/>
                </div>
                
                <div style="width: 70%; margin-left: 15%;">
                    <form:button class="container btn btn-outline-primary">Lưu sản phẩm</form:button>
                </div>
            </form:form>
        </div>
</div>