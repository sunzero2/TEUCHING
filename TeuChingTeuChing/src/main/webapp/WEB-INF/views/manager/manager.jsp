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
	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
		<div class="container">
			<div class="row m-auto">
				<div class="col-12 w-100 text-center">
					<a class="navbar-brand w-100" href="index.html">Meditative</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#ftco-nav" aria-controls="ftco-nav"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="oi oi-menu"></span> Menu
					</button>
				</div>
				<div class="col-12 w-100 text-center">
					<div class="collapse navbar-collapse" id="ftco-nav">
						<ul class="navbar-nav m-auto">
							<li class="nav-item"><a href="index.html" class="nav-link">Home</a></li>
							<li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
							<li class="nav-item"><a href="trainer.html" class="nav-link">Trainer</a></li>
							<li class="nav-item"><a href="classes.html" class="nav-link">Classes</a></li>
							<li class="nav-item"><a href="schedule.html"
								class="nav-link">Schedule</a></li>
							<li class="nav-item active"><a href="blog.html"
								class="nav-link">Blog</a></li>
							<li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</nav>
	<!-- END nav -->

	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<!------ Include the above in your HEAD tag ---------->

	<div class="container">

		<div class="row">

			<div class="col-md-3">
				<ul class="nav nav-pills nav-stacked admin-menu">
					<li class="active"><a href="" data-target-id="profile"><i
							class="glyphicon glyphicon-user"></i> 게시글 신고</a></li>
					<li><a href="" data-target-id="change-password"><i
							class="glyphicon glyphicon-lock"></i> 트레이너 신고</a></li>
				</ul>
			</div>

			<div class="col-md-9  admin-content" id="profile">
				<c:forEach items="${viewReportList }" var="vr">
					<div class="panel panel-info" style="margin: 1em;">
						<div class="panel-heading">
							<h3 class="panel-title">${ vr.report_date}</h3>
						</div>
						<div class="panel-body">${vr.rep_cont }</div>
					</div>
				</c:forEach>
				<div class="row mt-5">
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


			<div class="col-md-9  admin-content" id="change-password">


				<div class="panel panel-info" style="margin: 1em;">
					<div class="panel-heading">
						<h3 class="panel-title">
							<label for="new_password" class="control-label panel-title">
								트레이너가 이상해요</label>
						</h3>
					</div>
					<div class="panel-body">
						<div class="form-group">
							<div class="col-sm-10">
								<label for="new_password" class="control-label panel-title">
									자꾸 연락하고 어쩌구 저쩌고 보고싶다 막 ㅜ..ㅠ</label>
							</div>
						</div>

					</div>
				</div>


				<div class="panel panel-info" style="margin: 1em;">
					<div class="panel-heading">
						<h3 class="panel-title">
							<label for="confirm_password" class="control-label panel-title">
								트레이너가 이상해요</label>
						</h3>
					</div>
					<div class="panel-body">
						<div class="form-group">
							<div class="col-sm-10">ㅇㄴㄹㄴㅇㄹㄴㅇ</div>
						</div>
					</div>
				</div>
				<div class="row mt-5">
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

	</div>


	<script>
		$(document).ready(function() {
			var navItems = $('.admin-menu li > a');
			var navListItems = $('.admin-menu li');
			var allWells = $('.admin-content');
			var allWellsExceptFirst = $('.admin-content:not(:first)');
			allWellsExceptFirst.hide();
			navItems.click(function(e) {
				e.preventDefault();
				navListItems.removeClass('active');
				$(this).closest('li').addClass('active');
				allWells.hide();
				var target = $(this).attr('data-target-id');
				$('#' + target).show();
			});
		});
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