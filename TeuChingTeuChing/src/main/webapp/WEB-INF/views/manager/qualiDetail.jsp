<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Teu-Ching Teu-Ching</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">


<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700&display=swap"
	rel="stylesheet">

<link
	href="https://fonts.googleapis.com/css?family=EB+Garamond:400,400i,500,500i,600,600i,700,700i&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="resources/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="resources/css/animate.css">

<link rel="stylesheet" href="resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="resources/css/owl.theme.default.min.css">
<link rel="stylesheet" href="resources/css/magnific-popup.css">

<link rel="stylesheet" href="resources/css/aos.css">

<link rel="stylesheet" href="resources/css/ionicons.min.css">

<link rel="stylesheet" href="resources/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="resources/css/jquery.timepicker.css">


<link rel="stylesheet" href="resources/css/flaticon.css">
<link rel="stylesheet" href="resources/css/icomoon.css">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/manager/qualiDetail.css">


</head>
<body>
	<%@ include file="../include/top.jsp"%>

	<div class="wrapper">
		<div class="ansbox-top">
			<h1 style="text-align: center; font-size: 4vw">
				Profile <a
					href="${pageContext.request.contextPath }
					/qualidetail/auth.do?quali_idx=${ res.quali_idx}"
					class="btn btn-outline-primary"
					onclick="if(!confirm('승인하시겠습니까?')){return false;}">승인하기</a>
			</h1>
			<div style="transform: translateX(20%)">
				<img src="resources/img/circle_person.jpg"
					style="width: 150px; height: 190px; float: left">
				<h2 style="transform: translateY(135%); float: left">${res.trainer_name }
					트레이너</h2>
				<p style="clear: both"></p>
				<div style="transform: translateX(5%); margin-top: -2%">
					<div>
						<h5 style="float: left; font-weight: bold; margin-right: 1%;">지역</h5>
						<h5 style="float: left">서울시</h5>
					</div>
					<p style="clear: both"></p>
					<div>
						<h5 style="float: left; font-weight: bold; margin-right: 1%;">번호</h5>
						<h5 style="float: left">010-2424-3434</h5>
					</div>
					<p style="clear: both"></p>
					<div>
						<h5 style="float: left; font-weight: bold; margin-right: 1%;">메일</h5>
						<h5 style="float: left">cino4615@gmaill.com</h5>
					</div>
					<p style="clear: both"></p>
					<div>
						<h5 style="float: left; font-weight: bold; margin-right: 1%;">요청</h5>
						<h5 style="float: left">${res.quali_auth }</h5>
					</div>
				</div>
			</div>
			<br>
			<br>
			<br>
			<div class="col-lg-8 ftco-animate">
				<div class="row">
					<div class="col-md-3 ftco-animate">
						<a href="${pageContext.request.contextPath }/resources/upload/${file }"
							class="gallery image-popup img d-flex align-items-center"
							style="height: 195px; width: 400px; background-image: url(resources/img/check.png); transform: translateX(6%)">
							<div
								class="icon mb-4 d-flex align-items-center justify-content-center">
								<span class="icon-instagram"></span>
							</div>
						</a>
					</div>
				</div>
			</div>
		</div>

	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="resources/js/popper.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/jquery.easing.1.3.js"></script>
	<script src="resources/js/jquery.waypoints.min.js"></script>
	<script src="resources/js/jquery.stellar.min.js"></script>
	<script src="resources/js/owl.carousel.min.js"></script>
	<script src="resources/js/jquery.magnific-popup.min.js"></script>
	<script src="resources/js/aos.js"></script>
	<script src="resources/js/jquery.animateNumber.min.js"></script>
	<script src="resources/js/bootstrap-datepicker.js"></script>
	<script src="resources/js/jquery.timepicker.min.js"></script>
	<script src="resources/js/scrollax.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="resources/js/google-map.js"></script>
	<script src="resources/js/main.js"></script>
</body>
</html>