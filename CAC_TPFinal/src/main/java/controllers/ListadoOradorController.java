/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
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

/**
 *
 * @author victo
 */
@WebServlet("/api/ListadoOradorController")
public class ListadoOradorController extends HttpServlet {
    
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
       
        //creo la instancia de oradorDAO
        OradorDAO dao = new OradorDAO();
        
        //invocar al metodo listarOradores()
        List<Orador> listado = dao.listaDeOradores();
        
        //grabar el listado en el request para que lo vea la siguiente pagina
        req.setAttribute("listado", listado);
		
	//ir a la siguiente pagina
	getServletContext().getRequestDispatcher("/listado.jsp").forward(req, resp);
    }
    
}
