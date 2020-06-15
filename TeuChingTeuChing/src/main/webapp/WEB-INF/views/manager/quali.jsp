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
<!-- 기존꺼말고 새로갖다박은거임 -->
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
</head>
<body>
	<%@ include file="../include/top.jsp"%>

	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<!------ Include the above in your HEAD tag ---------->

	<div style="height:50px;width:18%;transform:translateX(220%);"class="div">
		<h4 style="float:left;padding-bottom:3%;border-bottom:2px solid lightgray;padding-left:1%;padding-right:1%;"><a style="color:black;" href="${pageContext.request.contextPath }/manager/report.do">🚨 신고</a></h4>
		<h4 style="float:right;padding-bottom:3%;border-bottom:2px solid lightblue;padding-right:1%;"><a style="color:black;" href="${pageContext.request.contextPath }/manager/quali.do">🏅 자격증명</a></h4>
	</div>
	<br>
	<div class="container" style="width: 45%;">

		<c:forEach items="${res.quali }" var="q" varStatus="cnt">
			<a style="color: black"
				href="${pageContext.request.contextPath }/manager/qualidetail.do?qualiidx=${q.quali_idx}">
				<c:if test="${cnt.index % 2 eq 0 }">
					<div class="testimony-wrap p-4 pb-5" style="float: left">
				</c:if> <c:if test="${cnt.index % 2 ne 0 }">
					<div class="testimony-wrap p-4 pb-5" style="float: right">
				</c:if>
				<div class="d-flex align-items-center">
					<div class="user-img"
						style="background-image: url(../resources/img/circle_person.jpg)">
					</div>
					<div class="ml-4">
						<span class="position">Trainer</span>
						<p class="name">${q.trainer_name }</p>
					</div>
				</div>
				<div class="text">
					<div class="line">${q.quali_auth }</div>
				</div>
	</div>
	</a>
	</c:forEach>
	</div>
	<div class="row mt-5" style="transform: translateX(36%)">
		<div class="col">
			<div class="block-27">
				<ul>
					<c:if test="${res.paging.blockStart le 1 }">
						<li><a
							href="${pageContext.request.contextPath }
								/manager/quali.do?currentpage=${res.paging.blockStart}">&lt;</a></li>
					</c:if>
					<c:if test="${res.paging.blockStart gt 1 }">
						<li><a
							href="${pageContext.request.contextPath }
								/manager/quali.do?currentpage=${res.paging.blockStart-1}">&lt;</a></li>
					</c:if>
					<c:forEach begin="${res.paging.blockStart }"
						end="${res.paging.blockEnd }" var="p">
						<li class="active"><span> <a
								href="${pageContext.request.contextPath }/manager/quali.do?currentpage=${ p}">${p }</a>
						</span></li>
					</c:forEach>
					<c:if test="${res.paging.blockEnd lt res.paging.lastPage }">
						<li><a
							href="${pageContext.request.contextPath }
								/manager/quali.do?currentpage=${res.paging.blockEnd+1}">&gt;</a></li>
					</c:if>
					<c:if test="${res.paging.blockEnd ge res.paging.lastPage }">
						<li><a
							href="${pageContext.request.contextPath }
								/manager/quali.do?currentpage=${res.paging.blockEnd}">&gt;</a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>


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