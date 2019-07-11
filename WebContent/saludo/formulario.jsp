<%@include file="../includes/header.jsp" %>

<a href="../index.jsp">Pagina Anterior</a>


<form action="saludo/saludar" method="get">

	<input type="text" name="nombre" placeholder="Dime tu nombre" /> 
	<p>${mensaje}</p>
	<input type="number" step="1" name="veces" value="1" placeholder="Cuantas veces te saludo" /> 
	<select name="idioma">
		<option value="eu">Euskera</option>
		<option value="en">Ingles</option>
		<option value="es">Castellano</option>

	</select> <br /><br />
	<input type="submit" value="Enviar" />
</form>

	
<%@include file="../includes/footer.jsp" %>
