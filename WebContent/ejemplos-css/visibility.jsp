<%@include file="../includes/header.jsp"%>

<h1>5.8 Visibility</h1>

<p>Los elementos de bloque forman lo que CSS denomina "contextos de
	formato de bloque". En este tipo de contextos, las cajas se muestran
	una debajo de otra comenzando desde el principio del elemento
	contenedor. La distancia entre las cajas se controla mediante los
	márgenes verticales.</p>


<style>
.contenedor {
	border: 1px solid #000;
	padding: 20px;
	width: 40%;
	float: left;
	margin-left: 5px;
}

.box {
	display: inline-block;
	background-color: teal;
	color: #FFF;
	margin: 2%;
	width: 115px;
	height: 115px;
}

.oculto {
	display: none;
}

.invisible {
	visibility: hidden;
}
</style>

<div class="contenedor">

	<div class="box">Caja 1</div>

	<div class="box">Caja 2</div>
	<div class="box">Caja 3</div>




	<div class="box">Caja 4</div>

	<div class="box oculto">Caja 5</div>
	<div class="box">Caja 6</div>
	<div class="box">Caja 7</div>

	<div class="box">Caja 8</div>
	<div class="box">Caja 9</div>

</div>

<div class="contenedor">

	<div class="box">Caja 1</div>

	<div class="box">Caja 2</div>
	<div class="box">Caja 3</div>




	<div class="box">Caja 4</div>

	<div class="box invisible">Caja 5</div>
	<div class="box">Caja 6</div>
	<div class="box">Caja 7</div>

	<div class="box">Caja 8</div>
	<div class="box">Caja 9</div>

</div>


<div class="contenedor">

<img alt="bodyboard" src="http://lorempixel.com/400/200/sports/2/">  

</div>



<%@include file="../includes/footer.jsp"%>