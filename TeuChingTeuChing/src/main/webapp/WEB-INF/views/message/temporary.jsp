<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form id="form1"
		action="${pageContext.request.contextPath }/message/sendmessage.do"
		target="pop">
		<input type="hidden" name="tr_email" value="1111"> <input
			type="hidden" name="mem_email" value="2222">
			<input type="hidden" name="type" value="first">
	</form>
	<button onclick="openPopUp();">쪽지보내기</button>

	<form id="form2"
		action="${pageContext.request.contextPath }/message/messagecheck.do"
		target="pop">
		<input type="hidden" name="tr_email" value="1111"> <input
			type="hidden" name="mem_email" value="2222">
	</form>
	<button onclick="openPopUp2();">쪽지확인</button>
	
	<form id="form3"
		action="${pageContext.request.contextPath }/message/matchform.do"
		target="pop">
		<input type="hidden" name="tr_email" value="1111"> <input
			type="hidden" name="mem_email" value="2222">
	</form>
	<button onclick="openPopUp3();">상담신청</button>

	<script>
		function openPopUp() {
			const form = document.querySelector('#form1');
			window.open("", 'pop',
							'width=450,height=370,left=400,top=150,toolbars=no,scrollbars=no');
			form.submit();
		}

		function openPopUp2() {
			const form = document.querySelector('#form2');
			window.open("", 'pop',
							'width=450,height=400,left=420,top=150,toolbars=no,scrollbars=no');
			form.submit();
		}
		
		function openPopUp3() {
			const form = document.querySelector('#form3');
			window.open("", 'pop',
							'width=450,height=400,left=420,top=150,toolbars=no,scrollbars=no');
			form.submit();
		}
	</script>
</body>
</html>