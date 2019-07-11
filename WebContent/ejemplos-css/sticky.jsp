<%@include file="../includes/header.jsp"%>

<style>

.contenedor {
	border: 1px solid #000;
	padding: 20px;
	width: 100%;
	float: left;
	margin-left: 5px;

}


	.caja1 {
	background-color:yellow;
	padding: 20px;
	width: 70%;
	float: left;
	margin-left: 5px;
	height: 800px;
}
.caja2 {

	background-color:silver;
	padding: 20px;
	width: 20%;
	float: left;
	margin-left: 5px;
	height: 200px;
 	
}

.caja2{
	position: sticky;
	top:100px;
 
}



</style>

<h1>sticky</h1>
<div class="contenedor">
<div class="caja1"></div>

<div class="caja2"></div>
</div>








<%@include file="../includes/footer.jsp" %>	