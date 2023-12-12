/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package daos;

/**
 *
 * @author Usuario
 */
import connection.AdmConexiones;
import dto.Orador;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.slf4j.LoggerFactory;
import org.slf4j.Logger;

import java.sql.PreparedStatement;

public class OradorDAO {

        private static final String SQL_DELETE = "UPDATE orador SET estado='0' WHERE ID = ?";
	
        //instancio el logger
        static Logger logger = LoggerFactory.getLogger(Orador.class);
        //Métodos de Búsqueda
        //Búsqueda por ID
        public Orador getById(int id) {
		String sql = "SELECT * FROM ORADOR WHERE id="+id;
		
		//Conexión
		Connection con = AdmConexiones.getConnection();
	
		Orador oradorDB = null;
		
		//Statement
		try {
			Statement st = con.createStatement();
			
			//resultset
			ResultSet rs = st.executeQuery(sql);
			
			//Recupera como máximo un sólo elemento
			if(rs.next()) {//si existe, hay uno solo
				// rs > sacando los datos
				int id_orador = rs.getInt(1);//tomar la primer columna
				String nombre = rs.getString(2);
				String apellido = rs.getString(3);
				String mail = rs.getString(4);
				String tema = rs.getString(5);
				Date fecha_alta = rs.getDate(6);
				String estado = rs.getString(7);
				
				//Se instancia un Orador y se le asignan los valores  recuperados de la DB.
				oradorDB = new Orador(id_orador,nombre,apellido,mail,tema, fecha_alta,estado);
			}			
		} catch (SQLException e) {
			// ERRORES
			e.printStackTrace();
		}
		return oradorDB;
	}
        
        //Búsqueda por Nombre
        public List<Orador> getByNombre(String nombre_buscado) {
		String sql = "SELECT * FROM ORADOR WHERE nombre LIKE '%"+nombre_buscado+"%' ";
		
		//Conexión
		Connection con = AdmConexiones.getConnection();
	
		List<Orador> oradores = new ArrayList<>();
		
		//Statement
		try {
			Statement st = con.createStatement();
			
			//resultset
			ResultSet rs = st.executeQuery(sql);
			
			//Puede que recuperemos ningún registro, uno solo o más de uno.
			
			while(rs.next()) {
				// rs > sacando los datos
				int id_orador = rs.getInt(1);
				String nombre = rs.getString(2);
				String apellido = rs.getString(3);
				String mail = rs.getString(4);
				String tema = rs.getString(5);
				Date fecha_alta = rs.getDate(6);
				String estado = rs.getString(7);
				
				//Instanciamos el y se le asignan los valores  recuperados de la DB.
				Orador oradorDB = new Orador(id_orador,nombre,apellido,mail,tema, fecha_alta,estado);
				
				//Si el orador está vigente, se agrega a la lista
                                oradores.add(oradorDB);
			}	
		} catch (SQLException e) {
			// ERRORES
			e.printStackTrace();
		}
		
		return oradores;
	}
	

	//métodos del CRUD
        
        //Create
	public void crearOrador(String nombre, String apellido,String mail,String tema) {
		
		Connection con = AdmConexiones.getConnection();
		
		if(con != null) { 
			// Se declara el INSERT a la base
			String sql = "INSERT INTO ORADOR (nombre, apellido, mail, tema) ";
			sql += "VALUES('"+nombre+"','"+apellido+"','"+mail+"','"+tema+"')";
			
			//Try-Catch
			try {
				Statement st = con.createStatement();			
				//Se ejecuta el insert
                                st.execute(sql);
				
				//Se cierra la conexión
				con.close();
				
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
        
        //Read
        @SuppressWarnings("empty-statement")
	public List<Orador> listaDeOradores() {
		String sql = "SELECT * FROM orador ";
		
		//Conexión
		Connection con = AdmConexiones.getConnection();
	
		List<Orador> list = new ArrayList<>();
		
		//Statement
		try {
			Statement st = con.createStatement();
			
			//resultset
			ResultSet rs = st.executeQuery(sql);
			
			//Devuelve todos los registros que haya (cero o más).
			
			while(rs.next()) {//
				// rs > sacando los datos
				int id_orador = rs.getInt(1);//tomar la primer columna
				String nombre = rs.getString(2);
				String apellido = rs.getString(3);
				String mail = rs.getString(4);
				String tema = rs.getString(5);
				Date fecha_alta = rs.getDate(6);
				String estado = rs.getString(7);
                                
				//Crear una instancia de orador
				Orador oradorDB = new Orador(id_orador,nombre,apellido,mail, tema, fecha_alta, estado);
				logger.info("Estado: "+estado);
				//Si el Orador está vigente (estado = True), lo agrego a la lista 
				if("1".equals(estado))
                                {
                                    list.add(oradorDB);
                                }
//                            list.add(oradorDB);
			}			
			
			//cierro la conexion
			con.close();
		} catch (SQLException e) {
			// ERRORES
			e.printStackTrace();
		}
		return list;
	}

	
        //Update
	public void actualizarOrador(int id_orador,String nombre, String apellido, String mail, String tema, String estado) {
		Connection con = AdmConexiones.getConnection();
		if(con != null) { 
			String sql = "UPDATE orador "
					+ " set nombre='"+nombre+"',"
					+ " apellido='"+apellido+"',"
                                        + " mail='"+mail+"',"
					+ " tema='"+ tema +"',"
                                        + " estado='"+ estado +"'"
					+ " WHERE id = "+id_orador+";";		
                        logger.info("Update SQL: "+sql);
			try {
				Statement st = con.createStatement();			
				logger.info("Update SQL: "+sql);
                                //Intenta ejecutar el SQL
                                st.executeUpdate(sql);
                                
                                //Cierra la Conexión
				con.close();
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	//Delete	      
        public void eliminarOrador(int id) {
        Connection conn = null;
        Statement stmt = null;
        int cant_registros = 0;
        
        try
        {
            conn = AdmConexiones.getConnection();
            String sql = "UPDATE ORADOR "
                    + "set estado = '0' "
                    + "WHERE id = '"+id+"'";
//            stmt = conn.prepareStatement(SQL_DELETE);
//            stmt.setInt(1, id);
            logger.info(sql);
            stmt = conn.createStatement();
            stmt.executeUpdate(sql);
//            cant_registros = stmt.executeUpdate();
        
        } 
        
        catch(SQLException | NullPointerException ex) 
        {
            ex.printStackTrace(System.out);
        } 
        finally 
          {
            try 
                {
                    stmt.close();
                    conn.close();
                } 
            catch(SQLException | NullPointerException ex) 
                {
                    ex.printStackTrace(System.out);
                }
         }
        
//        return cant_registros;
    }
}
