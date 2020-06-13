<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">

    <link rel="stylesheet" href="resources/css/loginform.css">

    <link rel="icon" href="Favicon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

	<!-- 라디오 css -->
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	

<title>Teu-Ching Teu-Ching</title>

<style type="text/css">

.toggle_radio{
  position: relative;
  background: #215d9e;
  margin: 4px auto;
  overflow: hidden;
  padding: 0 !important;
  -webkit-border-radius: 50px;
  -moz-border-radius: 50px;
  border-radius: 50px;
  position: relative;
  height: 26px;
  width: 215px;
}
.toggle_radio > * {
  float: left;
}
.toggle_radio input[type=radio]{
  display: none;
  /*position: fixed;*/
}
.toggle_radio label{
  font: 90%/1.618 "Source Sans Pro";
  color: rgba(255,255,255,.9);
  z-index: 0;
  display: block;
  width: 100px;
  height: 20px;
  margin: 3px 3px;
  -webkit-border-radius: 50px;
  -moz-border-radius: 50px;
  border-radius: 50px;
  cursor: pointer;
  z-index: 1;
  /*background: rgba(0,0,0,.1);*/
  text-align: center;
  /*margin: 0 2px;*/
  /*background: blue;*/ /*make it blue*/
}
.toggle_option_slider{
  /*display: none;*/
  /*background: red;*/
  width: 100px;
  height: 20px;
  position: absolute;
  top: 3px;
  -webkit-border-radius: 50px;
  -moz-border-radius: 50px;
  border-radius: 50px;
  -webkit-transition: all .4s ease;
  -moz-transition: all .4s ease;
  -o-transition: all .4s ease;
  -ms-transition: all .4s ease;
  transition: all .4s ease;
}

#first_toggle:checked ~ .toggle_option_slider{
  background: rgba(255,255,255,.3);
  left: 3px;
}
#second_toggle:checked ~ .toggle_option_slider{
  background: rgba(255,255,255,.3);
  left: 109px;
}

input::placeholder {
  font-size: 11px;
}
</style>


</head>
<body>
	
	<main class="login-form">
		<div class="cotainer">
			<div class="row justify-content-center">
				<div class="col-md-8">
					<div class="card" style="width	: 50% !important; left: 22%;">
						<div class="card-header">비밀번호 찾기</div>
						<div class="card-body">
							<form name="signFrm" id="signFrm"
							action="<%=request.getContextPath()%>/member/findpw.do" method="post">
								<div class="form-group row">
									<label for="email"
										class="col-md-4 col-form-label text-md-right">가입한 E-Mail</label>
									<div class="col-md-6">
										<input type="text" id="email" class="form-control" placeholder="이메일로 임시 비밀번호를  발송해드립니다."
											name="email" required autofocus>
									</div>
								</div>
								<div class="col-md-6 offset-md-4">
									<button type="button" id="signUp" class="btn btn-primary">임시 비밀번호 발송하기</button>
									<a href="/teuching/index/index.do" class="btn btn-link"> 메인으로 돌아가기 </a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	
	</main>

	<script type="text/javascript">
		var idx_email = false;

		$('#signUp').click(function() {

			if ($.trim($('#email').val()) == '') {
				alert("이메일을 입력해주세요.");
				$('#email').focus();
				return;
			}

			$.ajax({
				url : "${pageContext.request.contextPath}/emailChk.do",
				type : "POST",
				data : {
					"email" : $('#email').val()
				},
				success : function(data) {
					if (data == 0 && $.trim($('#email').val()) != '') {
						alert("가입 정보가 없습니다 이메일을 확인해 주세요.");
						return;
					} else {
						alert("작성하신 이메일로 임시 비밀번호가 발송되었습니다.");
						$('#signFrm').submit();
					}
				},
				error : function() {
					alert("서버에러");
				}
			});
		});
	</script>




</body>
</html>