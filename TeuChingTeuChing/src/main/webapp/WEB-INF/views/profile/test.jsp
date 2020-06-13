<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
  <meta name="viewport" content="width=device-width">
  <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
  <title>Vanilla Coding | Bootcamp Prep</title>
<style>

html, body{
  background-color: #FFFFFF;
  font-family: 'Roboto', sans-serif;
}
.main{
  width: 100%;
  display: block;
  background: #ababab;
}
.content-wrap{
  width: 100%;
  margin:0 auto;
  border: 4px solid rgba(161, 161, 161, 0.5); 
  border-radius: 20px;
  overflow: hidden;
  background: #ddaf35;
}
.content-left{
  background: #0b0809;
  color:#ddaf35;
  float: left;
  width: 100%;
  padding: 30px;
}
.main-wrap{
  text-align: center;
  padding: 20px 0 0 0;
}
.main-day{
  font-size: 30px;
  font-weight: bold;
}
.main-date{
  font-size: 120px;
  font-weight: bold;
  margin: 20px 0;
}
.todo-wrap{
  padding: 0 0 0 40px;
}
.todo-title{
  font-size: 20px;
  font-weight: 100;
  margin: 0 0 10px 0;
}
.input-box{
  width: 50%;
  margin-right: 20px;
  height: auto; 
  background: #0b0809;
  color: #ddaf35;
  line-height : normal;
  padding: .8em .5em 0 0; 
  font-family: inherit;
  border: 0; 
  border-bottom: 1px dashed #ddaf35;; 
  border-radius: 0; 
  outline-style: none; 
  -webkit-appearance: none; 
  -moz-appearance: none; 
  appearance: none;
}
.input-data{
  cursor: pointer;
  font-size: 10px;
  padding: 10px;
  margin: 10px 0 10px 0;
  background: #ddaf35;
  border: none;
  color: #0b0809;
  border-radius: 10px;
}
.input-data:hover{
  background: #ffffff;
  color: #0b0809;
}
.input-list > div{
  font-size: 10px;
  width: 60%;
  float: left;
  color: #ddaf35;
}
.input-list > .checked{
  color: #FFFFFF;
  text-decoration:line-through
}
.del-data{
  display: block;
  color: #ddaf35;
  float: left;
  width: 10%;
  cursor: pointer;
  font-size: 10px;
  padding: 10px;
  background: #0b0809;
  border: none;
  border-radius: 10px;
}
.content-right{
  float: left;
  width: 90%;
  padding: 10px;
}
.sun{
  color:#ef3333;
}
.sat{
  color:#2107e0;
}
.content-right table tr td{
  width: 40px;
  height: 40px;
  text-align: center;
  font-size: 20px;
  font-weight: bold;
}
.active{
  background: #0b0809;
  border-radius: 50%;
  color: #ffffff;
}

