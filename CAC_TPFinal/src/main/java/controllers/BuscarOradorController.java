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
import java.util.List;

@WebServlet("/api/BuscarOradorController")
public class BuscarOradorController extends HttpServlet {
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String nombre = req.getParameter("nombre");
		
		//Crear ProductoDAO
		OradorDAO dao = new OradorDAO();
		
		//invocar el metodo buscar(clave)
		List<Orador> oradores = dao.getByNombre(nombre);
		
		//guardar en el request el producto
		req.setAttribute("oradores", oradores);
		
		//ir a la siguiente pagina
		getServletContext().getRequestDispatcher("/listado.jsp").forward(req, resp);
	}
}
