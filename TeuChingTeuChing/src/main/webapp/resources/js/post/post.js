var result = true;

function changeImg() {
	document.querySelector('.addImageIcon').src = '../resources/img/addImage.png';
	document.querySelector('.addImageText').style.color = "#ffb5b5";
}

function resetImg() {
	document.querySelector('.addImageIcon').src = '../resources/img/addImage2.png';
	document.querySelector('.addImageText').style.color = "#444444";
}

function preview(target) {
	var files = target.files;
	var fileArr = Array.prototype.slice.call(files);
	
	var preview = document.querySelector('.pre_div');
	preview.innerHTML = "";
	
	if(files.length > 5 ) {
		alert("최대 5장까지만 업로드 가능합니다.");
		result = false;
	} else {
		fileArr.forEach(function(f) {
			if(!f.type.match("image/.*")) {
				alert("이미지만 업로드 가능합니다.");
				result = false;
				return;
			} else {
				var reader = new FileReader();
				reader.onload = function(e) {
					var img = document.createElement('img');
					img.src = e.target.result;
					img.dataFile = f.name;
					img.className = 'pre_img';
					preview.append(img);
				}
				
				reader.readAsDataURL(f);
				
				result = true;
			}
		})
	}
}

function submit_result() {
	if(!result) {
		alert("파일 갯수 혹은 확장자를 확인해주세요. 이미지만 업로드 가능합니다.");
	}
	return result;
}