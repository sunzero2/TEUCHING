var purpose = "null";
var sports = "null";
var area = "null";
var classSize = "null";
var gender = "null";
var place = "null";
var select = document.getElementById('placeSelect');


document.querySelectorAll(".keywordBtn").forEach(function(el) {
	el.addEventListener('click', function(v) {
		if(el.checked == true) {
			el.checked = false;
			v.target.style.background = "white";
			v.target.style.color = "#ff9090";
		} else {
			el.checked = true;
			v.target.style.background = "#ff9090";
			v.target.style.color = "white";
		}
		
		reset(el.name, el.value);
		
		if(el.value == '타지역') {
			select.style.display = "inline";
			area = "어케할지고민중";
		} else if(el.value == '등록지 기준') {
			select.style.display = "none";
			// 바꿀거야.
			area = "test";
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
	var input = document.getElementById("keywordInput");
	var option = document.getElementById("searchOption");
	
	$.ajax({
		url : "/teuching/matching/searchword.do",
		data : {
			"input" : input.value,
			"option" : option.value
		},
		success : function(v) {
			console.dir(v)
		}
	})
})

// 키워드로 검색
document.getElementById("keywordSearchBtn").addEventListener('click', function(el) {
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
			console.dir(v);
		}
	})
})