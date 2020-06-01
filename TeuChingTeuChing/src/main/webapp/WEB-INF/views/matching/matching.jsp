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
<style>
.postlist {
	width: 300px;
}

.keywordBtn {
	background: #ffb5b5;
	border: 1px solid #ffb5b5;
	color: white;
}

.keywordBtn:hover {
	color: white;
}
</style>
</head>
<body onload="reset()">
<%@ include file="../include/top.jsp" %>
	<section class="ftco-section">
		<div class="container">
			<div class="row">
				<!-- .col-md-8 -->
				<div class="col-lg-4 sidebar ftco-animate" style="margin-left: 14%;">
					<div class="sidebar-box">
						<form action="#" class="search-form" style="width: 530px; margin-left: 83px">
							<select id="searchOption" style="border: 1px solid #ffb5b5; border-radius: 20px; color: #7b5e5e;">
								<option value="trainer">트레이너</option>
								<option value="post">게시판</option>
							</select>
							<div class="form-group">
								<div class="icon">
									<span class="icon-search"></span>
								</div>
								<input type="text" id="keywordInput" class="form-control"
									placeholder="검색어를 입력하세요.">
							</div>
						</form>
					</div>
					<button
						style="position: absolute; margin-top: 23%; margin-left: 317px;"
						id="inputBtn" class="btn btn-outline-primary">Search</button>
				</div>
			</div>
		</div>
	</section>
	<!-- .section -->
	<section>
		<div class="sidebar-box ftco-animate" style="margin-left: 31%;">
			<h3 class="heading-2">Tag로 검색하기</h3>
			<div class="tagcloud">
				<button type="button" class="btn keywordBtn" id="btn01">
					<input type="hidden" class="keywordChk" id="chk01">dish
				</button>
				<button type="button" class="btn keywordBtn" id="btn02">
					<input type="hidden" class="keywordChk" id="chk02">dish
				</button>
				<button type="button" class="btn keywordBtn" id="btn03">
					<input type="hidden" class="keywordChk" id="chk03">dish
				</button>
				<button type="button" class="btn keywordBtn" id="btn04">
					<input type="hidden" class="keywordChk" id="chk04">dish
				</button>
				<button type="button" class="btn keywordBtn" id="btn05">
					<input type="hidden" class="keywordChk" id="chk05">dish
				</button>
				<button type="button" class="btn keywordBtn" id="btn06">
					<input type="hidden" class="keywordChk" id="chk06">dish
				</button>
				<button type="button" class="btn keywordBtn" id="btn07">
					<input type="hidden" class="keywordChk" id="chk07">dish
				</button>
				<button type="button" class="btn keywordBtn" id="btn08">
					<input type="hidden" class="keywordChk" id="chk08">dish
				</button>
				<button type="button" class="btn keywordBtn" id="btn09">
					<input type="hidden" class="keywordChk" id="chk09">dish
				</button>
				<button type="button" class="btn keywordBtn" id="btn10">
					<input type="hidden" class="keywordChk" id="chk10" value="dish">dish
				</button>
				<button
					style="position: absolute; margin-top: 4%; margin-left: 2.2%;"
					id="keywordSearchBtn" class="btn btn-outline-primary">Search</button>
			</div>
		</div>
	</section>
	<section style="margin-top: 13%;">
		<table style="margin-left: 25%;">
			<tr class="blog-entry blog-entry-2 justify-content-end col-md-12 ftco-animate">
				<td>
					<div class="img rounded-circle mb-2"
						style="background-image: url(../resources/img/classes-1.jpg); width: 116px; height: 141px; margin-top: 54px;"></div>
				</td>
				<td>
					<div class="text pl-md-4 ml-md-2 pt-4" style="width: 853px;">
						<div class="meta">
							<div>
								<a href="#">Sept. 28, 2019</a>
							</div>
							<div>
								<a href="#">Admin</a>
							</div>
							<div>
								<a href="#" class="meta-chat"><span class="icon-chat"></span>
									3</a>
							</div>
						</div>
						<h3 class="heading mt-2">
							<a href="#">Is wellness the new luxury</a>
						</h3>
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia, there live the blind texts.
							Separated they live in Bookmarksgrove right at the coast of the
							Semantics, a large language ocean.</p>
						<p>
							<a href="#" class="btn btn-outline-primary">Learn more</a>
						</p>
					</div>
				</td>
			</tr>
			<tr class="blog-entry blog-entry-2 justify-content-end col-md-12 ftco-animate">
				<td>
					<div class="img rounded-circle mb-2"
						style="background-image: url(../resources/img/classes-1.jpg); width: 116px; height: 141px; margin-top: 54px;"></div>
				</td>
				<td>
					<div class="text pl-md-4 ml-md-2 pt-4" style="width: 853px;">
						<div class="meta">
							<div>
								<a href="#">Sept. 28, 2019</a>
							</div>
							<div>
								<a href="#">Admin</a>
							</div>
							<div>
								<a href="#" class="meta-chat"><span class="icon-chat"></span>
									3</a>
							</div>
						</div>
						<h3 class="heading mt-2">
							<a href="#">Is wellness the new luxury</a>
						</h3>
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia, there live the blind texts.
							Separated they live in Bookmarksgrove right at the coast of the
							Semantics, a large language ocean.</p>
						<p>
							<a href="#" class="btn btn-outline-primary">Learn more</a>
						</p>
					</div>
				</td>
			</tr>
		</table>
		<div class="row mt-5" style="margin-left: 41%;">
			<div class="col">
				<div class="block-27">
					<ul>
						<li><a href="#">&lt;</a></li>
						<li class="active"><span>1</span></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">&gt;</a></li>
					</ul>
				</div>
			</div>
		</div>
		</div>
		<!-- .col-md-8 -->
	</section>
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
	<script src="../resources/js/main.js"></script>
	<script src="../resources/js/matching/matching.js"></script>
</body>
</html>