var check = null;
var checkCnt = 0;

function reset() {
	checkCnt = 0;
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
		
		console.log(checkCnt);
	})
})