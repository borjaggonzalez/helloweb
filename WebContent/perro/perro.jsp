<%@page import="java.util.ArrayList"%>
<%@page import="com.ipartek.formacion.modelo.pojo.Perro"%>
<%@include file="../includes/header.jsp" %>

<h1>LISTADO PERRO</h1>
	${mensaje}
	 ${posicion}
<h2>EL ULTIMO PERRO</h2>
	${perro}
	
	<h2>LISTA DE PERROS CREADOS</h2>
<% 	
	
	ArrayList<Perro> perros = new ArrayList<Perro>();
	perros =(ArrayList<Perro>) request.getAttribute("perros");
	String vacunado="NO";


	
	for(Perro p:perros){
		
		out.print("<li>" + p + " <a href='perro/PerroController?nombre="+ p.getNombre()+"'>[ELIMINAR]</a></li>");

	}
	
		
%>

<a href="perro/formularioperro.jsp">Ir atras</a>


<%@include file="../includes/footer.jsp" %>