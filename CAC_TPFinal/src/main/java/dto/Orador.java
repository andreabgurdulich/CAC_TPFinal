/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dto;

import java.sql.Date;

/**
 *
 * @author Usuario
 */
public class Orador {
    int id_orador;
    String nombre;
    String apellido;
    String mail;
    String tema;
    Date fecha_alta;
    Boolean estado;

    public Orador(int id_orador, String nombre, String apellido, String mail, String tema, Date fecha_alta, Boolean estado) {
        this.id_orador = id_orador;
        this.nombre = nombre;
        this.apellido = apellido;
        this.mail = mail;
        this.tema = tema;
        this.fecha_alta = fecha_alta;
        this.estado = estado;
    }

    public int getId_orador() {
        return id_orador;
    }

    public void setId_orador(int id_orador) {
        this.id_orador = id_orador;
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

    public Boolean getEstado() {
        return estado;
    }

    public void setEstado(Boolean estado) {
        this.estado = estado;
    }
    
}
