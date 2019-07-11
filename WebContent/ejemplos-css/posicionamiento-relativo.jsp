<%@include file="../includes/header.jsp" %>

		<h1>5.4 posicionamiento relativo</h1> 

<p>Lorem ipsum...</p>


<style>
.contenedor{
	border:1px solid #000;
	padding:20px;
}

.box{
display:inline-block;
background-color:teal;
color:#FFF;
margin: 1%;
height:150px;	
width:31%;

}

.w100{
width:98%;
}

.relativo{
background-color: #ff0303bd;
position:relative;
right:-75px;
top:40px;
}

</style>

<div class="contenedor">

<div class="box">Caja 1</div>

<div class="box relativo">Caja 2</div>
<div class="box">Caja 3</div>
<div class="box w100">Caja 4</div>

</div>

<%@include file="../includes/footer.jsp" %>