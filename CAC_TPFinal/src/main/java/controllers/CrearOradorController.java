/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers;

import daos.OradorDAO;
import dto.Orador;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@WebServlet("/api/CrearOradorController")
public class CrearOradorController extends HttpServlet {

	static Logger logger = LoggerFactory.getLogger(EditarOradorController.class);
        
        @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String nombre = req.getParameter("nombre");
		String apellido = req.getParameter("apellido");
		String mail = req.getParameter("mail");
		String tema = req.getParameter("tema");
		
		//crear OradorDAO
		OradorDAO dao = new OradorDAO();
		
		//Asignarle sus variables
		dao.crearOrador(nombre, apellido, mail, tema);
		
		//ir a la siguiente pagina
		resp.sendRedirect(req.getContextPath()+"/api/ListadoOradorController");
	}
}
