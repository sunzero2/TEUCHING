<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
	
<header
	class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
	id="ftco-navbar">
	<div class="container">
		<div class="row m-auto">
			<div class="col-12 w-100 text-center">
				<a class="navbar-brand w-100" href="/teuching/index/index.do">TeuChing</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#ftco-nav" aria-controls="ftco-nav"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="oi oi-menu"></span> Menu
				</button>
			</div>
			<div class="col-12 w-100 text-center">
				<div class="collapse navbar-collapse" id="ftco-nav">
					<ul class="navbar-nav m-auto">
						<li class="nav-item active"><a href="#" class="nav-link">Home</a></li>
						<li class="nav-item active"><a
							href="/teuching/matching/main.do" class="nav-link">matching</a></li>
						<li class="nav-item active"><a href="#" class="nav-link">MyPage</a></li>
						<li class="nav-item active"><a href="#" class="nav-link">MyPage</a></li>
						<li class="nav-item active"><a
							href="<%=request.getContextPath()%>/profile/review.do"
							class="nav-link">MyPage</a></li>
						<li class="nav-item active"><a
							href="<%=request.getContextPath()%>/mypage/review.do"
							class="nav-link">MyPage</a></li>
						<!--   <li class="nav-item"><a href="#" class="nav-link">Contact</a></li> -->
						<li class="nav-item active"><a href="#" class="nav-link">MyPage</a></li>
					</ul>
				</div>
			</div>
		</div>

		<div class="topWrapper" id="topWrapper"
			style="position: absolute; top: 1vw; right: 1vw;">
			<c:if test="${loginInfo == null}">
				<div class="topLogin">
					<a href="<%=request.getContextPath()%>/member/login.do">Login /
					</a> <a href="<%=request.getContextPath()%>/member/join.do">Join</a>
				</div>
			</c:if>
			<c:if test="${loginInfo != null}">
				<div class="topLogOut">
				${member}
				<c:if test="${member eq 'member'}">
					<a href="<%=request.getContextPath()%>/mypage/mypage.do">${loginInfo.nickname}	님  환영합니다. </a>
					</c:if>
				<c:if test="${member eq 'trainer'}">
					<a href="<%=request.getContextPath()%>/mypage/mypage.do">${loginInfo.trainerName}  님  환영합니다. </a>
					</c:if>	
						<!-- <a>MyPage</a>  -->
						<a href="<%=request.getContextPath()%>/member/logout.do">/  logout</a>
				</div>
			</c:if>
			<!-- Call Modal Button -->
			<a id="login" data-toggle="modal" data-target="#modal" role="button"> <i class="material-icons">모달테스트중...</i></a>




		</div>
	</div>

	<!-- 모달 스크립트문  -->
	<script type="text/javascript">
		$(".modal-content").load("loginModal");
	</script>




</header>
<!-- END header -->

	<!-- Modal 떠오르는 창 -->
<div id="modal" class="modal fade" tabindex="-1" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content"></div>
	</div>
</div>








