<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Meditative - Free Bootstrap 4 Template by Colorlib</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

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
<script src='fullcalendar/core/main.js'></script>
<script src='fullcalendar/google-calendar/main.js'></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<%@include file="../include/top.jsp"%>


	<!-- 시작 시작시작시작시작시작시작시작시작시작시작시작시작시작시작시작시작시작시작시작시작시작시작시작시작시작시작시작시작시작시작시작시작시작시작시작시작시작시작 -->

	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('resources/img/bg_3.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate text-center">
					<h1 class="mb-3 bread">S C H E D U L E</h1>
					<p class="breadcrumbs">
						<span class="mr-2"><a href="index.html">Trainer</a></span> <span>Schedule</span>
					</p>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center mb-8 pb-6">
				<div class="text-center">
					<h2 class="mb-1">예약가능 으로 표시된 시간만 예약이 가능합니다.</h2>
					
					<br>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="table-responsive">
						<table class="table table-bordered text-center">
							<thead>
							
							<!-- 이전달, 다음달 -->
								<tr>
								<td>
									<a href="#a" id="prev"> 이전달 <i class="ion-ios-arrow-round-back"></i></a>											
								</td>	
								<td align="center" id="current-year-month" colspan="5"></td>
								<td>
									<a href="#a" id="next"> 다음달 <i class="ion-ios-arrow-round-forward"></i></a>
								</td>
								</tr>
								
								<!-- 요일 -->
								<tr class="bg-primary text-white">
									<td >Sunday</td>
									<td>Monday</td>
									<td>Tuesday</td>
									<td>Wednesday</td>
									<td>Thursday</td>
									<td>Friday</td>
									<td>Saturday</td>
								</tr>
								
							</thead>
							
							<tbody id="calendar-body" class="calendar-body"></tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>
	<form id="form" action="${pageContext.request.contextPath }/message/matchform.do" target="pop">
		<input type="hidden" id="month" value="" name="month">
		<input type="hidden" id="date" value="" name="date">
	</form>
	
	 <!--This page JavaScript(calendar) -->
      <script src="../resources/calendar/libs/moment/min/moment.min.js"></script>
      <script src="../resources/calendar/libs/fullcalendar\dist/fullcalendar.min.js"></script>
      <script src="../resources/calendar/pages/calendar/cal-init.min.js"></script>
  
      <!-- this page js -->
      <script src="../resources/calendar/app-style-switcher.js"></script>
      <script src=".../resources/calendar/feather.min.js"></script>
	
	<script>
		
	  
	var clientId = "1088625250366-84uhb8sjfo9aj4l125mr1rmokojffrjl.apps.googleusercontent.com"; // oAuth2 webapp

	  var apiKey = "AIzaSyCGMudBq_ybOnv7mS_53vJzDKMM_-CjyeY";// Key for browser apps (with referers) 

	  var scopes = 'https://www.googleapis.com/auth/calendar';// google authentication scopes


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

	  
	  
	  
	  
	  
	  
	  
	  
	  
	  var currentTitle = document.getElementById('current-year-month');
	  /* 현재 년도와 월 */
		var calendarBody = document.getElementById('calendar-body');
		var mainTodayDay = document.getElementById('main-day');
		var mainTodayDate = document.getElementById('main-date');
		var mainTodayDate;
	  
		
		/* Date객체를 사용하여 오늘의 날짜, 연도, 요일등의 정보를 담기. */
		var today = new Date();
		var first = new Date(today.getFullYear(), today.getMonth(),1);
		var dayList = ['Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'];
		var monthList = ['1','2','3','4','5','6','7','8','9','10','11','12'];
		var leapYear=[31,29,31,30,31,30,31,31,30,31,30,31];
		var notLeapYear=[31,28,31,30,31,30,31,31,30,31,30,31];
		var pageFirst = first;
		var pageYear;
		
		
		if(first.getFullYear() % 4 === 0){
			/* 윤년을 체크하기 위한 IF문. 윤년일 경우  leapYear 배열을 pageYear에 담고 */
		    pageYear = leapYear;
		}else{
			/* 아닐 경우 notLeapYear배열을 pageYear에 담는다.  */
		    pageYear = notLeapYear;
		}
		
		/* 이렇게 되면 leapYear, notLeapYear 배열에는 각각 1월부터 12월까지의 총 일수가 들어가있게 됨. */

		function showCalendar(){
			
		    let monthCnt = 100;
		    let cnt = 1;
		    
		    for(var i = 0; i < 6; i++){
		    	/* 주(week)를 만들기 (최대 6주니까!)*/
		        var $tr = document.createElement('tr');
		    	/* 그 6주에 해당하는 tr요소 생성하기. */
		        $tr.setAttribute('id', monthCnt);   
		    	/* tr(주)의 id에 '월' 로 속성주기 */
		        
		        for(var j = 0; j < 7; j++){
		        	/* 일(date)를 만들기 (일주일은 최대 7일이니까) */
		            if((i === 0 && j < first.getDay()) || cnt > pageYear[first.getMonth()]){
		            	/* 만약 첫번째 주라면 시작하는 요일부터 출력을 해야해. 
		            	|| 달력 출력 종료 조건. 월마다 총 일수가 다르니까 pageYear에 담아논 총 월마다의 일수와 비교하여 날짜를 출력. */
		                var $td = document.createElement('td');
		            	/* td로 생성된 요소를 $td로 담아  */
		                $tr.appendChild($td);
		            	/* 아까 주에서 추가할때 썼던 $tr에 appendChild 해주기. */
		            }else{
		            	/* 만약 첫번째 주가 아니라면(2,3,4,5,6...) */
		                var $td = document.createElement('td');
		                $td.textContent = cnt;
		                /* td 변수에 날짜를 text로 넣기!! */
		                $td.setAttribute('id', cnt);     
		                /* $td(일)의 id값을 cnt로 주기 */
		                $tr.appendChild($td);
		                /* tr(주) 밑에 td(일) appendChild하기 */
		                cnt++;
		                /* cnt(일) 계속 증가하게 */
		            }
		        }
		        monthCnt++;
		        /* 월이 for문 도는동안 계속 증가하게. */
		        
		        calendarBody.appendChild($tr);
		        /* calendarBody 태그 밑에 tr(주) appendChild 하기 */
		    }
		}
		showCalendar();
		
		var clickedDate1 = document.getElementById(today.getDate());
		clickedDate1.classList.add('active');
		var prevBtn = document.getElementById('prev');
		var nextBtn = document.getElementById('next');
		prevBtn.addEventListener('click',prev);
		nextBtn.addEventListener('click',next);
		var tdGroup = [];
		

		function removeCalendar(){
			/* 추후 달력 업데이를 위해 미리 만들어놓은 부분  */
		    let catchTr = 100;
		    for(var i = 100; i< 106; i++){
		        var $tr = document.getElementById(catchTr);
		        $tr.remove();
		        catchTr++;
		    }
		}

		function showMain(){
			/* 날짜를 클릭하면 해당 날짜의 색상과 왼쪽화면이 변경되게 하기 위한 함수 */
		    mainTodayDay.innerHTML = dayList[today.getDay()];
		}
		
		
		function clickStart(){
		    for(let i = 1; i <= pageYear[first.getMonth()]; i++){
		        tdGroup[i] = document.getElementById(i);
		        tdGroup[i].addEventListener('click',changeToday);
		    }
		}
		function changeToday(e){
		    for(let i = 1; i <= pageYear[first.getMonth()]; i++){
		        if(tdGroup[i].classList.contains('active')){
		            tdGroup[i].classList.remove('active');
		        }
		    }
		    clickedDate1 = e.currentTarget;
		    clickedDate1.classList.add('active');
		    today = new Date(today.getFullYear(), today.getMonth(), clickedDate1.id);
		    showMain();
		    keyValue = today.getFullYear() + '' + today.getMonth()+ '' + today.getDate();
		   
		}
		
		function prev(){
			/* 이전 달로 이동하는 함수 */
		
		    	/* pageFirst(월 첫번째 날에 대한 정보가 담겨있는 변수) 와 
			   pageYear(월 마다의 총 일수)를 업데이트 할거야.
			   (넘기기 전의 데이터들을 삭제하는 과정)*/
		    
			   
		    if(pageFirst.getMonth() === 1){
		    	/* 만약 1월이라면 연도를 변경해야 함 */
		    	
		        pageFirst = new Date(first.getFullYear()-1, 12, 1);
		    	/* 월 첫번째 날을 작년도의 12월 1일정보로 가져오기 */
		        first = pageFirst;
		    	/* first에 전년도 12월 1일을 담아서  */
		    	
		        if(first.getFullYear() % 4 === 0){
		        	/* 윤달이면 leapYear */
		            pageYear = leapYear;
		        }else{
		        	/* 윤달이 아니면 notLeapYear */
		            pageYear = notLeapYear;
		        }
		    }else{
		    	/* 12월이여도 연도를 변경해야돼. */
		    	
		        pageFirst = new Date(first.getFullYear(), first.getMonth()-1, 1);
		    	/* 내년의 1월 1일을 가져오게. */
		        first = pageFirst;
		        /* first에 내년의 1월 1일을 담아  */
		    }
		    today = new Date(today.getFullYear(), today.getMonth()-1, today.getDate());
		    /* today에 해당하는 Date를 담아서 */
		    currentTitle.innerHTML = first.getFullYear() + '&nbsp;&nbsp;&nbsp;&nbsp;'+ monthList[first.getMonth()];
		    
		    removeCalendar();
		    showCalendar();
		    /* 다시 showCalendar함수를 호출해서 달력 불러 */
		    showMain();
		    clickedDate1 = document.getElementById(today.getDate());
		    clickedDate1.classList.add('active');
		    clickStart();
		}
		
		

		function next(){
		  
		    if(pageFirst.getMonth() === 12){
		        pageFirst = new Date(first.getFullYear()+1, 1, 1);
		        first = pageFirst;
		        if(first.getFullYear() % 4 === 0){
		            pageYear = leapYear;
		        }else{
		            pageYear = notLeapYear;
		        }
		    }else{
		        pageFirst = new Date(first.getFullYear(), first.getMonth()+1, 1);
		        first = pageFirst;
		    }
		    today = new Date(today.getFullYear(), today.getMonth() + 1, today.getDate());
		    currentTitle.innerHTML = first.getFullYear() + '&nbsp;&nbsp;&nbsp;&nbsp;'+ monthList[first.getMonth()];
		    removeCalendar();
		    showCalendar(); 
		    showMain();
		    clickedDate1 = document.getElementById(today.getDate());
		    clickedDate1.classList.add('active');  
		    clickStart();
		}
		
		
		
		/* 라벨 */

		
	
		
		
		
		
		</script>

	  
	  
	  <script>
	  
	  /* 트레이너 상담신청시 띄울 팝업용 */
	  function openPopUp() {
			const form = document.querySelector('#form');
			window.open("", 'pop',
							'width=450,height=400,left=420,top=150,toolbars=no,scrollbars=no');
			form.submit();
		}
	  
	  $('tbody[id="calendar-body"] > tr > td').click(function(e){
		  $('#date').val(e.target.id);
		  openPopUp();
	  })
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