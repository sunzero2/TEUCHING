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

</head>
<body>

	<%@ include file="../include/top.jsp"%>




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
					<h2 class="mb-3">여기에 트레이너 이름 나오게 할래요</h2>


					<div class="about-author d-flex">
						<div class="bio align-self-md-center mr-5">
							<img src="../resources/img/person_2.jpg" alt="Image placeholder"
								class="img-fluid mb-4">
						</div>
						<div class="desc align-self-md-center">
							<!-- ===============버튼을 여기에 넣어보았습니다=================== -->
							<form
								action="${pageContext.request.contextPath }/report/viewreport.do">
								<input type="hidden" name="tr_email" value="1111"> <input
									type="hidden" name="mem_email" value="1111"> <input
									type="hidden" name="nick_name" value="김지수"> <input
									type="hidden" name="type" value="tra"> <input
									type="hidden" name="reported" value="김김지수">
								<button type="submit" class="btn btn-outline-primary">트레이너신고</button>
							</form>
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
									<a href="여기에 트레이너 스케줄로 이동할 href작성하거야!!" class="reply">트레이너
										스케쥴러로 이동</a>
								</p>
							</div>
						</div>
					</div>



					<!-- 댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글댓글 -->

					<div class="pt-5 mt-5">
						<h3 class="mb-5">6 Comments</h3>
						<ul class="comment-list">
							<li class="comment">
								<div class="vcard bio">
									<img src="../resources/img/person_2.jpg"
										alt="Image placeholder">
								</div>
								<div class="comment-body">
									<!-- =======================리뷰신고===========================-->
									<form
										action="${pageContext.request.contextPath }/report/viewreport.do">
										<input type="hidden" name="tr_email" value="2222"> <input
											type="hidden" name="mem_email" value="2222"> <input
											type="hidden" name="nick_name" value="김지수"> <input
											type="hidden" name="type" value="rev"> <input
											type="hidden" name="reported" value="김김지수">
										<button type="submit" class="btn btn-outline-primary">리뷰신고</button>
									</form>
									<!-- =======================리뷰신고===========================-->
									<h3>John Doe</h3>
									<div class="meta">Sept 25, 2019 at 2:21pm</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit. Pariatur quidem laborum necessitatibus, ipsam impedit
										vitae autem, eum officia, fugiat saepe enim sapiente iste
										iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
									<p>
										<a href="#" class="reply">Reply</a>
									</p>
								</div>
							</li>

							<li class="comment">
								<div class="vcard bio">
									<img src="../resources/img/person_1.jpg"
										alt="Image placeholder">
								</div>
								<div class="comment-body">
									<h3>John Doe</h3>
									<div class="meta">Sept 25, 2019 at 2:21pm</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit. Pariatur quidem laborum necessitatibus, ipsam impedit
										vitae autem, eum officia, fugiat saepe enim sapiente iste
										iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
									<p>
										<a href="#" class="reply">Reply</a>
									</p>
								</div>

								<ul class="children">
									<li class="comment">
										<div class="vcard bio">
											<img src="../resources/img/person_1.jpg"
												alt="Image placeholder">
										</div>
										<div class="comment-body">
											<h3>John Doe</h3>
											<div class="meta">Sept 25, 2019 at 2:21pm</div>
											<p>Lorem ipsum dolor sit amet, consectetur adipisicing
												elit. Pariatur quidem laborum necessitatibus, ipsam impedit
												vitae autem, eum officia, fugiat saepe enim sapiente iste
												iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
											<p>
												<a href="#" class="reply">Reply</a>
											</p>
										</div>


										<ul class="children">
											<li class="comment">
												<div class="vcard bio">
													<img src="../resources/img/person_1.jpg"
														alt="Image placeholder">
												</div>
												<div class="comment-body">
													<h3>John Doe</h3>
													<div class="meta">Sept 25, 2019 at 2:21pm</div>
													<p>Lorem ipsum dolor sit amet, consectetur adipisicing
														elit. Pariatur quidem laborum necessitatibus, ipsam
														impedit vitae autem, eum officia, fugiat saepe enim
														sapiente iste iure! Quam voluptas earum impedit
														necessitatibus, nihil?</p>
													<p>
														<a href="#" class="reply">Reply</a>
													</p>
												</div>

												<ul class="children">
													<li class="comment">
														<div class="vcard bio">
															<img src="../resources/img/person_1.jpg"
																alt="Image placeholder">
														</div>
														<div class="comment-body">
															<h3>John Doe</h3>
															<div class="meta">Sept 25, 2019 at 2:21pm</div>
															<p>Lorem ipsum dolor sit amet, consectetur
																adipisicing elit. Pariatur quidem laborum
																necessitatibus, ipsam impedit vitae autem, eum officia,
																fugiat saepe enim sapiente iste iure! Quam voluptas
																earum impedit necessitatibus, nihil?</p>
															<p>
																<a href="#" class="reply">Reply</a>
															</p>
														</div>
													</li>
												</ul>
											</li>
										</ul>
									</li>
								</ul>
							</li>

							<li class="comment">
								<div class="vcard bio">
									<img src="../resources/img/person_1.jpg"
										alt="Image placeholder">
								</div>
								<div class="comment-body">
									<h3>John Doe</h3>
									<div class="meta">Sept 25, 2019 at 2:21pm</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit. Pariatur quidem laborum necessitatibus, ipsam impedit
										vitae autem, eum officia, fugiat saepe enim sapiente iste
										iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
									<p>
										<a href="#" class="reply">Reply</a>
									</p>
								</div>
							</li>
						</ul>
						<!-- END comment-list -->

						<div class="comment-form-wrap pt-5">
							<h3 class="mb-5">Leave a comment</h3>
							<form action="#" class="bg-light p-4">
								<div class="form-group">
									<label for="name">Name *</label> <input type="text"
										class="form-control bg-white" id="name">
								</div>
								<div class="form-group">
									<label for="email">Email *</label> <input type="email"
										class="form-control" id="email">
								</div>
								<div class="form-group">
									<label for="website">Website</label> <input type="url"
										class="form-control" id="website">
								</div>

								<div class="form-group">
									<label for="message">Message</label>
									<textarea name="" id="message" cols="30" rows="10"
										class="form-control"></textarea>
								</div>
								<div class="form-group">
									<input type="submit" value="Post Comment"
										class="btn py-3 px-4 btn-primary">
								</div>

							</form>
						</div>
					</div>
				</div>



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