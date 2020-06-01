var check = null;
var checkCnt = 0;
var keywordArr = null;
var searchKeyword = "";

function reset() {
	checkCnt = 0;
	keywordArr = new Array();
	searchKeyword = "";
}


document.querySelectorAll(".keywordBtn").forEach(function(el) {
	el.addEventListener('click', function(v) {
		var btnId = v.target.id;
		btnId = btnId.substring(btnId.length - 2, btnId.length);
		
		document.querySelectorAll('.keywordChk').forEach(function(el) {
			if(el.id.includes(btnId)) {
				check = el;
			}
		})
		
		if(checkCnt > 4) {
			alert("키워드는 최대 5개까지 선택가능합니다.");
			check.checked = true;
		}
		
		if(check.checked == true) {
			check.checked = false;
			v.target.style.background = "#ffb5b5";
			v.target.style.color = "white";
			checkCnt--;
		} else {
			check.checked = true;
			v.target.style.background = "white";
			v.target.style.color = "#ffb5b5";
			checkCnt++;
		}
		
	})
})

// 검색어로 검색했을 시 연결되는 곳
document.getElementById("inputBtn").addEventListener('click', function(el) {
	var input = document.getElementById("keywordInput");
	console.log(input.value);
	$.ajax({
		url : "/teuching/matching/searchword.do",
		data : {
			"input" : input.value
		},
		success : function(v) {
			console.dir(v)
		}
	})
})

// 키워드 선택 후 검색했을 시 연결되는 곳
document.getElementById("keywordSearchBtn").addEventListener('click', function(el) {
	document.querySelectorAll('.keywordChk').forEach(function(v) {
		if(v.checked == true) {
			/*searchKeyword += v.value + ", ";*/
		}
	})
	
	console.log(searchKeyword);
})