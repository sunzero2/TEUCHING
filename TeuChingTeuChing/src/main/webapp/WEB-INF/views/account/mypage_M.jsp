<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- 카카오 주소 -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=42e0be41ec144283c6bfe7c0ed8dae35&libraries=services"></script>



</head>
<body>

<%@ include file="../include/top.jsp" %>
<hr>
	<div class="main-content">
		<div class="container mt-7">
			<!-- Table -->
			<div class="row">
				<div class="col-xl-8 m-auto order-xl-1" style="margin-top: 1% !important; margin-bottom: 5%;">
					<div class="card bg-secondary shadow" style="background-color: #f8f9fe !important;">
					<form id="signFrm" name="signFrm"
						<%-- action="<%=request.getContextPath()%>/member/m_joinemailCheck.do" --%>
	       					action="<%=request.getContextPath()%>/member/joinMemberImple.do"
	       					 method="post">
						<div class="card-header bg-white border-0">
							<div class="row align-items-center">
								<div class="col-8">
									<h3 class="mb-0">회원정보 수정하기</h3>
								</div>
								<div class="col-4 text-right">
									<button type="button" id="signUp" class="btn btn-sm btn-primary">회원정보수정</button>
								</div>
							</div>
						</div>
						<div class="card-body">
							
								<h6 class="heading-small text-muted mb-4">User information</h6>
								<div class="pl-lg-4">
									<div class="row">
										<div class="col-lg-6">
											<div class="form-group">
												<label class="form-control-label">Email 주소</label> 
												<button type="button" id="check_email" style="font-size: small;">중복확인</button><br>
												<input type="email" id="email" name="email" maxlength="50"
													class="form-control form-control-alternative"
													placeholder="작성하신 주소로 인증메일이 발송됩니다."
													style= "font-size: small; width:100%; height:30px">
													<span id="emailChk"></span>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-lg-6">
											<div class="form-group focused">
												<label class="form-control-label">비밀번호
													</label> <input type="password" id="password_1"
													name="password" class="pw" maxlength="20"
													style="display: block; width: 100%; padding: .375rem .75rem; font-size: 1rem; line-height: 1.5; color: #495057; background-color: #fff; background-clip: padding-box; border: 1px solid #ced4da; border-radius: .25rem; transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;">
											</div>
										</div>
										<div class="col-lg-6">
											<div class="form-group focused">
												<label class="form-control-label">비밀번호 확인</label> 
												<input type="password" id="password_2"
													class="pw"
													style="display: block; width: 100%; padding: .375rem .75rem; font-size: 1rem; line-height: 1.5; color: #495057; background-color: #fff; background-clip: padding-box; border: 1px solid #ced4da; border-radius: .25rem; transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;">
												<span id="alert-success" style="display: none;">비밀번호가 일치합니다.</span>
    											<span id="alert-danger" style="display: none; color: #d92742; font-weight: bold; ">
    											비밀번호가 일치하지 않습니다.</span>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-lg-6">
											<div class="form-group focused">
												<label class="form-control-label">닉네임
													</label> 
													<button type="button" id="check_nick" style="font-size: small;">중복확인</button><br>
													<input type="text" id="nickname" name="nickname" maxlength="12"
													class="form-control form-control-alternative">
													<span id="nickChk"></span>
											</div>
										</div>
										<div class="col-lg-6">
											<div class="form-group focused">
												<label class="form-control-label">성별
												</label> 
													<select class="form-control form-control-alternative"
													style="font-size: small;" name="gender" id="gender">
													<option>남성</option>
													<option>여성</option>
												</select>
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
												<label class="form-control-label">연락처<br><span style="font-size: small;">붙임표(-)까지 입력해주세요.</span></label>
												<input type="text" id="cell" name="cell" maxlength="13"
													class="form-control form-control-alternative">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="form-group focused">
												<label class="form-control-label" for="input-address">주소 입력</label><br>
												<input type="text" id="sample6_postcode" placeholder="우편번호">
												<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
												<label class="form-control-label" for="input-address"></label><br>
												<input type="text" id="sample6_address" placeholder="주소" name="address"
												style="width:55%; height:30px;">
												<label class="form-control-label" for="input-address"></label><br><br>
												<input type="text" id="sample6_extraAddress" placeholder="참고항목">
											</div>
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
</body>






</body>
</html>