
<%@include file="../includes/header.jsp" %>

	<h1>CREAR PERRO</h1>
	<p class="text-danger">${mensaje }</p>
	<form action="perro/PerroController" method="post">
		<label>Nombre </label>
		<input type="text" name="nombre" min="3" autofocus >
		<br /> <br /> 
		<label>Raza </label>
		<select name="raza">
		    <option value=""></option>
  			<option value="Boxer">Boxer</option>
 		    <option value="Beagle">Beagle</option>
			<option value="Labrador">Labrador</option>
  			<option value="Dalmata">Dalmata</option>
  			<option value="Chihuahua">Chihuahua</option>
		</select>
		<br /><br /> 

		<label>edad</label>
		<input type="number" name="edad">
		<br /><br />
		
		<label>Vacunado </label>
		<input type="radio" name="vacunado" value="true">SI 
		<input type="radio" name="vacunado" value="false" checked>NO
		<br /><br />
		<input	type="submit" value="Crear Perro" />
			 
	</form>

	<br />
	<br />
	<a href="index.jsp">Pagina principal</a>








<%@include file="../includes/footer.jsp" %>