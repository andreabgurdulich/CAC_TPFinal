/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers;

import connection.AdmConexiones;
import dto.Orador;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;

@WebServlet("/api/ConsultarController")
public class ConsultarOradorController extends HttpServlet {
	
        @Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id = req.getParameter("id");
		
		//validaciones!!!
		
		String sql = "SELECT * FROM ORADOR WHERE ID = " + id;
		
		//conexion OK
		Connection con = AdmConexiones.getConnection();
		
		try {
			//statement 
			Statement st = con.createStatement();
			
			//resultset
			ResultSet rs = st.executeQuery(sql);
			
			if(rs.next()) {//�hay datos?
				// rs > sacando los datos
                                
				int id_orador = rs.getInt(1);//tomar la primer columna
				String nombre = rs.getString(2);
				String apellido = rs.getString(3);
				String mail = rs.getString(4);
				String tema = rs.getString(5);
				Date fecha_alta = rs.getDate(6);
				String estado = rs.getString(7);
				
				//campos crear un objeto????
				Orador oradorDB = new Orador(id_orador,nombre,apellido,mail,tema, (java.sql.Date) fecha_alta,estado);
				
				//ir a otra pagina y ademas pasarle datos
				
				req.setAttribute("orador", oradorDB);
			}
			
			getServletContext().getRequestDispatcher("/detalle.jsp").forward(req, resp);
			
			//cierre de conexion
			con.close();
		}catch (ServletException | IOException | SQLException e) {
			e.printStackTrace();
		}
	}
}

