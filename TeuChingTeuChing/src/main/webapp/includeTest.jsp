<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

<link rel="stylesheet" href="resources/css/joinform.css">

</head>
<body>

	<div class="main-content">
		<div class="container mt-7">
			<!-- Table -->
			<div class="row">
				<div class="col-xl-8 m-auto order-xl-1">
					<div class="card bg-secondary shadow">
						<div class="card-header bg-white border-0">
							<div class="row align-items-center">
								<div class="col-8">
									<h3 class="mb-0">트칭 일반회원 회원가입</h3>
								</div>
								<div class="col-4 text-right">
									<a href="#!" class="btn btn-sm btn-primary">가입하기</a>
								</div>
							</div>
						</div>
						<div class="card-body">
							<form>
								<h6 class="heading-small text-muted mb-4">User information</h6>
								<div class="pl-lg-4">
									<div class="row">
										<div class="col-lg-6">
											<div class="form-group focused">
												<label class="form-control-label" for="input-username">ID</label>
												<input type="text" id="input-username"
													class="form-control form-control-alternative"
													placeholder="UserID">
													<!-- 중복확인버튼 설정하기-->
												<div class="" data-toggle="buttons">
													<label class="btn btn-lg btn-success active"> <input
														type="radio" name="options" id="option2"
														autocomplete="off" checked> <i class="fa fa-check"></i>
														사용가능한 ID입니다.
													</label> <label class="btn btn-lg btn-danger"> <input
														type="radio" name="options" id="option3"
														autocomplete="off"> <i class="fa fa-warning"></i>
														사용중인 ID입니다.
													</label>
												</div>
											</div>
										</div>
										<div class="col-lg-6">
											<div class="form-group">
												<label class="form-control-label" for="input-email">Email
													주소</label> <input type="email" id="input-email"
													class="form-control form-control-alternative"
													placeholder="작성하신 주소로 인증메일이 발송됩니다.">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-lg-6">
											<div class="form-group focused">
												<label class="form-control-label" for="input-first-name">비밀번호
													</label> <input type="text" id="input-first-name"
													class="form-control form-control-alternative">
											</div>
										</div>
										<div class="col-lg-6">
											<div class="form-group focused">
												<label class="form-control-label" for="input-last-name">비밀번호 확인
												</label> <input type="text" id="input-first-name"
													class="form-control form-control-alternative">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-lg-6">
											<div class="form-group focused">
												<label class="form-control-label" for="input-first-name">닉네임
													</label> <input type="text" id="input-first-name"
													class="form-control form-control-alternative"
													placeholder="사용하실 닉네임">
											</div>
										</div>
										<div class="col-lg-6">
											<div class="form-group focused">
												<label class="form-control-label" for="input-last-name">성별
												</label> 
													<select class="form-control form-control-alternative">
													<option selected="">성별을 선택해주세요</option>
													<option>남성</option>
													<option>여성</option>
												</select>
												
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-lg-6">
											<div class="form-group focused">
												<label class="form-control-label" for="input-first-name">신장
													</label> <input type="text" id="input-first-name"
													class="form-control form-control-alternative"
													placeholder="HEIGHT">
											</div>
										</div>
										<div class="col-lg-6">
											<div class="form-group focused">
												<label class="form-control-label" for="input-first-name">체중
													</label> <input type="text" id="input-first-name"
													class="form-control form-control-alternative"
													placeholder="WEIGHT">
											</div>
										</div>
									</div>
								</div>
								<hr class="my-4">
								<!-- Address -->
								<h6 class="heading-small text-muted mb-4">Contact
									information</h6>
								<div class="pl-lg-4">
								<div class="row">
										<div class="col-lg-4">
											<div class="form-group focused">
												<label class="form-control-label" for="input-city">연락처</label>
												<input type="text" id="input-city"
													class="form-control form-control-alternative">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="form-group focused">
												<label class="form-control-label" for="input-address">주소</label>
												<input id="input-address"
													class="form-control form-control-alternative"
													placeholder="주소를 어뜨케 받으까아아앙"
													type="text">
											</div>
										</div>
									</div>
								</div>
								<hr class="my-4">
								<!-- Description -->
								<h6 class="heading-small text-muted mb-4">Purpose</h6>
								<div class="pl-lg-4">
									<div class="form-group focused">
										<label class="form-control-label">트레이너 매칭 키워드 선택</label>

										<br><br>
										<div class="container">
											<div class="row text-center">
												<br> <label for="default" class="btn btn-default">이것
													<input type="checkbox" id="default" class="badgebox"><span
													class="badge">&check;</span>
												</label> <label for="primary" class="btn btn-primary">저것
													<input type="checkbox" id="primary" class="badgebox"><span
													class="badge">&check;</span>
												</label> <label for="info" class="btn btn-info">아무거나 <input
													type="checkbox" id="info" class="badgebox"><span
													class="badge">&check;</span></label> <label for="success"
													class="btn btn-success">색깔별로 <input
													type="checkbox" id="success" class="badgebox"><span
													class="badge">&check;</span></label> <label for="warning"
													class="btn btn-warning">골라서 <input
													type="checkbox" id="warning" class="badgebox"><span
													class="badge">&check;</span></label> <label for="danger"
													class="btn btn-danger">넣자 <input
													type="checkbox" id="danger" class="badgebox"><span
													class="badge">&check;</span></label>
											</div>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer class="footer">
		<div class="row align-items-center justify-content-xl-between">
			<div class="col-xl-6 m-auto text-center">
				<div class="copyright">
				</div>
			</div>
		</div>
	</footer>
</body>




</body>
</html>