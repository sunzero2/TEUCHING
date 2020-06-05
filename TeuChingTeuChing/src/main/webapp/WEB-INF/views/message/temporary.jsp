<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="" onclick="openPopUp();">쪽지보내기</a>
	<a href="" onclick="openPopUp2();">쪽지확인</a>

    <script>
        document.querySelector('.a').click(openPopUp());

        function openPopUp() {
            window.open('messageform.do', 'pop', 'width=400,height=300,left=400,top=150,toolbars=no,scrollbars=no');
        }
        
        function openPopUp2() {
            window.open('messagecheck.do', 'pop', 'width=400,height=300,left=400,top=150,toolbars=no,scrollbars=no');
        }
    </script>
</body>
</html>