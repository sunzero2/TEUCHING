<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=EB+Garamond:400,400i,500,500i,600,600i,700,700i&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="../resources/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet"
	href="../resources/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="../resources/css/animate.css">
<link rel="stylesheet" href="../resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="../resources/css/owl.theme.default.min.css">
<link rel="stylesheet" href="../resources/css/magnific-popup.css">
<link rel="stylesheet" href="../resources/css/aos.css">
<link rel="stylesheet" href="../resources/css/ionicons.min.css">
<link rel="stylesheet" href="../resources/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="../resources/css/jquery.timepicker.css">
<link rel="stylesheet" href="../resources/css/flaticon.css">
<link rel="stylesheet" href="../resources/css/icomoon.css">
<link rel="stylesheet" href="../resources/css/style.css">
<link rel="stylesheet" href="../resources/css/matching/matching.css"/>
<link rel="stylesheet" href="../resources/css/post/post.css"/>
</head>
<body>
	<%@ include file="../include/top.jsp"%>
	<section style="margin-bottom: 40px;">
		<form action="/teuching/post/write.do" onsubmit="return submit_result();" class="postForm">
			<div class="addImageWrapper">
				<div class="addImageDiv">
					<img src="../resources/img/addImage2.png" class="addImageIcon">
					<p class="addImageText">사진첨부</p>
					<input type="file" id="addImageHidden" name="image" onmouseover="changeImg();" onmouseout="resetImg();" onchange="preview(this);" multiple>
				</div>
			</div>
			<div>
				<div style="margin-top: 36px; margin-left: 50px; width: 1000px;">
					<div class="titleWrapper">
						<input class="titleInput" name="title" placeholder="제목을 입력하세요.">
					</div>
					<hr>
					<div class="contentWrapper">
						<textarea class="contentInput" name="content" placeholder="내용을 입력하세요."></textarea>
					</div>
				</div>
			</div>
			<div class="previewWrapper">
				<p class="previewText">미리보기</p>
				<div class="pre_div">
				
				</div>
			<button class="uploadBtn">저장</button>
			</div>
		</form>
	</section>
	<script src="../resources/js/post/post.js"></script>
</body>
</html>