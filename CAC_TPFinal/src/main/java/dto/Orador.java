package dto;

import java.util.Date;

/**
 *
 * @author Usuario
 */
public class Orador {
    private Long id;
    private String nombre;
    private String apellido;
    private String mail;
    private String tema;
    private Date fecha_alta;
    private String estado;

    public Orador(Long id_orador, String nombre, String apellido, String mail, String tema, Date fecha_alta, String estado) {
        this.id = id_orador;
        this.nombre = nombre;
        this.apellido = apellido;
        this.mail = mail;
        this.tema = tema;
        this.fecha_alta = fecha_alta;
        this.estado = estado;
    }

    public Orador(Long id_orador, String nombre, String apellido, String mail, String tema) {
        this.id = id_orador;
        this.nombre = nombre;
        this.apellido = apellido;
        this.mail = mail;
        this.tema = tema;
    }
    
    public Orador(Long id_orador, String nombre, String apellido, String mail, String tema, String estado) {
        this.id = id_orador;
        this.nombre = nombre;
        this.apellido = apellido;
        this.mail = mail;
        this.tema = tema;
        this.estado = estado;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getTema() {
        return tema;
    }

    public void setTema(String tema) {
        this.tema = tema;
    }

    public Date getFecha_alta() {
        return fecha_alta;
    }

    public void setFecha_alta(Date fecha_alta) {
        this.fecha_alta = fecha_alta;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
}
