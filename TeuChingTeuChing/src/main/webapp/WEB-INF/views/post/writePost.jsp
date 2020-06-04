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
		<form action="/teuching/post/write.do" method="post" onsubmit="return submit_result();" class="postForm" enctype="multipart/form-data">
			<input type="hidden" name="trEmail" value="TEST1@naver.com">
			<input type="hidden" name="trainerName" value="TEST1">
			<div class="addImageWrapper">
				<div class="addImageDiv">
					<img src="../resources/img/addImage2.png" class="addImageIcon">
					<p class="addImageText">사진첨부</p>
					<input type="file" id="addImageHidden" name="images" onmouseover="changeImg();" onmouseout="resetImg();" onchange="preview(this);" multiple>
				</div>
			</div>
			<div>
				<div style="margin-top: 36px; margin-left: 50px; width: 1000px;">
					<div class="titleWrapper">
						<input class="titleInput" name="postTitle" placeholder="제목을 입력하세요.">
					</div>
					<hr>
					<div class="contentWrapper">
						<textarea class="contentInput" name="postCont" placeholder="내용을 입력하세요."></textarea>
					</div>
				</div>
			</div>
			<div>
				<div class="keywordWrapper">
					<p class="additional">매칭 키워드 선택</p>
					<p class="precautions">한 가지씩 꼭 선택해주세요!</p>
					<table class="keywordSearchTable">
						<tr>
							<th class="searchTableTh">가격</th>
							<td style="border-bottom: 1px solid #ffb5b7;"><input class="priceInput" type="text" name="price"></td>
						</tr>
						<tr>
							<th class="searchTableTh">수업목적</th>
							<td class="searchTableTd">
								<button type="button" class="keywordBtn" name="purpose" value="체형교정">체형교정</button>
								<button type="button" class="keywordBtn" name="purpose" value="건강증진">건강증진</button>
								<button type="button" class="keywordBtn" name="purpose" value="다이어트">다이어트</button>
								<button type="button" class="keywordBtn" name="purpose" value="바디프로필">바디프로필</button>
								<button type="button" class="keywordBtn" name="purpose" value="취미">취미</button>
								<button type="button" class="keywordBtn" name="purpose" value="대회준비">대회준비</button>
								<button type="button" class="keywordBtn" name="purpose" value="재활치료">재활치료</button>
								<button type="button" class="keywordBtn" name="purpose" value="벌크업">벌크업</button>
								<button type="button" class="keywordBtn" name="purpose" value="기초체력">기초체력</button>
								<button type="button" class="keywordBtn" name="purpose" value="시험준비">시험준비</button>
								<input type="hidden"name="purpose"  id="purpose">
							</td>
						</tr>
						<tr>
							<th class="searchTableTh">수업인원</th>
							<td class="searchTableTd">
								<button type="button" class="keywordBtn" name="classSize" value="1:1">1:1</button>
								<button type="button" class="keywordBtn" name="classSize" value="N:1">N:1</button>'
								<input type="hidden" name="classSize" id="classSize">
							</td>
						</tr>
						<tr>
							<th class="searchTableTh">장소</th>
							<td class="searchTableTd">
								<button type="button" class="keywordBtn" name="place" value="INDOOR EXERCIES">INDOOR EXERCIES</button>
								<button type="button" class="keywordBtn" name="place" value="OUTDOOR EXERCIES">OUTDOOR EXERCIES</button>
								<input type="hidden" name="place" id="place">
							</td>
						</tr>
					</table>
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