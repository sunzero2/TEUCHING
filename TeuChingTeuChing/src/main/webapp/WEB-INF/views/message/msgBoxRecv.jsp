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
	href="../resources/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="../resources/css/animate.css">

<link rel="stylesheet" href="../resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="../resources/css/owl.theme.default.min.css">
<link rel="stylesheet" href="../resources/css/magnific-popup.css">

<link rel="stylesheet" href="../resources/css/aos.css">

<link rel="stylesheet" href="../resources/css/ionicons.min.css">

<link rel="stylesheet" href="../resources/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="../resources/css/jquery.timepicker.css">


<link rel="stylesheet" href="../resources/css/flaticon.css">
<link rel="stylesheet" href="../resources/css/icomoon.css">
<link rel="stylesheet" href="../resources/css/style.css">
<link rel="stylesheet" href="../resources/css/message/msgBoxRecv.css">
</head>
<body>
	<%@ include file="../include/top.jsp"%>

	<div class="wrapper">
		<div class="innerwrapper">
			<div class="menu">
				<a style="float: left; border-bottom: 2px solid lightgray; color: black"
					href="${pageContext.request.contextPath }/message/msgboxsend.do">📪 보낸쪽지</a>
				<a
					style="float: right; border-bottom: 2px solid pink; color: black"
					href="${pageContext.request.contextPath }/message/msgboxrecv.do">📬 받은쪽지</a>
			</div>
			<div id="table">
				<table>
					<thead>
						<tr>
							<th>Num</th>
							<th>Title</th>
							<th>From</th>
							<th>Date</th>
						</tr>
					</thead>
					<tbody id="tbody">
						<tr>
							<td>1</td>
							<td>하이하이하이하이하이</td>
							<td>김트레이너</td>
							<td>2020-02-02</td>
						</tr>
						<tr>
							<td>2</td>
							<td>하이하이하이하이하이</td>
							<td>김트레이너</td>
							<td>2020-02-02</td>
						</tr>
						<tr>
							<td>3</td>
							<td>잘지내십니까!!!</td>
							<td>김트레이너</td>
							<td>2020-02-02</td>
						</tr>
						<tr>
							<td>4</td>
							<td>하이하이머하구지네쇼이</td>
							<td>김트레이너</td>
							<td>2020-02-02</td>
						</tr>
						<tr>
							<td>5</td>
							<td>간만에 문의드립니다</td>
							<td>김트레이너</td>
							<td>2020-02-02</td>
						</tr>
					</tbody>
				</table>
				<div class="col">
					<div class="block-27">
						<ul>
							<li><a href="#">&lt;</a></li>
							<li class="active"><span>1</span></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">&gt;</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="../resources/js/jquery.min.js"></script>
	<script src="../resources/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="../resources/js/popper.min.js"></script>
	<script src="../resources/js/bootstrap.min.js"></script>
	<script src="../resources/js/jquery.easing.1.3.js"></script>
	<script src="../resources/js/jquery.waypoints.min.js"></script>
	<script src="../resources/js/jquery.stellar.min.js"></script>
	<script src="../resources/js/owl.carousel.min.js"></script>
	<script src="../resources/js/jquery.magnific-popup.min.js"></script>
	<script src="../resources/js/aos.js"></script>
	<script src="../resources/js/jquery.animateNumber.min.js"></script>
	<script src="../resources/js/bootstrap-datepicker.js"></script>
	<script src="../resources/js/jquery.timepicker.min.js"></script>
	<script src="../resources/js/scrollax.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="../resources/js/google-map.js"></script>
	<script src="../resources/js/main.js"></script>
</body>
</html>