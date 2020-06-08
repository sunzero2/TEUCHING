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

<style>
	html, body, form {
	width: 99%;
	height: 93%;
	background-color: #d9edf7;
	padding-bottom:1%;
}

.wrapper {
	height: 77%;
	width: 84%;
	text-align: center;
	transform:translateX(10%);
}

p {
	font-size: 6vw;
	font-weight: 500;
	color: pink;
}

#msgdiv {
	width:92%;
	height: 200px;
	text-align: left;
	padding: 2% 2% 2% 2%;
	background-color: white;
	border: 1px solid pink;
}

#titlediv {
	width: 94%;
	height: 10%;
	margin-bottom: 2%;
	text-align: left;
	padding-left: 2%;
	background-color: white;
}

#btn {
	float: right;
	background-color: pink;
	color: white;
	border:none;
	height:35px;
	width:67px;
}
</style>
</head>
<body>
	<form
		action="${pageContext.request.contextPath }/message/sendmessage.do">
		<div class="wrapper">
			<p>쪽지 확인</p>
			<div id="titlediv" style="border: 1px solid pink">안녕하세요!!~!</div>
			<div id="msgdiv">하하하핳하하하하하ㅏ하하 예약 가능하십니더!!</div>
			<br> 
			<input type="hidden" name="tr_email" value="1111">
			<input type="hidden" name="mem_email" value="2222">
			<button type="submit" class="btn btn-outline-primary" id="btn">답장하기</button>
		</div>
	</form>
</body>
</html>