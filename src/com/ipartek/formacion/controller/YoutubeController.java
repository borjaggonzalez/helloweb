package com.ipartek.formacion.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ipartek.formacion.modelo.pojo.Youtube;

/**
 * Servlet implementation class YoutubeController
 */
@WebServlet("/youtube/YoutubeController")
public class YoutubeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String VISTA_FORMULARIO = "formulariocrearvideo.jsp";
	private static final String VISTA_DETALLE = "video.jsp";
	String vista = VISTA_DETALLE;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public YoutubeController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// recibir parametros
		String titulo = request.getParameter("titulo");
		String codigo = request.getParameter("codigo");
		int reproducciones = Integer.parseInt(request.getParameter("reproducciones").toString());
		Youtube video = null;

		// validar

		try {
			video = new Youtube(titulo, codigo);
			video.setReproducciones(reproducciones);
			vista = VISTA_DETALLE;
			request.setAttribute("video", video);
		} catch (Exception e) {
			vista = VISTA_FORMULARIO;
			request.setAttribute("mensaje", e.getMessage());

		}
		// aplicar logica de negocio

		// enviar atributos

		// request interna o ir a una JSP
		request.getRequestDispatcher(vista).forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		doGet(request, response);
	}

}
