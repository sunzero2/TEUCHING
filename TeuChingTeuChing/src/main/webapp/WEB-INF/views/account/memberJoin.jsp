<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
		1. a 태그 : 속성에 href="연결 url"
		2. button : 속성에 onclick="연결 function"
					스크립트로 함수 만들어서 함수 안에 location.href="연결 url"
	 -->
	<a href="<%=request.getContextPath()%>/member/mjoin.do?data=member">
	<button>일반회원</button>
	</a>
	<a href="<%=request.getContextPath()%>/member/mjoin.do?data=trainer">
	<button>트레이너</button>
	</a>
	
</body>
</html>