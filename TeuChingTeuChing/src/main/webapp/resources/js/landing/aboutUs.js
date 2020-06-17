var lastScrollY = 0;
window.onscroll = function() {
	var scroll = window.scrollY;
	console.log("scroll ", scroll);
	if(lastScrollY < scroll) {
		if(scroll >= 900 && scroll <= 1000) {
			document.getElementById('slide3').scrollIntoView({behavior: 'smooth'});
			/*var top = document.getElementById('slide3').offsetTop;
			window.scrollTo({top: top, behavior: 'smooth'});*/
		} else if(scroll >= 103 && scroll <= 200) {
			document.getElementById('slide2').scrollIntoView({behavior: 'smooth'});
			/*var top = document.getElementById('slide2').offsetTop;
			window.scrollTo({top: top, behavior: 'smooth'});*/
		}
	}
	lastScrollY = scroll;
}