@media(min-width: 850px){
  .main{
    display: flex;
    align-items: center;
    justify-content:  center;
    width: 100vw;
    height: 100vh;
    background: #ababab;
  }
  .content-wrap{
    width: 800px;
    height: 600px;
    margin:0 auto;
    border: 4px solid rgba(161, 161, 161, 0.5); 
    border-radius: 20px;
    overflow: hidden;
    background: #ddaf35;
  }
  .content-left{
    background: #0b0809;
    color:#ddaf35;
    float: left;
    width: 360px;
    height: 600px;
    padding: 90px 20px 20px 0;
  }
  .main-wrap{
    text-align: center;
    margin: 20px 0 0 0;
  }
  .main-day{
    font-size: 30px;
    font-weight: bold;
  }
  .main-date{
    font-size: 120px;
    font-weight: bold;
    margin: 20px 0;
  }
  .todo-wrap{
    padding: 0 0 0 40px;
  }
  .todo-title{
    font-size: 20px;
    font-weight: 100;
    margin: 0 0 10px 0;
  }
  .input-box{
    width: 70%;
    height: auto; 
    background: #0b0809;
    color: #ddaf35;
    line-height : normal;
    padding: .8em .5em 0 0; 
    font-family: inherit;
    border: 0; 
    border-bottom: 1px dashed #ddaf35;; 
    border-radius: 0; 
    outline-style: none; 
    -webkit-appearance: none; 
    -moz-appearance: none; 
    appearance: none;
  }
  .input-data{
    cursor: pointer;
    font-size: 10px;
    padding: 10px;
    margin: 20px 0 30px 0;
    background: #ddaf35;
    border: none;
    color: #0b0809;
    border-radius: 10px;
  }
  .input-data:hover{
    background: #ffffff;
    color: #0b0809;
  }
  .input-list > div{
    font-size: 10px;
    width: 60%;
    float: left;
    color: #ddaf35;
  }
  .del-data{
    display: block;
    color: #ddaf35;
    float: left;
    width: 10%;
    cursor: pointer;
    font-size: 10px;
    padding: 10px;
    background: #0b0809;
    border: none;
    border-radius: 10px;
  }
  .content-right{
    float: left;
    width: 360px;
    height: 600px;
    padding: 100px 20px 20px 20px;
  }
  .sun{
    color:#ef3333;
  }
  .sat{
    color:#2107e0;
  }
  .content-right table tr td{
    width: 50px;
    height: 50px;
    text-align: center;
    font-size: 20px;
    font-weight: bold;
  }
  .active{
    background: #0b0809;
    border-radius: 50%;
    color: #ffffff;
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





  <div class="main">
    <div class="content-wrap"> 
    
     <!--  -->
      <div class="content-left">
        <div class="main-wrap">
          <div id="main-day" class="main-day"></div>
          <div id="main-date" class="main-date"></div>
        </div>
      
        <div class="todo-wrap">
          <div class="todo-title">Todo List</div>
          <div class="input-wrap">
            <input type="text" placeholder="please write here!!" id="input-box" class="input-box">
            <button type="button" id="input-data" class="input-data">INPUT</button>
            <div id="input-list" class="input-list"></div>
          </div>
        </div>
      </div>
       <!--  -->
       
      <div class="content-right">
        <table id="calendar" align="center">
          <thead>
          
            <tr class="btn-wrap clearfix">       
              <td>
                <label id="prev">
                    &#60;
                </label>
              </td>
              <td align="center" id="current-year-month" colspan="5"></td>
              
              <td>
                <label id="next">
                    &#62;
                </label>
              </td>
            </tr>
            
            
            
            
            <tr>
                <td class = "sun" align="center">Sun</td>
                <td align="center">Mon</td>
                <td align="center">Tue</td>
                <td align="center">Wed</td>
                <td align="center">Thu</td>
                <td align="center">Fri</td>
                <td class= "sat" align="center">Sat</td>
              </tr>
          </thead>
          
          
          <tbody id="calendar-body" class="calendar-body"></tbody>
        </table>
      </div>
    </div>
  </div>
  
  
  
  
  
  
  
  
  
  
  
  
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<script>
	

	var currentTitle = document.getElementById('current-year-month');
	var calendarBody = document.getElementById('calendar-body');
	var mainTodayDay = document.getElementById('main-day');
	var mainTodayDate = document.getElementById('main-date');
	
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

	function removeCalendar(){
		/* 추후 달력 업데이를 위해 미리 만들어놓은 부분  */
	    let catchTr = 100;
	    for(var i = 100; i< 106; i++){
	        var $tr = document.getElementById(catchTr);
	        $tr.remove();
	        catchTr++;
	    }
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
	    currentTitle.innerHTML = monthList[first.getMonth()] + '&nbsp;&nbsp;&nbsp;&nbsp;'+ first.getFullYear();
	    
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
	    currentTitle.innerHTML = monthList[first.getMonth()] + '&nbsp;&nbsp;&nbsp;&nbsp;'+ first.getFullYear();
	    removeCalendar();
	    showCalendar(); 
	    showMain();
	    clickedDate1 = document.getElementById(today.getDate());
	    clickedDate1.classList.add('active');  
	    clickStart();
	}
	
	
	

	function showMain(){
		/* 날짜를 클릭하면 해당 날짜의 색상과 왼쪽화면이 변경되게 하기 위한 함수 */
	    mainTodayDay.innerHTML = dayList[today.getDay()];
	}
	var clickedDate1 = document.getElementById(today.getDate());
	clickedDate1.classList.add('active');
	var prevBtn = document.getElementById('prev');
	var nextBtn = document.getElementById('next');
	prevBtn.addEventListener('click',prev);
	nextBtn.addEventListener('click',next);
	var tdGroup = [];
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