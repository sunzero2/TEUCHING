<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Teu-Ching Teu-Ching</title>
<style>
input::placeholder {
	color: gray;
	font-size: small;
}

html {
	background-image: url(../resources/img/tr7.jpg) !important;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
}
body{
background-color: transparent !important;
}
</style>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="resources/css/joinform.css">
<!-- 카카오주소 -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=42e0be41ec144283c6bfe7c0ed8dae35&libraries=services"></script>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>

</head>
<body>

	<div class="main-content">
		<div class="container mt-7">
			<!-- Table -->
			<div class="row">
				<div class="col-xl-8 m-auto order-xl-1" style="margin-top: 5% !important;">
					<div class="card bg-secondary shadow" style="background-color: #f8f9fe !important;">
					<form id="signFrm" name="signFrm"
						<%-- action="<%=request.getContextPath()%>/member/m_joinemailCheck.do" --%>
	       					action="<%=request.getContextPath()%>/member/joinMemberImple.do"
	       					 method="post">
						<div class="card-header bg-white border-0">
							<div class="row align-items-center">
								<div class="col-8">
									<h3 class="mb-0">트칭 일반회원 회원가입</h3>
								</div>
								<div class="col-4 text-right">
									<button type="button" id="signUp" class="btn btn-sm btn-primary">가입하기</button>
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
												<label class="form-control-label">연락처</label>
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

<script type="text/javascript">
	$(document).ready(function(e){
		
		var idx_email = false;
		var idx_nick = false;
		
		$('#signUp').click(function(){
			if($.trim($('#email').val()) == ''){
				alert("이메일을 입력해주세요.");
				$('#email').focus();
				return;
			}else if($.trim($('#nickname').val()) == ''){
				alert("닉네임을 입력해주세요.");
				$('#nickname').focus();
				return;
			}else if($.trim($('#password_1').val()) == ''){
				alert("패스워드를 입력해주세요.");
				$('#password_1').focus();
				return;
			}
			//패스워드 확인
			else if($('#password_1').val() != $('#password_2').val()){
				alert('패스워드가 다릅니다.');
				return;
			}
			else if($.trim($('#cell').val()) == ''){
				alert("연락처를 입력해주세요.");
				$('#cell').focus();
				return;
			}
			else if($.trim($('#sample6_address').val()) == ''){
				alert("주소를 입력해주세요.");
				$('#sample6_address').focus();
				return;
			}
			
			if(idx_email==false){
				alert("이메일 중복체크를 해주세요.");
				return;
			}else if(idx_nick==false){
				alert("닉네임 중복체크를 해주세요.");
				return;
			}else{
				alert("작성하신 이메일로 인증메일이 전송되었습니다.                              메일 인증 시 회원가입이 완료됩니다.");
				$('#signFrm').submit();
			} 
			
		});
		
		$('#check_nick').click(function(){
			$.ajax({
				url: "${pageContext.request.contextPath}/member/nickChk.do",
				type: "GET",
				data:{
					"nickname":$('#nickname').val()
				},
				success: function(data){
					if(data == 0 && $.trim($('#nickname').val()) != '' ){
						idx_nick=true;
						var html="<tr><td colspan='3' style='color: green'>사용가능</td></tr>";
						$('#nickChk').empty();
						$('#nickChk').append(html);
					}else{

						var html="<tr><td colspan='3' style='color: red'>이미 사용중인 닉네임 입니다.</td></tr>";
						$('#nickChk').empty();
						$('#nickChk').append(html);
					}
				},
				error: function(){
					alert("서버에러");
				}
			});
		});
		
		$('#check_email').click(function(){
			$.ajax({
				url: "${pageContext.request.contextPath}/member/emailChk.do",
				type: "POST",
				data:{
					"email":$('#email').val()
				},
				success: function(data){
					if(data == 0 && $.trim($('#email').val()) != '' ){
						idx_email=true;
						var html="<tr><td colspan='3' style='color: green'>사용가능</td></tr>";
						$('#emailChk').empty();
						$('#emailChk').append(html);
					}else{

						var html="<tr><td colspan='3' style='color: red'>이미 사용중인 이메일 입니다.</td></tr>";
						$('#emailChk').empty();
						$('#emailChk').append(html);
					}
				},
				error: function(){
					alert("서버에러");
				}
			});
		});
		
	});
</script>

<script>
    $('.pw').focusout(function () {
        var pwd1 = $("#password_1").val();
        var pwd2 = $("#password_2").val();
 
        if ( pwd1 != '' && pwd2 == '' ) {
            null;
        } else if (pwd1 != "" || pwd2 != "") {
            if (pwd1 == pwd2) {
                $("#alert-success").css('display', 'inline-block');
                $("#alert-danger").css('display', 'none');
            } else {
                alert("비밀번호가 일치하지 않습니다. 비밀번호를 재확인해주세요.");
                $("#alert-success").css('display', 'none');
                $("#alert-danger").css('display', 'inline-block');
            }
        }
    });
</script>

<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
            }
        }).open();
    }
</script>

</body>
</html>