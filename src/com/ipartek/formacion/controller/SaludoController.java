package com.ipartek.formacion.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SaludoController
 */
@WebServlet("/saludo/saludar")
public class SaludoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String  EUSKERA = "Kaixo";   
	private static final String  CASTELLANO = "Hola";   
	private static final String  INGLES = "Hello"; 
	
	private static final String  IDIOMA_EU = "eu";   
	private static final String  IDIOMA_ES  = "es";   
	private static final String  IDIOMA_EN = "en"; 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaludoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//mirar name del input	
		 
	
		String nombre = request.getParameter("nombre");
		String idioma = request.getParameter("idioma");
		String veces = request.getParameter("veces");
		String saludo = "";
		String vista="respuesta.jsp";
		
		if(IDIOMA_EU.equalsIgnoreCase(idioma)) {
			saludo = EUSKERA;
		}else if (IDIOMA_ES.equalsIgnoreCase(idioma)) {
			saludo=CASTELLANO;
		}else {
			saludo = INGLES;
		}
		/*
		 * No vamos a maquetar nosotros la Response
		 * Mejor hacer una request Interna a una JSP
		 * response.getWriter().append(saludo +" " + nombre );
		 */
		String mensaje ="Introduce el nombre";
		if(nombre ==null || nombre.isEmpty()) {
			request.setAttribute("mensaje", mensaje);
			vista = "formulario.jsp";
		}else {	
	
		request.setAttribute("saludo",saludo);
		request.setAttribute("nombre", nombre);
		request.setAttribute("veces", veces);
		
		}
		
		request.getRequestDispatcher(vista).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
