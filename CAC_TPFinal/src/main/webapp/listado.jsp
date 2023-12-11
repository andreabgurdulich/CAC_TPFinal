<%@page import="java.util.List"%>
<%@page import="dto.Orador"%>
<!DOCTYPE html>
<html lang="es-ar" data-bs-theme="light">
    <head>
        <%@include file="head.jsp" %>
        <title>
          Listado
        </title>	
    </head>
	
    <body>
        <!-- ACA VA EL NAVBAR  -->
        <%@include file="navbar.jsp" %>
        <main>
            <div class="container">
                
                <section class="bg-secondary-subtle border rounded-5 m-4 px-2 pt-2 pb-3 col-12 mx-auto text-center">
      <h2 class="my-4">Listado de oradores</h2>
      <table class="table table-sm table-striped table-hover border border-success">
                      <thead>
                        <tr>
                          <th scope="col">Id</th>
                          <th scope="col">Nombre</th>
                          <th scope="col">Apellido</th>
                          <th scope="col">Mail</th>
                          <th scope="col">Tema</th>
                          <th schope="col">Fecha Alta</th>
                          <th scope="col">Estado</th>
                        </tr>
                      </thead>
          <% 
                //codigo java
                //obtener el listado desde el request
                //se guardo bajo el nombre de "oradores"
            List<Orador> oradores = (List<Orador>)request.getAttribute("listado");
          %>
        <tbody>
            <%
                 for(Orador orador : oradores) {
            %>

             <tr>
                <th scope="row"> <%=orador.getId_orador()%> </th>
                <td><%=orador.getNombre() %></td>
                <td><%=orador.getApellido() %></td>
                <td><%=orador.getMail() %></td>
                <td><%=orador.getTema() %></td>
                <td><%=orador.getFecha_alta() %><td>
                <td><%=orador.getEstado() %></td>
                <td>
                  <a class="btn btn-danger" href="<%=request.getContextPath()%>/api/EliminarOradorController?id=<%=orador.getId_orador()%>" role="button">Eliminar</a> | 
                  <a class="btn btn-secondary" href="<%=request.getContextPath()%>/api/EditarOradorController?id=<%=orador.getId_orador()%>" role="button">Editar</a>
                </td>
              </tr>
             <%
                  }
             %>

        </tbody>
      </table>
    </section>

                      
            </div>
        </main>
    </body>	
</html>