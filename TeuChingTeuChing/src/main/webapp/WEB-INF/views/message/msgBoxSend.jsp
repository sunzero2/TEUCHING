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

<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700&display=swap"
	rel="stylesheet">

<link
	href="https://fonts.googleapis.com/css?family=EB+Garamond:400,400i,500,500i,600,600i,700,700i&display=swap"
	rel="stylesheet">

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
<link rel="stylesheet" href="../resources/css/message/msgBoxSend.css">
</head>
<body>
	<%@ include file="../include/top.jsp"%>

	<div class="wrapper">
		<div class="innerwrapper">
			<div class="menu">
				<a
					style="float: left; border-bottom: 2px solid lightgray; color: black"
					href="${pageContext.request.contextPath }/message/msgboxrecv.do">
					📬 받은쪽지</a> <a
					style="float: right; border-bottom: 2px solid pink; color: black"
					href="${pageContext.request.contextPath }/message/msgboxsend.do">
					📪 보낸쪽지</a>
			</div>
			<div id="table">
				<table>
					<thead>
						<tr>
							<th>Num</th>
							<th>Title</th>
							<th>To</th>
							<th>Date</th>
						</tr>
					</thead>
					<tbody id="tbody">
						<c:forEach items="${res.msg }" var="msg">
							<tr>
								<td>1</td>
								<td id="title"><button onclick="openPopUp();" id="btn">${msg.msg_cont }</button></td>
								<c:if test="${msg.writer eq 'Trainer' }">
									<td>${msg.mem_email }</td>
								</c:if>
								<c:if test="${msg.writer eq 'Member' }">
									<td>${msg.tr_email }</td>
								</c:if>
								<td>${msg.write_date }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="col">
					<div class="block-27">
						<ul>
							<c:if test="${res.paging.blockStart le 1 }">
								<li><a
									href="${pageContext.request.contextPath }/message/msgboxsend.do?currentpage=${res.paging.blockStart}">&lt;</a></li>
							</c:if>
							<c:if test="${res.paging.blockStart gt 1 }">
								<li><a
									href="${pageContext.request.contextPath }/message/msgboxsend.do?currentpage=${res.paging.blockStart-1}">&lt;</a></li>
							</c:if>

							<c:forEach begin="${res.paging.blockStart }"
								end="${res.paging.blockEnd }" var="p">
								<c:if test="${res.paging.currentPage eq p }">
									<li class="active"><a
										href="${pageContext.request.contextPath }/message/msgboxsend.do?currentpage=${p}">${p }</a></li>
								</c:if>
								<c:if test="${res.paging.currentPage ne p }">
									<li><a
										href="${pageContext.request.contextPath }/message/msgboxsend.do?currentpage=${p}">${p }</a></li>
								</c:if>
							</c:forEach>

							<c:if test="${res.paging.blockEnd lt res.paging.lastPage }">
								<li><a
									href="${pageContext.request.contextPath }/message/msgboxsend.do?currentpage=${res.paging.blockEnd+1}">&gt;</a></li>
							</c:if>
							<c:if test="${res.paging.blockEnd ge res.paging.lastPage }">
								<li><a
									href="${pageContext.request.contextPath }/message/msgboxsend.do?currentpage=${res.paging.blockEnd}">&gt;</a></li>
							</c:if>
						</ul>
					</div>
				</div>
			</div>
		</div>

	</div>

	<form id="form"
		action="${pageContext.request.contextPath }/message/msgsenddetail.do"
		target="pop"></form>

	<script>
		function openPopUp() {
			const form = document.querySelector('#form');
			window
					.open("", 'pop',
							'width=450,height=380,left=420,top=150,toolbars=no,scrollbars=no');
			form.submit();
		}
	</script>
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
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="../resources/js/google-map.js"></script>
	<script src="../resources/js/main.js"></script>
</body>
</html>