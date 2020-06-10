<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Teu-Ching Teu-Ching</title>
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700&display=swap"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=EB+Garamond:400,400i,500,500i,600,600i,700,700i&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="../resources/css/open-iconic-bootstrap.min.css">
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
<link rel="stylesheet" href="../resources/css/notice/notice.css"/>
</head>
<body>
	<%@ include file="../include/top.jsp"%>
	<section>
		<h1>Notice</h1>
			<c:if test="${nList != null}">
				<table>
					<tr>
						<th class="tableHead" style="width: 260px;">제목</th>
						<th class="tableHead" style="width: 700px;">내용</th>
						<th class="tableHead">작성일자</th>
						<th class="tableHead">작성자</th>
					</tr>
				<c:forEach items="${nList}" var="notice">
						<tr>
							<td class="tableBody"><a class="noticeTitle" href="/teuching/notice/detail.do?noticeIdx=${notice.noticeIdx}">${notice.noticeTitle}</a></td>
							<td class="tableBody">${notice.noticeCont}</td>
							<td class="tableBody tableSmaller">${notice.writeDate}</td>
							<td class="tableBody tableSmaller">TEUCHING</td>
						</tr>
				</c:forEach>
				</table>
			</c:if>
	</section>
	<%@ include file="../include/footer.jsp"%>
	<script src="../resources/js/jquery.min.js"></script>
	<script src="../resources/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="../resources/js/popper.min.js"></script>
	<script src="../resources/js/bootstrap.min.js"></script>
	<script src="../resources/js/jquery.easing.1.3.js"></script>
	<script src="../resources/js/jquery.waypoints.min.js"></script>
	<script src="../resources/js/jquery.stellar.min.js"></script>
	<script src="../resources/js/owl.carousel.min.js"></script>
	<script src="../resources/js/jquery.magnific-popup.min.js"></script>
	<script src="../resources/js/aos.js"></script>
	<script src="../resources/js/jquery.animateNumber.min.js"></script>
	<script src="../resources/js/bootstrap-datepicker.js"></script>
	<script src="../resources/js/jquery.timepicker.min.js"></script>
	<script src="../resources/js/scrollax.min.js"></script>
	<script src="../resources/js/notice/notice.js"></script>
	<script src="../resources/js/main.js"></script>
</body>
</html>