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
	
	<div class="container" style="transform: translateX(5%)">

		<div class="row">

			<ul class="nav nav-pills nav-stacked admin-menu"
				style="transform: translateY(5%)">
				<li class="active"><a href="" data-target-id="profile"><i
						class="glyphicon glyphicon-user"></i> 트레이너 신고</a></li>
			</ul>

			<div class="col-md-9  admin-content" id="profile">
				<c:forEach items="${res.resTra.selectTraReport }" var="r">
					<div class="panel panel-info" style="margin: 1em;">
						<div class="panel-heading">
							<c:if test="${r.ans_yn eq 'Y' }">
								<h4 style="float: right; transform: translateY(-50%)">✔답변완료</h4>
							</c:if>
							<h3 class="panel-title">${ r.report_date}</h3>
						</div>
						<div class="panel-body">
							<a
								href="${pageContext.request.contextPath }/managerdetail.do?traid=${r.report_idx}">${r.rep_cont }</a>
						</div>
					</div>
				</c:forEach>
				<div class="row mt-5" style="transform: translateX(25%)">
					<div class="col">
						<div class="block-27">
							<ul>
								<c:if test="${res.resTra.pagingTra.blockStart le 1 }">
									<li><a
										href="${pageContext.request.contextPath }
								/manager.do?traCurrentPage=${res.resTra.pagingTra.blockStart}">&lt;</a></li>
								</c:if>
								<c:if test="${res.resTra.pagingTra.blockStart gt 1 }">
									<li><a
										href="${pageContext.request.contextPath }
								/manager.do?traCurrentPage=${res.resTra.pagingTra.blockStart-1}">&lt;</a></li>
								</c:if>
								<c:forEach begin="${res.resTra.pagingTra.blockStart }"
									end="${res.resTra.pagingTra.blockEnd }" var="pt">
									<li class="active"><span> <a
											href="${pageContext.request.contextPath }/manager.do?traCurrentPage=${pt}">${pt }</a>
									</span></li>
								</c:forEach>
								<c:if
									test="${res.resTra.pagingTra.blockEnd lt res.resTra.pagingTra.lastPage }">
									<li><a
										href="${pageContext.request.contextPath }
								/manager.do?traCurrentPage=${res.resTra.pagingTra.blockEnd+1}">&gt;</a></li>
								</c:if>
								<c:if
									test="${res.resTra.pagingTra.blockEnd ge res.resTra.pagingTra.lastPage }">
									<li><a
										href="${pageContext.request.contextPath }
								/manager.do?traCurrentPage=${res.resTra.pagingTra.blockEnd}">&gt;</a></li>
								</c:if>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container" style="transform: translateX(7.5%)">

		<div class="row">

			<ul class="nav nav-pills nav-stacked admin-menu"
				style="transform: translate(-20%, 5%)">
				<li class="active"><a href="" data-target-id="profile"><i
						class="glyphicon glyphicon-user"></i> 리뷰 신고</a></li>
			</ul>

			<div class="col-md-9  admin-content" id="profile">
				<c:forEach items="${res.resRev.selectRevReport }" var="r">
					<div class="panel panel-info" style="margin: 1em;">
						<div class="panel-heading">
							<c:if test="${r.ans_yn eq 'Y' }">
								<h4 style="float: right; transform: translateY(-50%)">✔답변완료</h4>
							</c:if>
							<h3 class="panel-title">${ r.report_date}</h3>
						</div>
						<div class="panel-body">
							<a
								href="${pageContext.request.contextPath }/managerdetail.do?revid=${r.report_idx}">${r.rep_cont }</a>
						</div>
					</div>
				</c:forEach>
				<div class="row mt-5" style="transform: translateX(25%)">
					<div class="col">
						<div class="block-27">
							<ul>
								<c:if test="${res.resRev.pagingRev.blockStart le 1 }">
									<li><a
										href="${pageContext.request.contextPath }
								/manager.do?revCurrentPage=${res.resRev.pagingRev.blockStart}">&lt;</a></li>
								</c:if>
								<c:if test="${res.resRev.pagingRev.blockStart gt 1 }">
									<li><a
										href="${pageContext.request.contextPath }
								/manager.do?revCurrentPage=${res.resRev.pagingRev.blockStart-1}">&lt;</a></li>
								</c:if>
								<c:forEach begin="${res.resRev.pagingRev.blockStart }"
									end="${res.resRev.pagingRev.blockEnd }" var="pr">
									<li class="active"><span> <a
											href="${pageContext.request.contextPath }/manager.do?revCurrentPage=${pr}">${pr }</a>
									</span></li>
								</c:forEach>
								<c:if
									test="${res.resRev.pagingRev.blockEnd lt res.resRev.pagingRev.lastPage }">
									<li><a
										href="${pageContext.request.contextPath }
								/manager.do?revCurrentPage=${res.resRev.pagingRev.blockEnd+1}">&gt;</a></li>
								</c:if>
								<c:if
									test="${res.resRev.pagingRev.blockEnd ge res.resRev.pagingRev.lastPage }">
									<li><a
										href="${pageContext.request.contextPath }
								/manager.do?revCurrentPage=${res.resRev.pagingRev.blockEnd}">&gt;</a></li>
								</c:if>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
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