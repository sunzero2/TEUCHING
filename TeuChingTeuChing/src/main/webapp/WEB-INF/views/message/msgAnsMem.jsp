<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Teu-Ching Teu-Ching</title>
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
		<h1>답장</h1>
		<textarea id="textarea" placeholder="내용을 입력해주세요"></textarea>
		<button id="btn" style="transform: translateX(-52%)">작성완료</button>
	</div>
</body>
</html>