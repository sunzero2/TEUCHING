<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Teu-Ching Teu-Ching</title>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<style>
html, body, form {
	height: 96%;
	width: 95%;
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
	padding: 1% 1% 1% 1%;
}

a {
	margin-left: 1%;
	text-decoration: none;
}

#textarea {
	width: 90%;
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
	transform: translateX(-37%);
	left: 20%;
	margin-top: 2%;
	border: 1px solid lightgray;
	background-color: white;
}

h1 {
	font-weight: 500;
}

#p {
	height: 8%;
	width: 40%;
	border: 1px solid lightgray;
	border-radius: 4px;
}

#matchbtn{
	border:none;
	background-color:white;
}
</style>
</head>
<body>

	<form action="${pageContext.request.contextPath }/message/msganstra.do">
		<div class="wrapper">
			<h2>상담요청</h2>
			<h5> | ${res.write_date} | ${res.mem_email }</h5>
			<ul class="nav navbar-nav">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">요청내역 <span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						<c:forEach items="${match }" var="m">
							<li><a onclick="match(${m.match_idx});"
								id="match${m.match_idx }" data-match_date="${m.match_date }"
								data-match_time="${m.match_time }"> 
										<c:if test="${m.match_yn eq 'N' }">❎</c:if> 
										<c:if test="${m.match_yn eq 'Y' }">✅</c:if> 
										${m.match_date }
									${m.match_time }
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<c:if test="${m.match_yn eq 'N' }"><button id="matchbtn" type="button">수락</button></c:if> 
										<c:if test="${m.match_yn eq 'Y' }"><button id="matchbtn" type="button">수락완료</button></c:if> 
									
							</a></li>
						</c:forEach>
					</ul></li>
			</ul>
			<div id="text">${res.msg_cont }</div>
			<textarea name="msg_cont" id="textarea" placeholder="내용을 입력해주세요"></textarea>
			<button id="btn" style="transform: translateX(-52%)">작성완료</button>
			<input type="hidden" name="mem_email" value="${res.mem_email }">
			<input type="hidden" name="nick_name" value="${res.nick_name }">
		</div>
		<script src="https://code.jquery.com/jquery-3.5.1.js"
			integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
			crossorigin="anonymous"></script>
		<script>
			$(document).ready(
					function() {
						$(".dropdown").hover(
								function() {
									$('.dropdown-menu', this).not(
											'.in .dropdown-menu').stop(true,
											true).slideDown("fast");
									$(this).toggleClass('open');
								},
								function() {
									$('.dropdown-menu', this).not(
											'.in .dropdown-menu').stop(true,
											true).slideUp("fast");
									$(this).toggleClass('open');
								});
					});
					
				function match(match_idx){
					if(confirm("수락하시겠습니까?")){
						$.ajax({
							url:"${pageContext.request.contextPath}/message/msgaccept.do?match_idx=" + match_idx,
							type:"get",
							success: function(data){
								if(data == 'success'){
									const match_date = $('#match' + match_idx).data("match_date");
									const match_time = $('#match' + match_idx).data("match_time")
									alert('수락완료');
									$('#match' + match_idx).html('✅ ' + match_date + " " + match_time 
											+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+ "수락완료");
								}else{
									alert('이미 수락된 매칭입니다');
								}
							}
						});
					}
				}
			
		</script>

	</form>
</body>
</html>