<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
html, body, form {
	height: 96%;
	width: 96%;
	margin-left: 3%;
}

.wrapper {
	height: 100%;
	width: 98%;
	margin-left: 3%;
}

#text {
	border: 1px solid black;
	height: 145px;
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
	font-size: 3vw;
}

#btn {
	width: 75px;
	height: 35px;
	float: right;
	transform: translateX(-10%);
	left: 20%;
	margin-top: 2%;
	border: 1px solid lightgray;
	background-color: white;
	outline:0;
	cursor:pointer;
}

h1 {
	font-weight: 500;
}
</style>
</head>
<body>
	<div class="wrapper">
		<h1>상담요청</h1>
		<p>✅ 수락된 요청 입니다</p>
		<!-- <p>❎ 요청 대기중 입니다</p> -->
		<p id="p">
			Date 02-24 13:00
		</p>
		<div id="text">네 가능하십니다</div>
		<button id="btn" style="transform: translateX(-52%)">답장하기</button>
	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.js"
		integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
		crossorigin="anonymous"></script>
</body>
</html>