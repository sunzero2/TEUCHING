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
<link rel="stylesheet" href="resources/css/message/messageForm.css">
<style>
	html, body, form {
	width: 99%;
	height: 93%;
	background-color: #d9edf7;
	margin-top:-1.5%;
}

.wrapper {
	height: 90%;
	width: 84%;
	text-align: center;
	transform:translateX(5%);
	padding: 4% 1% 1% 3%;
}

p {
	font-size: 6vw;
	font-weight: 500;
	color: pink;
}

#msgdiv {
	height: 75%;
	text-align: left;
	padding: 1% 1% 1% 1%;
}

#msg-title {
	width: 100%;
	height: 15%;
	font-size: 3vw;
	margin-bottom: 2%;
	border: 1px solid pink;
}

#button {
	border: none;
	float: right;
	background-color: pink;
	color: white;
	height: 35px;
	width: 70px;
}

#textarea {
	width: 100%;
	height: 80%;
	margin-bottom: 3%;
	border: 1px solid pink;
}
</style>
</head>
<body>
	<form action="${pageContext.request.contextPath }/message/insertmessage.do">
		<div class="wrapper">
		<p>쪽지보내기</p>
			<div id="msgdiv">
				<input id="msg-title" type="text" name="msg_title" placeholder="제목을 입력해주세요"><br>
				<textarea name="msg_cont" id="textarea" style="font-size: 3vw;"></textarea>
				<br> 
				<input type="hidden" name="tr_email" value="${tr_email }">
				<input type="hidden" name="mem_email" value="${mem_email }">
				<button onclick="close()" class="btn btn-outline-primary" id="button">보내기</button>
			</div>
		</div>
	</form>
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