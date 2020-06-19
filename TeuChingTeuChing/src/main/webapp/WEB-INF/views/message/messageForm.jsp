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
<style>
body, html, form {
	width: 95%;
	height:80%;
}

textarea {
	transform: translateX(10%);
	height: 150px;
	width: 90%;
	margin-bottom:3%;
	border:1px solid lightgray;
	border-radius:4px;
}

button {
	height: 35px;
	width: 70px;
	font-size: 2.5vw;
	border: 1px solid lightgray;
	background-color: white;
	float: right;
	transform: translateX(3%);
}

h1 {
	transform: translateX(10%);
}
</style>
</head>

<body>
	<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
	<script
		src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
	<script type='text/javascript' src='//code.jquery.com/jquery-1.8.3.js'></script>
	<script type='text/javascript'
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.min.js"></script>
	<script src="/js/bootstrap-datepicker.kr.js" charset="UTF-8"></script>
</head>

<body>
	<form
		action="${pageContext.request.contextPath }/message/matchformsend.do">
		<div class="container">
			<h1>Send Message</h1>
			<textarea name="msg_cont" id="textarea" placeholder="내용을 입력해주세요"></textarea>
			<br> <input type="hidden" name="tr_email"
				value="TEST1@naver.com">
			<button id="btn">신청하기</button>
		</div>
	</form>
</body>
</html>