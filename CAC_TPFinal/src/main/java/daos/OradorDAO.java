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

    private static final String SQL_DELETE = "UPDATE orador SET estado='0' WHERE ID_ORADOR = ?";
    private static final String SQL_OBTENER_ID = "SELECT * FROM orador WHERE ID_ORADOR = ?";
    private static final String SQL_UPDATE = "UPDATE orador SET nombre = ?, apellido = ?, mail = ?, tema = ?, estado = ? WHERE ID_ORADOR = ?";

    //instancio el logger
    static Logger logger = LoggerFactory.getLogger(OradorDAO.class);
    //Métodos de Búsqueda
    //Búsqueda por ID
    public Orador getById(Long idx) {
        //Conexión
        Connection con = null;
        PreparedStatement stmt = null;
        int registros = 0;
        Orador oradFromDb = null;

        //Statement
        try {
            con = AdmConexiones.getConnection();

            stmt = con.prepareStatement(SQL_OBTENER_ID);
            stmt.setLong(1, idx);
            ResultSet rs = stmt.executeQuery();

            //Recupera como máximo un sólo elemento
            if(rs.next()) {//si existe, hay uno solo
                    // rs > sacando los datos
                    Long id = rs.getLong(1);//tomar la primer columna
                    String nombre = rs.getString(2);
                    String apellido = rs.getString(3);
                    String mail = rs.getString(4);
                    String tema = rs.getString(5);
                    Date fecha_alta = rs.getDate(6);
                    String estado = rs.getString(7);

                    //Se instancia un Orador y se le asignan los valores  recuperados de la DB.
                    oradFromDb = new Orador(id,nombre,apellido,mail,tema, fecha_alta,estado);
            }			
        } catch (SQLException e) {
                // ERRORES
                e.printStackTrace();
        }
        return oradFromDb;
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
                            Long id = rs.getLong(1);
                            String nombre = rs.getString(2);
                            String apellido = rs.getString(3);
                            String mail = rs.getString(4);
                            String tema = rs.getString(5);
                            Date fecha_alta = rs.getDate(6);
                            String estado = rs.getString(7);

                            //Instanciamos el y se le asignan los valores  recuperados de la DB.
                            Orador oradorDB = new Orador(id,nombre,apellido,mail,tema, fecha_alta,estado);

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
                            Long id = rs.getLong(1);//tomar la primer columna
                            String nombre = rs.getString(2);
                            String apellido = rs.getString(3);
                            String mail = rs.getString(4);
                            String tema = rs.getString(5);
                            Date fecha_alta = rs.getDate(6);
                            String estado = rs.getString(7);

                            //Crear una instancia de orador
                            Orador oradorDB = new Orador(id,nombre,apellido,mail, tema, fecha_alta, estado);

                            //Si el Orador está vigente (estado = True), lo agrego a la lista 
//				if(estado)
//                                {
//                                    list.add(oradorDB);
//                                }
                        
                            if("1".equals(estado))
                                {
                                    list.add(oradorDB);
                                }
                            
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
    public int actualizarOrador(Orador ora) {
        Connection conn = null;
        PreparedStatement stmt = null;
        int registros = 0;
        try{
            conn = AdmConexiones.getConnection();
            stmt = conn.prepareStatement(SQL_UPDATE);
            stmt.setString(1, ora.getNombre());
            stmt.setString(2, ora.getApellido());
            stmt.setString(3, ora.getMail());
            stmt.setString(4, ora.getTema());
            stmt.setString(5, ora.getEstado());
            stmt.setLong(6, ora.getId());
            registros = stmt.executeUpdate();
        } catch(SQLException | NullPointerException ex) {
            ex.printStackTrace(System.out);
        } finally {
            try {
                stmt.close();
                conn.close();
            } catch(SQLException | NullPointerException ex) {
                ex.printStackTrace(System.out);
            }
        }
        
        return registros;
        
           
    }

    //Delete	      
    public void eliminarOrador(int id) {
    Connection conn = null;
    Statement stmt = null;

    try
    {
        conn = AdmConexiones.getConnection();
        String sql = "UPDATE ORADOR "
                + "set estado = '0' "
                + "WHERE id_orador = '"+id+"'";
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
