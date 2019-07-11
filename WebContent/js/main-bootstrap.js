function init() {

	console.debug('DOM Cargado y listo para usar');
	activateMenu();

}


function activateMenu() {
	console.trace('activateMenu inicio');
	var url = window.location.href;
	var anclasMenu = document.querySelectorAll('#navbarNav a');
	console.debug('anclasMenu %o', anclasMenu);
	console.debug('url' + url);
/*
	if (url.indexOf("/inical.jsp") != -1) {
		anclasMenu[0].classList.add('active');
		console.debug("active menu html");
	} else if (url.indexOf("/ejemplos-css/") != -1) {
		anclasMenu[1].classList.add('active');
		console.debug("active menu css");
	} else if (url.indexOf("/ejemplos-js/") != -1) {
		anclasMenu[2].classList.add('active');
		console.debug("active menu js");
	} else if (url.indexOf("/ejemplos-bootstrap/") != -1) {
		anclasMenu[3].classList.add('active');
		console.debug("active menu bootstrap");
	}else if (url.indexOf("/ejemplos-servlet/") != -1) {
		anclasMenu[4].classList.add('active');
		console.debug("active menu servlet");
	}
	*/
	console.trace('activateMenu fin');
}


$(function () {
  $('[data-toggle="popover"]').popover()
})



