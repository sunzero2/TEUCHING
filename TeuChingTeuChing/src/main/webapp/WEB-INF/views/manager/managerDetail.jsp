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
	font-weight: bold;
}

.col-lg-8 {
	left: 14%;
}

#font-size {
	font-size: 15px;
}
</style>
</head>
<body>
	<%@ include file="../include/top.jsp"%>

	<div class="wrapper">
		<div class="ansbox-top">
			<div
				class="img rounded-circle ftco-animate mb-2 fadeInUp ftco-animated"
				style="float: left; border: 1px solid black; background-image: url(resources/img/circle_person.jpg); width: 15%; height: 75%;">
				<c:if test="${ res.ans_yn eq 'Y'}">
					<div
						style="text-align: right; transform: translate(-70%, -35%); color: #b91e2d; font-size: 5vw">✔</div>
				</c:if>
			</div>
			<form
				action="${pageContext.request.contextPath }/managerdetail/answer.do"
				method="post">
				<h5>${res.report_date }
					<c:if test="${type eq 'tra' }">
						<input type="hidden" name="nick_name" value="${res.nick_name }">
						<input type="hidden" name="type" value="tra">
					</c:if>
					<c:if test="${type eq 'rev' }">
						<input type="hidden" name="trainer_name"
							value="${res.trainer_name }">
						<input type="hidden" name="type" value="rev">
					</c:if>
					<input type="hidden" name="rep_cont" value="${res.rep_cont }">
					<input type="hidden" name="report_handel"
						value="${res.report_handel }"> <input type="hidden"
						name="handel_cont" value="${res.handel_cont }"> <input
						type="hidden" name="report_date" value="${res.report_date }">
					<input type="hidden" name="ans_yn" value="${res.ans_yn }">
					<input type="hidden" name="report_idx" value="${res.report_idx }">
					<button type="submit" class="btn btn-outline-primary"
						style="transform: translateX(250%);">답변하기</button>
				</h5>
			</form>
			<c:if test="${type eq 'tra' }">
				<h2>${ res.nick_name}님의문의내역</h2>
			</c:if>
			<c:if test="${type eq 'rev' }">
				<h2>${ res.trainer_name}님의문의내역</h2>
			</c:if>
		</div>
		<div class="ansbox-bottom">

			<div class="col-lg-8 ftco-animate">
				<p id="checkfile" onclick="checkfile"
					style="float: right; color: #2c396b; transform: translateX(-50%); cursor: pointer">📁첨부파일</p>
				<h3 class="mb-4">신고내용</h3>
				<p id="font-size">${res.rep_cont }</p>
			</div>

			<div class="col-lg-8 ftco-animate">
				<h3 class="mb-4">처리결과</h3>
				<c:if test="${res.report_handel ne ' ' }">
					<p id="font-size">${res.report_handel }</p>
				</c:if>
				<c:if test="${res.report_handel eq ' ' }">
					<p id="font-size">아직 처리결과가 작성되지 않았습니다</p>
				</c:if>
			</div>

			<div class="col-lg-8 ftco-animate">
				<h3 class="mb-4">처리내용</h3>
				<c:if test="${res.handel_cont ne ' ' }">
					<p id="font-size">${res.handel_cont }</p>
				</c:if>
				<c:if test="${res.handel_cont eq ' ' }">
					<p id="font-size">아직 처리내용이 작성되지 않았습니다</p>
				</c:if>
			</div>
		</div>

	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<script>
		function checkfile(){
			
		}
	</script>
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