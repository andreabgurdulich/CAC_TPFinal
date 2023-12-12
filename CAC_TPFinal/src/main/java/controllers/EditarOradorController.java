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
import static java.lang.Integer.parseInt;
import org.slf4j.LoggerFactory;
import org.slf4j.Logger;


@WebServlet("/api/EditarOradorController")
public class EditarOradorController extends HttpServlet {
	
        static Logger logger = LoggerFactory.getLogger(EditarOradorController.class);
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id = req.getParameter("id");
		
		//Crear ProductoDAO
		OradorDAO dao = new OradorDAO();
		
		//Instanciar un Orador con el método getByID del OradorDAO.
		Orador oradorDB = dao.getById(Integer.parseInt(id));
		
		//Guardar el Request
		req.setAttribute("orador", oradorDB);
		
		//ir a la siguiente pagina
		getServletContext().getRequestDispatcher("/editar.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String id_orador = req.getParameter("id");
                String nombre = req.getParameter("nombre");
		String apellido = req.getParameter("apellido");
		String mail = req.getParameter("mail");
		String tema = req.getParameter("tema");
                String estado = req.getParameter("estado");
                
		//Crear OradorDAO
		OradorDAO dao = new OradorDAO();
		//Invocamos el Método 
                logger.info("id orador: "+id_orador);
		dao.actualizarOrador(Integer.parseInt(id_orador),nombre, apellido, mail, tema, estado);

		//ir a la siguiente pagina
		resp.sendRedirect(req.getContextPath()+"/api/ListadoOradorController");
	}
}
