<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
html, body, form {
	height: 100%: 
	width:100%;
	margin-left: 3%;
}

.wrapper {
	height: 100%;
	width: 98%;
	margin-left: 3%;
}

#text {
	border: 1px solid black;
	height: 75px;
	width: 90%;
	border-radius: 4px;
	border: 1px solid lightgray;
}

a {
	margin-left: 1%;
	text-decoration: none;
}

#textarea {
	width: 89%;
	height: 75px;
	border-radius: 4px;
	border: 1px solid lightgray;
	margin-top: 3%;
	font-size:3vw;
}

#btn {
	width: 75px;
	height: 35px;
	float: right;
	transfrom: translateX(-10%);
	left: 20%;
	margin-top: 2%;
	border:1px solid lightgray;
	background-color:white;
}

h1{
	font-weight:500;
}
</style>
</head>
<body>
	<div class="wrapper">
		<h1>상담요청</h1>
		<p id="p">
			Date 02-24 13:00 
			<a title="수락 시 매칭이 성사됩니다" id="a" href="">수락</a>
		</p>
		<div id="text">이날 예약 가능한가요</div>
		<textarea id="textarea" placeholder="내용을 입력해주세요"></textarea>
		<button id="btn" style="transform: translateX(-52%)">작성완료</button>
	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.js"
		integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
		crossorigin="anonymous"></script>
</body>
</html>