<%@include file="../includes/header.jsp" %>

 <h1>NUEVO VIDEO</h1>
<p class = "text-danger">${mensaje } </p>
	<form action="youtube/YoutubeController" method="get">
		<label class="obligatorio">Titulo del video</label><input  type="text" name="titulo"
			 required pattern=".{2,150}"><br />
		<br />
		 <label  class="obligatorio">Codigo del video</label> <input type="text"
			name="codigo" required pattern=".{11,11}"><br />
	
	   <br />
		<label>Reproducciones</label> <input type="number" name="reproducciones" value="0"><br />
				<input type="submit" value="Crear Video" />
				<input type="reset" value="Limpiar Formulario" />
	</form>

	<br /><br />
	<a href="index.jsp">Pagina principal</a>
	

<%@include file="../includes/footer.jsp" %>