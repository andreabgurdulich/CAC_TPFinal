/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers;

import daos.OradorDAO;
import dto.Orador;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import static java.lang.Integer.parseInt;

@WebServlet("/api/EditarController")
public class EditarOradorController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int id = parseInt(req.getParameter("id"));
		
		//Crear ProductoDAO
		OradorDAO dao = new OradorDAO();
		
		//Instanciar un Orador con el método getByID del OradorDAO.
		Orador oradorDB = dao.getById(id);
		
		//Guardar el Request
		req.setAttribute("producto", oradorDB);
		
		//ir a la siguiente pagina
		getServletContext().getRequestDispatcher("/editar.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int id_orador = parseInt(req.getParameter("id"));
                String nombre = req.getParameter("nombre");
		String apellido = req.getParameter("apellido");
		String mail = req.getParameter("mail");
		String tema = req.getParameter("tema");
                
		//Crear OradorDAO
		OradorDAO dao = new OradorDAO();
		
		//Invocamos el Método 
		dao.actualizarOrador(id_orador, nombre, apellido, mail, tema);

		//ir a la siguiente pagina
		resp.sendRedirect(req.getContextPath()+"/api/ListadoController");
	}
}
