<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Teu-Ching Teu-Ching</title>
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
	

      <!--This page JavaScript(calendar) -->
      <script src="../resources/calendar/libs/moment/min/moment.min.js"></script>
      <script src="../resources/calendar/libs/fullcalendar\dist/fullcalendar.min.js"></script>
      <script src="../resources/calendar/pages/calendar/cal-init.min.js"></script>
  
      <!-- this page js -->
      <script src="../resources/calendar/app-style-switcher.js"></script>
      <script src=".../resources/calendar/feather.min.js"></script>


<script>
      jQuery(document).ready(function() {
        jQuery("#calendar").fullCalendar({
              defaultDate : "2020-05-01"
            , editable : false // 수정 기능 지원 (false가 편함)
            , eventLimit : true // + more처럼 표현
            // 데이터를 json 방식으로 넣어주기
            , events: [
               
                  
                {
                    id : '' // 습관번호
                  , title : ''
                  , textColor : '#eaecf4' 
                  , backgroundColor : '#e36e88'
                  , start : ''
                  , end : '' // 종료일
                     , borderColor : "#FFF" // 보더 색상
                          
                            
                }
              
                
                
              
            ]
        });
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