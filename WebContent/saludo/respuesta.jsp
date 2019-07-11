<%@include file="../includes/header.jsp" %>

<h1>Pagina Saludo</h1>
	<%
		int nveces = Integer.parseInt(request.getAttribute("veces").toString());

		for (int i = 0; i < nveces; i++) {
	%>
	
	<!-- Expression Lenguage  -->
	<p>${saludo} ${nombre}</p>
	
	<%
		}
	%>
	
	<a href="formulario.jsp">Pagina anterior</a>
	
	
	<%
		//CODIGO DE JAVA => Scriplet
		String atributoSaludo = (String) request.getAttribute("saludo");
		out.print("<p>" + atributoSaludo + "</p");
	%>

	<p><%=atributoSaludo%></p>


	
<%@include file="../includes/footer.jsp" %>