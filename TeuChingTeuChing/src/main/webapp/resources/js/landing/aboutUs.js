var lastScrollTop = 0;
window.onscroll = function() {
	var st = document.querySelector('#img01').offsetTop;
	console.log(st);
	var text = document.getElementById('text01');
	text.style.transform = 'translateY(' + st + ')';
}