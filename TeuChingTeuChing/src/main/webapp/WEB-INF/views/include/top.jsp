<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header
	class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
	id="ftco-navbar">
	<div class="container">
		<div class="row m-auto">
			<div class="col-12 w-100 text-center">
				<a class="navbar-brand w-100" href="index.html">TeuChing</a>
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
						<li class="nav-item active"><a href="#" class="nav-link">MyPage</a></li>
						<!--   <li class="nav-item"><a href="#" class="nav-link">Contact</a></li> -->
					</ul>
				</div>
			</div>

			<%-- 			<div class="topLogin">
				<div class="wrap">
					<div class="memberBox">
						<div class="login">
							<form action="<%=request.getContextPath()%>/member/loginimple.do"
								method="post">
								<p>사용자이름</p>
								<input class="loginText" type="text" name="id" /> <span
									id="checkMsg" class="checkMsg"></span>
								<p>비밀번호</p>
								<input class="loginText" type="password" name="pw" /> <span
									class="btn">
									<button>LogIn</button>
								</span>
							</form>
						</div>
					</div>
				</div>
			</div> --%>



		</div>
		
					<div class="topWrapper">
				<c:if test="${logInInfo == null}">
					<div class="topLogin">
						<a href="<%=request.getContextPath()%>/member/login.do">로그인/</a> <a
							href="<%=request.getContextPath()%>/member/join.do">회원가입</a>
					</div>
				</c:if>
				<c:if test="${logInInfo != null}">
					<div class="topLogOut">
						<a href="<%=request.getContextPath()%>/mypage/mypage.do">${sessionScope.logInInfo.m_id}님
							환영합니다. MyPage</a> <a
							href="<%=request.getContextPath()%>/member/logout.do">logOut</a>
					</div>
				</c:if>
			</div>
		
		
		
	</div>
</header>
<!-- END header -->
