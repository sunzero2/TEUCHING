var lastScrollTop = 0;
window.onscroll = function() {
	var st = document.querySelector('#img01').offsetTop;
	var text = document.querySelector('#text01');
	text.style.transform = 'translateY(' + st + ')';
}