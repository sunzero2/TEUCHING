var purpose = "null";
var sports = "null";
var area = "null";
var classSize = "null";
var gender = "null";
var place = "null";
var select = document.getElementById('placeSelect');
var pList;

document.querySelectorAll(".keywordBtn").forEach(function(el) {
	el.addEventListener('click', function(v) {
		if(el.checked == true) {
			el.checked = false;
			v.target.style.background = "white";
			v.target.style.color = "#ff9090";
			
			reset(el.name, 'null');
		} else {
			el.checked = true;
			v.target.style.background = "#ff9090";
			v.target.style.color = "white";

			reset(el.name, el.value);
		}
		
		
		if(el.value == '타지역') {
			select.style.display = "inline";
			area = "타지역";
		} else if(el.value == '등록지 기준') {
			select.style.display = "none";
			// 바꿀거야.
			area = "서울";
		}
	})
})

function reset(name, value) {
	document.getElementsByName(name).forEach(function(el) {
		if(el.checked) {
			if(el.value != value) {
				el.checked = false;
				el.style.background = "white";
				el.style.color = "#ff9090";
			} 
		}
	})
	
	switch(name) {
		case "purpose":
			purpose = value;
			break;
		case "sports":
			sports = value;
			break;
		case "classSize":
			classSize = value;
			break;
		case "gender":
			gender = value;
			break;
		case "place":
			example = value;
			break;
	}
}

// 검색어로 검색
document.getElementById("inputBtn").addEventListener('click', function(el) {
	pList = new Array();
	var input = document.getElementById("keywordInput");
	var option = document.getElementById("searchOption");
	
	$.ajax({
		url : "/teuching/matching/searchword.do",
		data : {
			"input" : input.value,
			"option" : option.value
		},
		success : function(v) {
			for(i = 0; i < v.length; i++) {
				pList.push(v[i]);
			}
			
			createTable();
		}
	})
})

// 키워드로 검색
document.getElementById("keywordSearchBtn").addEventListener('click', function(el) {
	pList = new Array();
	
	if(area == '타지역') {
		area = select.value;
	}
	
	$.ajax({
		url: "/teuching/matching/keyword.do",
		data: {
			purpose : purpose,
			sports : sports,
			area : area,
			classSize : classSize,
			gender : gender,
			place : place
		},
		success: function(v) {
			for(i = 0; i < v.length; i++) {
				pList.push(v[i]);
			}
			
			createTable();
		}
	})
})

document.getElementById('writeBtn').addEventListener('click', function() {
	location.href="/teuching/post/writePost.do?postIdx=0";
})

function createTable() {
	document.getElementById('topUp').style.display = 'block';
	// post list 생성할 table
	var table = document.getElementById('postTable');
	table.innerHTML = "";
	
	console.dir(pList);
	for(i = 0; i < pList.length; i++) {
		// row 생성
		var tr = table.insertRow();
		tr.className = 'blog-entry blog-entry-2 justify-content-end col-md-12 ftco-animate fadeInUp ftco-animated';
		
		// 트레이너의 이미지 담을 cell 생성
		var imageTd = tr.insertCell();
		
		// 이미지 담을 div 생성
		var image = document.createElement('div');
		image.className = 'img rounded-circle mb-2';
		image.style.backgroundImage = 'url(../resources/img/classes-1.jpg)';
		image.style.width = '116px';
		image.style.height = '141px';
		image.style.marginTop = '54px';
		imageTd.append(image);
		
		// 게시글 콘텐츠 담을 cell 생성
		var contentTd = tr.insertCell();
		
		// 콘텐츠 감싸줄 div 생성
		var wrapper = document.createElement('div');
		wrapper.className = 'text pl-md-4 ml-md-2 pt-4';
		wrapper.style.width = '853px';
		contentTd.append(wrapper);
		
		// 트레이너 이름, 작성일자, 댓글 수 담을 header
		var header = document.createElement('div');
		header.className = 'meta';
		wrapper.append(header);
		
		var writeDate = document.createElement('div');
		writeDate.innerText = pList[i].writeDate;
		header.append(writeDate);
		
		var writer = document.createElement('div');
		header.append(writer);
		
		var writerLink = document.createElement('a');
		// 트레이너 프로필로 이동할 수 있는 링크
		writerLink.href = '/teuching/profile/review.do';
		writerLink.innerText = pList[i].trainerName;
		writer.append(writerLink);
		
		var body = document.createElement('div');
		wrapper.append(body);
		
		var title = document.createElement('h3');
		title.className = 'heading mt-2';
		body.append(title);
		
		var titleLink = document.createElement('a');
		titleLink.href = '/teuching/post/detail.do?postNo=' + pList[i].postIdx;
		titleLink.innerText = pList[i].postTitle;
		title.append(titleLink);
		
		var content = document.createElement('div');
		content.style.height = '30px';
		content.style.overflow = 'hidden';
		content.innerText = pList[i].postCont;
		body.append(content);
	}
}