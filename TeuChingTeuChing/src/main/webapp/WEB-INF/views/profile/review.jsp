<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#star a {
	text-decoration: none;
	color: gray;
}

#star a.on {
	color: red;
}
}
</style>
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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
</head>

</head>
<body>

	<%@ include file="../include/top.jsp"%>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>



	<!-- 시작이오시작이오시작이오시작이오시작이오시작이오시작이오시작이오시작이오시작이오시작이오시작이오시작이오시작이오시작이오시작이오시작이오시작이오 -->


	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('../resources/img/bg_3.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate text-center">
					<h1 class="mb-3 bread">P r o f i l e</h1>
					<p class="breadcrumbs">
						<span class="mr-2"><a href="index.html">Home</a></span> <span
							class="mr-2"><a href="blog.html">Blog</a></span> <span>Blog
							Single</span>
					</p>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 ftco-animate">
					<h2 class="mb-3">누구누구의 프로필입니다 이런거 뜨게하자 굳ㅎㅎ</h2>


					<div class="about-author d-flex">
						<div class="bio align-self-md-center mr-5">
							<img src="../resources/img/person_2.jpg" alt="Image placeholder"
								class="img-fluid mb-4">
						</div>
						<div class="desc align-self-md-center">

							<!-- ===============버튼을 여기에 넣어보았습니다=================== -->
							<a
								href="${pageContext.request.contextPath }/report/viewreport.do?tr_email=1111
                     &mem_eamil=1111&nick_name=김지수&type=tra&reported=김김지수"
								class="reply">트레이너 신고</a>

							<!-- ===============버튼을 여기까지 넣어보았습니다=================== -->


							<h3>트레이너 이름!!!</h3>
							<p>트레이너 소개 소개소개ㅅ개트레이너 소개 소개소개ㅅ트레이너 소개 소개소개ㅅ트레이너 소개 소개소개ㅅ</p>
							<div class="tag-widget post-tag-container mb-5 mt-5">
								<div class="tagcloud">
									<a href="#" class="tag-cloud-link">Life</a> <a href="#"
										class="tag-cloud-link">Sport</a> <a href="#"
										class="tag-cloud-link">Tech</a> <a href="#"
										class="tag-cloud-link">Travel</a>
								</div>
								<br>
								<p>
									<a href="${pageContext.request.contextPath }/profile/schedule.do" class="reply">트레이너
										스케쥴러로 이동</a>
								</p>
							</div>
						</div>
					</div>



					<!-- 댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글 -->

					<div class="pt-5 mt-5">

						<!-- 코멘트 리스트 수 가져와서 뿌려 -->
						<h3 class="mb-5">${reviewList.paging.total} Comments</h3>

						<ul class="comment-list">


							<c:forEach items="${reviewList.rlist}" var="review">
								<li class="comment">
									<!-- 프사 별점별로 다르게 --> <c:choose>
										<c:when test="${review.rev_score < 3}">
											<div class="vcard bio">
												<img src="../resources/img/sad.png" alt="Image placeholder">
											</div>
										</c:when>

										<c:when test="${review.rev_score == 3}">
											<div class="vcard bio">
												<img src="../resources/img/soso.png" alt="Image placeholder">
											</div>
										</c:when>

										<c:otherwise>
											<div class="vcard bio">
												<img src="../resources/img/smile.png"
													alt="Image placeholder">
											</div>
										</c:otherwise>
									</c:choose>


									<div class="comment-body">
										<h5>${review.mem_nickname}</h5>
										<input type="button" value="좋아요" id="likecnt"/>
										<i class="fas fa-heart" style="font-size:16px;color:grey"></i>
										<span id="recommendcnt">${review.recommend}</span>
										<div class="meta">${review.rev_date}</div>
										<p>${review.rev_cont}</p>

										<a
											href="${pageContext.request.contextPath }/report/viewreport.do?tr_email=2222&mem_email=222&nick_name=김지수&type=rev&reported=김김지수"
											class="reply">리뷰신고</a>

									</div>
									
									
								</li>
							</c:forEach>
						</ul>


						<div class="row mt-5" style="transform: translateX(25%)">
						<div class="col">
								<div class="block-27">
								<ul>
										<c:if test="${reviewList.paging.blockStart gt 1 }">
											<li><span><a href="<%=request.getContextPath()%>/profile/review.do?reviewPage=${reviewList.paging.blockStart-1}">&lt;</a></span></li>
										</c:if>

										<c:if test="${reviewList.paging.blockStart le 1 }">
											<li><span><a href="<%=request.getContextPath()%>/profile/review.do?reviewPage=${reviewList.paging.blockStart}">&lt;</a></span></li>
										</c:if>


										<c:forEach begin="${reviewList.paging.blockStart}" end="${reviewList.paging.blockEnd}" var="page">
											<li class="active"><span><a
												href="<%= request.getContextPath() %>/profile/review.do?reviewPage=${page}"
												class="num active">${page}</a></span></li>
										</c:forEach>

										<c:if test="${reviewList.paging.blockEnd+1 ge reviewList.paging.lastPage}">
											<li><span><a
												href="<%= request.getContextPath() %>/profile/review.do?reviewPage=${reviewList.paging.blockEnd}">&gt;</a></span></li>
										</c:if>
										<c:if test="${reviewList.paging.blockEnd+1 lt reviewList.paging.lastPage }">
											<li><span><a
												href="<%= request.getContextPath() %>/profile/review.do?reviewPage=${reviewList.paging.blockEnd+1}">&gt;</a></span></li>
										</c:if>

									</ul>
								</div>
							</div>
						</div>

						<!-- END comment-list -->



						<!-- 댓글쓰기댓글쓰기댓글쓰기댓글쓰기댓글쓰기댓글쓰기댓글쓰기댓글쓰기댓글쓰기댓글쓰기댓글쓰기댓글쓰기댓글쓰기댓글쓰기댓글쓰기댓글쓰기댓글쓰기댓글쓰기댓글쓰기댓글쓰기댓글쓰기댓글쓰기댓글쓰기댓글쓰기댓글쓰기댓글쓰기댓글쓰기 -->


						<div class="comment-form-wrap pt-5">
							<h3 class="mb-5">Leave a comment</h3>
							<form
								action="${pageContext.request.contextPath }/review/uploadreview"
								method="post" enctype="multipart/form-data">
								
								<div class="form-group">
									<label for="memNickname">Nickname</label> <input type="hidden"
										class="form-control bg-white" id="memNickname"
										name="memNickname">
										<div style="transform: translateX(1%)">${loginInfo.nickname}</div>
								</div>
								
								<div class="form-group">
									<label for="reviewPw">Password</label> <input type="text"
										class="form-control" id="reviewPw" name="reviewPw">
								</div>
								
								<div class="form-group">
									<label for="revScore">Star rating</label>
									<div id="star" name="revScore">
										<a href="#a" value="1">★</a> <a href="#a" value="2">★</a> <a
											href="#a" value="3">★</a> <a href="#a" value="4">★</a> <a
											href="#a" value="5">★</a>
									</div>
								</div>

								<div class="form-group">
									<label for="revCont">Review</label>
									<textarea id="revCont" cols="30" rows="10" class="form-control"
										name="revCont"></textarea>
								</div>

								<div class="form-group">
									<input type="submit" value="Post Comment"
										class="btn py-3 px-4 btn-primary">
								</div>

							</form>
						</div>
					</div>
				</div>

				<!-- 댓글쓰기끝댓글쓰기끝댓글쓰기끝댓글쓰기끝댓글쓰기끝댓글쓰기끝댓글쓰기끝댓글쓰기끝댓글쓰기끝댓글쓰기끝댓글쓰기끝댓글쓰기끝댓글쓰기끝댓글쓰기끝댓글쓰기끝댓글쓰기끝댓글쓰기끝댓글쓰기끝댓글쓰기끝댓글쓰기끝-->





				<!-- .col-md-8  여기서부터 오른쪽 카테고리 -->
				<div class="col-lg-4 sidebar ftco-animate">
					<div class="sidebar-box"></div>
					<div class="sidebar-box ftco-animate">
						<div class="categories">
							<h3 class="heading-2">Categories</h3>
							<li><a href="#">Workout <span>(12)</span></a></li>
							<li><a href="#">Gym <span>(22)</span></a></li>
							<li><a href="#">Crossfit <span>(37)</span></a></li>
							<li><a href="#">Body Fit <span>(42)</span></a></li>
							<li><a href="#">Fitness <span>(14)</span></a></li>
							<li><a href="#">Yoga <span>(140)</span></a></li>
						</div>
					</div>



					<!-- -----------최근 게시글--------------------- -->
					<div class="sidebar-box ftco-animate">
						<h3 class="heading-2">Recent Blog</h3>
						<div class="block-21 mb-4 d-flex">
							<a class="blog-img mr-4"
								style="background-image: url(../resources/img/image_1.jpg);"></a>
							<div class="text">
								<h3 class="heading">
									<a href="#">Even the all-powerful Pointing has no control
										about the blind texts</a>
								</h3>
								<div class="meta">
									<div>
										<a href="#"><span class="icon-calendar"></span> Sept. 25,
											2019</a>
									</div>
									<div>
										<a href="#"><span class="icon-person"></span> Admin</a>
									</div>
									<div>
										<a href="#"><span class="icon-chat"></span> 19</a>
									</div>
								</div>
							</div>
						</div>
						<div class="block-21 mb-4 d-flex">
							<a class="blog-img mr-4"
								style="background-image: url(../resources/img/image_2.jpg);"></a>
							<div class="text">
								<h3 class="heading">
									<a href="#">Even the all-powerful Pointing has no control
										about the blind texts</a>
								</h3>
								<div class="meta">
									<div>
										<a href="#"><span class="icon-calendar"></span> Sept. 25,
											2019</a>
									</div>
									<div>
										<a href="#"><span class="icon-person"></span> Admin</a>
									</div>
									<div>
										<a href="#"><span class="icon-chat"></span> 19</a>
									</div>
								</div>
							</div>
						</div>
						<div class="block-21 mb-4 d-flex">
							<a class="blog-img mr-4"
								style="background-image: url(../resources/img/image_3.jpg);"></a>
							<div class="text">
								<h3 class="heading">
									<a href="#">Even the all-powerful Pointing has no control
										about the blind texts</a>
								</h3>
								<div class="meta">
									<div>
										<a href="#"><span class="icon-calendar"></span> Sept. 25,
											2019</a>
									</div>
									<div>
										<a href="#"><span class="icon-person"></span> Admin</a>
									</div>
									<div>
										<a href="#"><span class="icon-chat"></span> 19</a>
									</div>
								</div>
							</div>
						</div>
					</div>


				</div>

			</div>
		</div>
	</section>
	<!-- .section -->



	<!-- -----------------------------------끝-------------------------------------------- -->



	<script>
		$('#star a').click(function() {
			$(this).parent().children("a").removeClass("on");
			$(this).addClass("on").prevAll("a").addClass("on");
			console.log($(this).attr("value"));
		});
		
	</script>
	

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
	<script src="../resources/js/main.js"></script>


</body>
</html>