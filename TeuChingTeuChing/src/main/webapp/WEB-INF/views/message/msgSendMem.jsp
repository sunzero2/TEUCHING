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
</head>

<style>
#time, #date {
	border: 1px solid lightgray;
	border-radius: 4px;
	width: 163px;
	height: 24px;
	font-family: "나눔고딕";
	font-weight: bold;
	color: gray;
}

#cont {
	margin-top: 3%;
	height: 140px;
	width: 90%;
	border: 1px solid lightgray;
	border-radius: 4px;
	padding: 1% 1% 1% 1%;
	font-family: "나눔고딕";
}
</style>
</head>

<body>
	<form style="transform: translateX(10%); width: 90%;"
		action="${pageContext.request.contextPath }/message/matchformsend.do">
		<div class="container">
			<h1>보낸쪽지</h1>
			Date
			<div style="width: 50%;">
				<div id="date">2020-02-02</div>
			</div>
			<div class="row">
				<div class="col-sm-4">
					Time <br>
					<div id="time">14:00</div>
				</div>
			</div>
			<div id="cont">이날 시간되나요 저꼭 트레이닝 받고싶숩다</div>
		</div>
	</form>
</body>
</body>
</html>