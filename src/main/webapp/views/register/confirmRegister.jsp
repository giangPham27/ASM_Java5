<%@ page language="java"
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    session="true" %>
<div class="">
        <div class="pt-5" style="height: 650px; background-size: cover;
        display: flex;
        justify-content: center;
        ">
            <div class="pt-4" style="
                width: 20%; 
                background-color: rgba(255, 255, 255, 0);
                border-radius: 20px;
                ">
                <form action="/ASM_Java5/registerAccount/" class="text-center d-flex text-white" method="post">
                    <div class="input-group mb-3 mt-5">
                        <input type="text" class="form-control" placeholder="Nhập mã xác nhận" name="code">
                        <button class="btn next" style="background-color: orange;" href=""><img
                                src="image/icon/Next-button-30.png" alt="" srcset=""></button>
                    </div>
                </form>
                <p class="text-white">Mã xác nhận của bạn là:    <span style="background: white; color: black; font-size: 25px">${code }</span></p>
                <div class="text-center">
                    <a href="/ASM_Java5/index" class="btn btn-warning mt-2">Quay lại trang chủ</a>
                </div>
            </div>
        </div>
</div>