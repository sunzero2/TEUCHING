var index = 0;

document.querySelectorAll('.slide_btn').forEach(function(el) {
	el.addEventListener('click', function() {
		move_text('true');
		
		index = el.id.substring(el.id.length - 1);
		move_slide(--index).then(function(rgx) {
			if(rgx == 'true') {
				window.setTimeout(function() {
					move_text('false');
				}, 1500);
			}
		});
	})
})

function move_slide(idx) {
	return new Promise(function(resolve, reject) {
		document.querySelectorAll('.slide_common').forEach(function(el) {
			el.style.transform = 'translateY(-' + (idx * 100) + 'vh)';
			el.style.transitionDuration = '1.5s';
		});
		
		resolve('true');
	});
}

function move_text(rgx) {
	var title = document.querySelectorAll('.about_title');
	var content = document.querySelectorAll('.about_content');
	
	if(rgx == 'true') {
		title.forEach(function(el) {
			el.style.opacity = '0';
			el.style.transform = 'translateY(100vh)';
		})
		
		content.forEach(function(el) {
			el.style.opacity = '0';
			el.style.transform = 'translateY(100vh)';
		})
	} else {
		title.forEach(function(el) {
			el.style.opacity = '1';
			el.style.transform = 'translateY(44vh)';
			el.style.transitionDuration = '1s';
		})
		
		content.forEach(function(el) {
			el.style.opacity = '1';
			el.style.transform = 'translateY(46vh)';
			el.style.transitionDuration = '1s';
		})
	}
}