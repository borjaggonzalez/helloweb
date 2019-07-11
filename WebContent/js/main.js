/*
 * 
 * Nuestro primer script
 * 
 */
//Comentario de linea
//Esto se ejecuta siempre en el BROWSER, no es Java
//alert("POP UP, Prohibido como los odio");
//confirm("¿Eres mayor de edad?");
/*
console.info("es un mensaje informativo");
console.debug("la variable x = 3");
console.log("Es un log, por ejemplo para decir que paso por aqui");
console.warn("Houston tenemos un problema");
console.error("Upps, la heliado parda");
*/


function init() {

	console.debug('DOM Cargado y listo para usar');
	activateMenu();

}


function activateMenu() {
	console.trace('activateMenu inicio');
	var url = window.location.href;
	var anclasMenu = document.querySelectorAll('#menu a');
	console.debug('anclasMenu %o', anclasMenu);
	console.debug('url' + url);

	if (url.indexOf("/ejemplos-html/") != -1) {
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
	console.trace('activateMenu fin');
}

function goTop(event) {
	console.debug("pulsado boton Arriba Espania");
	//Evitamos el funcionamiento normal de un enlace <a href=""></a>
	event.preventDefault();


	//Scroll hacia arriba a la posicion 0
	document.documentElement.scrollTop = 0;

}

function pruebas() {
	var h1 = document.getElementById("titulo1")
	console.debug("seleccionado elemento h1 por su id contiene texto " + h1.textContent);
	h1.style.color = 'red';
	h1.textContent = 'Nuevo contenido cambiado por JS';
	h1.innerHTML = h1.innerHTML + '<span class="rojo"> TOMA SPAN </span>';



	var parrafos = document.getElementsByTagName("p");
	console.debug("parrafos %o", parrafos);

	for (i = 0; i < parrafos.length; i++) {
		parrafos[i].style.color = "green";
		parrafos[i].style.fontSize = '26px';
	}


	var animalesJson = [{
		"nombre": "Gato",
		"clase": "fas fa-cat fa-3x"
	},
	{
		"nombre": "Perro",
		"clase": "fas fa-dog fa-3x"
	},
	{
		"nombre": "Cuervo",
		"clase": "fas fa-crow fa-3x"
	}

	];


	var lukeJson = {
		"name": "Luke Skywalker",
		"height": "172",
		"mass": "77",
		"hair_color": "blond",
		"skin_color": "fair",
		"eye_color": "blue",
		"birth_year": "19BBY",
		"gender": "male"

	};



	console.debug("lukeJson %o" + lukeJson);



	var nombre = document.getElementById("nombre");

	console.debug("animales %o" + animalesJson);

	var lista = document.getElementById("listaAnimales");
	var lis = "";
	lista.innerHTML = "";


	for (i = 0; i < animalesJson.length; i++) {

		lis += `<li>${animalesJson[i].nombre}</li> <li class="${animalesJson[i].clase}"></li>`;

	}


	lista.innerHTML = lis;
}