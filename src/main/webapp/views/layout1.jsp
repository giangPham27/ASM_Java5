<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<style>
body {
	font-family: NunitoSanRegular;
}
.menu {
	background-color: #303030;
	height: 30px;
	line-height: 30px;
}
.menu>ul>li {
	display: flex;
	list-style: none;
	margin-right: 25px;
}
.menu>ul>li>img {
	margin-top: 7px;
	margin-right: 4px;
	width: 16px;
	height: 16px;
}
.menu>ul>li>a {
	display: block;
	color: white;
	text-decoration: none;
	font-family: NunitoSanRegular;
	font-size: 12px;
	font-weight: bold;
}
.menu>ul>li>a:hover {
	background-color: white;
	color: rgb(249, 33, 9);
}
.layout {
	display: flex !important;
	justify-content: space-around !important;
}
.carou {
	font-family: NunitoSanRegular;
	height: 30px;
	line-height: 30px;
}
.tx {
	width: 1px;
	height: 35px;
	background-color: rgb(78, 78, 78);
	margin: 10px;
}
.navtext {
	font-size: 28px;
	font-weight: 600;
}
</style>
</head>

<body>
	<!-- Menu -->
	<div class="menu">
		<ul class="d-flex flex-row-reverse">

			<c:if test="${ user == null}">
				<li><img src="../image/icon/icons8-account-30.png" alt=""> <a
					href="/ASM_Java5/login">Đăng Nhập</a></li>

			</c:if>
			<c:if test="${ user != null}">
				<li class="nav-item dropdown"><img
					src="../image/icon/icons8-account-30.png" alt=""><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-bs-toggle="dropdown" aria-expanded="false">
						${user.fullname } </a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
						<li><a class="dropdown-item" href="/ASM_Java5/logout">Đăng
								Xuất</a></li>
					</ul></li>
			</c:if>




			<li><img src="../image/icon/icons8-favorite-cart-30.png" alt=""><a
				href="/ASM_Java5/cart">Giỏ Hàng</a></li>
			<li><img src="../image/icon/icons8-taxi-mobile-payment-24.png"
				alt=""><a href="/ASM_Java5/order_user">Đơn hàng</a></li>
				<li><img src="../image/icon/icons8-order-history-24.png"
				alt=""><a href="/ASM_Java5/history">Lịch sử mua hàng</a></li>
		</ul>
	</div>

	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg bg-light">
		<div class="container-fluid layout">
			<div class="ms-5">
				<a class="navbar-brand" href="/ASM_Java5/index"> <img
					src="https://iweb.tatthanh.com.vn/pic/12/banner/logo(1).png" alt=""
					style="width: 125px; height: 125px;">
				</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
			</div>
			<div>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link active navtext"
							aria-current="page" href="#">Áo bóng đá</a></li>
						<div class="tx"></div>
						<li class="nav-item"><a class="nav-link active navtext"
							aria-current="page" href="#">Giày thể thao</a></li>
						<div class="tx"></div>
						<li class="nav-item"><a class="nav-link active navtext"
							aria-current="page" href="#">Phụ kiện</a></li>
						<div class="tx"></div>
						<li class="nav-item dropdown"><a
							class="nav-link navtext dropdown-toggle" href="#" id="navbarDropdown"
							role="button" data-bs-toggle="dropdown" aria-expanded="false">
								Khác </a>
							<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
								<li><a class="dropdown-item" href="#">Action</a></li>
								<li><a class="dropdown-item" href="#">Another action</a></li>
								<li><hr class="dropdown-divider"></li>
								<li><a class="dropdown-item" href="#">Something else
										here</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
			<div class="me-5">
				<form class="d-flex" role="search">
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
			</div>
		</div>
	</nav>

	<!-- Content -->
	<jsp:include page="${view }"></jsp:include>


	<!-- footer -->
	<div>
		<section class=" text-center">
			<footer class="text-center text-white"
				style="background-color: #515151;">
				<!-- Grid container -->
				<div class="container pt-4">
					<!-- Section: Social media -->
					<section class="mb-4">
						<!-- Facebook -->
						<a class="btn btn-link btn-floating btn-lg text-dark m-1"
							href="#"
							role="button" data-mdb-ripple-color="dark"><img
							src="image/icon/icons8-facebook-30.png" alt=""></i></a>

						<!-- Twitter -->
						<a class="btn btn-link btn-floating btn-lg text-dark m-1"
							href="#!" role="button" data-mdb-ripple-color="dark"><img
							src="image/icon/icons8-twitter-30.png" alt=""></a>

						<!-- Google -->
						<a class="btn btn-link btn-floating btn-lg text-dark m-1"
							href="#!" role="button" data-mdb-ripple-color="dark"><img
							src="image/icon/icons8-google-30.png" alt=""></i></a>

						<!-- Instagram -->
						<a class="btn btn-link btn-floating btn-lg text-dark m-1"
							href="#!" role="button" data-mdb-ripple-color="dark"><img
							src="image/icon/icons8-instagram-30.png" alt=""></i></a>

						<!-- Linkedin -->
						<a class="btn btn-link btn-floating btn-lg text-dark m-1"
							href="#!" role="button" data-mdb-ripple-color="dark"><img
							src="image/icon/icons8-linkedin-circled-30.png" alt=""></a>
						<!-- Github -->
						<a class="btn btn-link btn-floating btn-lg text-dark m-1"
							href="#!" role="button" data-mdb-ripple-color="dark"><img
							src="image/icon/icons8-zalo-50.png" alt=""></a>
					</section>
					<!-- Section: Social media -->
				</div>
				<!-- Grid container -->

				<!-- Copyright -->
				<div class="text-center text-white p-3"
					style="background-color: rgba(32, 32, 32, 0.2);">
					<jsp:useBean id="now" class="java.util.Date" />
					<p>© <fmt:formatDate value="${now }" pattern="EE, dd-MM-yyyy" /></p>
				</div>
				<!-- Copyright -->
			</footer>
		</section>
	</div>
	
	<script src="js/query.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>

</html>