<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Teu-Ching Teu-Ching</title>
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=EB+Garamond:400,400i,500,500i,600,600i,700,700i&display=swap"
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
<style>
	.toptrainer{
		height: 126px;
	}
	
	.slide-subheading {
		font-weight: bold;
		color: #ffb5b5;
		font-size: initial;
	}
</style>
</head>
<body>
	<%@ include file="../include/top.jsp" %>
	<section class="home-slider js-fullheight owl-carousel">
		<div class="slider-item js-fullheight"
			style="background-image: url(https://source.unsplash.com/collection/827737/1);">
			<div class="overlay"></div>
			<div class="container">
				<div
					class="row no-gutters slider-text js-fullheight align-items-center justify-content-center"
					data-scrollax-parent="true">
					<div class="col-md-10 text ftco-animate text-center">
						<h1 class="mb-4">Your First Visit?</h1>
						<h3 class="slide-subheading">우리의 서비스를 소개합니다.</h3>
						<p>
							<a href="/teuching/index/aboutus.do"
								class="btn btn-white btn-outline-white px-4 py-3 mt-3">알아보러 가기</a>
						</p>
					</div>
				</div>
			</div>
		</div>

		<div class="slider-item js-fullheight"
			style="background-image: url(https://source.unsplash.com/collection/827737/2);">
			<div class="overlay"></div>
			<div class="container">
				<div
					class="row no-gutters slider-text js-fullheight align-items-center justify-content-center"
					data-scrollax-parent="true">
					<div class="col-md-10 text ftco-animate text-center">
						<h1 class="mb-4">Trainer Matching</h1>
						<h3 class="slide-subheading">차별화된 트레이너 매칭서비스를 만나보세요!</h3>
						<p>
							<a href="/teuching/matching/main.do"
								class="btn btn-white btn-outline-white px-4 py-3 mt-3">매칭하러 가기</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="ftco-section testimony-section">
      <div class="container">
        <div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-10 heading-section ftco-animate text-center">
            <h3 class="subheading">Teu-Ching Teu-Ching</h3>
            <h2 class="mb-1">Trainers</h2>
          </div>
        </div>
        <div class="ftco-animate">
            <div class="carousel-testimony owl-carousel">
            <c:forEach items="${tList}" var="trainer">
              <div class="item">
                <div class="testimony-wrap p-4 pb-5">
                  <div class="text">
                  	<div class="line toptrainer">
	                    <p class="mb-4 pb-1" style="font-family: sans-serif; font-weight: bold;">${trainer.career}</p>
	                    <span class="quote d-flex align-items-center justify-content-center">
	                      <i class="icon-quote-left"></i>
	                    </span>
	                  </div>
                    <div class="d-flex align-items-center">
                    	<div class="user-img" style="background-image: url(../resources/img/person_1.jpg)">
		                  </div>
		                  <div class="ml-4">
		                  	<p class="name">${trainer.trainerName}</p>
		                    <span class="position" style="font-family: sans-serif; font-weight: bold;">${trainer.address}</span>
		                  </div>
                    </div>
                  </div>
                </div>
              </div>
            </c:forEach>
          </div>
        </div>
      </div>
    </section>
	
	<%@ include file="../include/footer.jsp" %>
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