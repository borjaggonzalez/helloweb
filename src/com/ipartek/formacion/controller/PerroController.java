package com.ipartek.formacion.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ipartek.formacion.modelo.pojo.Perro;

/**
 * Servlet implementation class PerroController
 */
@WebServlet("/perro/PerroController")
public class PerroController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String VISTA_FORMULARIO = "formularioperro.jsp";
	private static final String VISTA_DETALLE = "perro.jsp";
	String vista = VISTA_DETALLE;
	ArrayList<Perro> perros = new ArrayList<Perro>();
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PerroController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String nombre = request.getParameter("nombre");
		String mensaje = "Hemos sacrificado a " + nombre;


		
		for(int i=0;i<perros.size();i++) {
			if(nombre.equals(perros.get(i).getNombre())) {


			 perros.remove(i);
		}
		}
		
		request.setAttribute("mensaje", mensaje);
		
		request.setAttribute("perros", perros);
		request.getRequestDispatcher(vista).forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String nombre = request.getParameter("nombre");
		String raza = request.getParameter("raza");
		int edad = Integer.parseInt(request.getParameter("edad").toString());
		boolean vacunado =Boolean.parseBoolean(request.getParameter("vacunado").toLowerCase().toString());
	
		
		
		Perro perro = new Perro();
		perro.setNombre(nombre);
		perro.setRaza(raza);
		perro.setEdad(edad);
		perro.setVacunado(vacunado);
		perros.add(perro);
		request.setAttribute("perro", perro);
		request.setAttribute("perros", perros);
	
		
		
		request.getRequestDispatcher(vista).forward(request, response);
		
		
	}

}
