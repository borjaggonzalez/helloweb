<%@include file="../includes/header.jsp" %>

		<h1>5.3 posicionamiento normal</h1> 

<p>Los elementos de bloque forman lo que CSS denomina "contextos de formato de bloque". En este tipo de contextos, las cajas se muestran una debajo de otra comenzando desde el principio del elemento contenedor. La distancia entre las cajas se controla mediante los m�rgenes verticales.</p>


<style>
.contenedor{
	border:1px solid #000;
	padding:20px;
}

.box{
display:block;
background-color:teal;
color:#FFF;
margin: 1%;
}

.inline{
display:inline;
}



</style>

<div class="contenedor">

<div class="box">Caja 1</div>

<div class="box">Caja 2</div>
<div class="box">Caja 3</div>

</div>

<br/>
<p>Los elementos en l�nea forman los "contextos de formato en l�nea". En este tipo de contextos, las cajas se muestran una detr�s de otra de forma horizontal comenzando desde la posici�n m�s a la izquierda de su elemento contenedor. La distancia entre las cajas se controla mediante los m�rgenes laterales.</p>
<div class="contenedor">

<div class="box">Caja 1</div>

<div class="box inline">Caja 2	</div>
<div class="box inline">Caja 3</div>


</div>


<%@include file="../includes/footer.jsp" %>