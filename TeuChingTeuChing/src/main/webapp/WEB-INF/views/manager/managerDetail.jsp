<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Meditative - Free Bootstrap 4 Template by Colorlib</title>
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
<!-- 기존꺼말고 새로갖다박은거임 -->

<style>
html, body {
	margin: 0;
	padding: 0;
	height: 100%;
	width: 100%;
}

.wrapper {
	width: 63%;
	height: 100%;
	color: pink;
	transform: translate(28%, 7%);
}

.ansbox-top {
	height: 25%;
	width: 100%;
	transform: translateX(18%);
}

.ansbox-bottom {
	height: 75%;
	width: 110%;
	position: absolute;
	boader: 1px solid black;
}

#bt1 {
	float: left;
	height: 100%;
	width: 50%;
}

#bt2 {
	float: right;
	height: 100%;
	width: 50%;
}

h5 {
	transform: translate(5%, 30%);
	font-family: "Open Sans", Arial, sans-serif;
}

h2 {
	transform: translate(4%, 38%);
	font-weight:bold;
}

.col-lg-8 {
	left: 10%;
}

</style>
</head>
<body>
	<%@ include file="../include/top.jsp"%>

	<div class="wrapper">
		<div class="ansbox-top">
			<div
				class="img rounded-circle ftco-animate mb-2 fadeInUp ftco-animated"
				style="float: left; background-image: url(resources/img/classes-4.jpg); width: 15%; height: 75%;">
				<c:if test="${ res.ans_yn eq 'Y'}">
					<div
						style="text-align: right; transform: translate(-70%, -35%); color: red; font-size: 5vw">✔</div>
				</c:if>
			</div>
			<h5>${res.report_date }
				<a href="#" class="btn btn-outline-primary"
					style="transform: translateX(250%);">답변하기</a>
			</h5>
			<h2>어쩌구님의 문의 내역입니다</h2>
		</div>
		<div class="ansbox-bottom">
		
		<div class="col-lg-8 ftco-animate">
		<h3 class="mb-4">신고내용</h3>
			<p class="mb-5" style="color:#f16f85">${res.rep_cont }</p>
		</div>

		<div class="col-lg-8 ftco-animate">
		<h3 class="mb-4">처리결과</h3>
		<p class="mb-5">${res.report_handel }</p>
		
		<c:if test="${res.report_handel eq null }">
		<p style="color:#f16f85;">아직 처리결과가 작성되지 않았습니다</p>
		</c:if>
		</div>

		<div class="col-lg-8 ftco-animate">
		<h3 class="mb-4">처리내용</h3>
			<p class="mb-5">${res.handel_cont }</p> 
			<c:if test="${res.report_handel eq null }">
			<p style="color:#f16f85;">아직 처리내용이 작성되지 않았습니다</p>
			</c:if>
		</div>
		</div>

	</div>
	<%-- 	<div class="ansbox-bottom">
			<!-- <div id="bt1"></div>
			<div id="bt2"></div> -->
			<h3>${res.rep_cont }</h3>
		</div>
		<button type="submit"
			class="btn btn-white btn-outline-white px-4 py-3 mt-3">답변하기</button>
	</div>
	<br>
	<br> --%>


	<%-- <h1>${res }</h1> --%>


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