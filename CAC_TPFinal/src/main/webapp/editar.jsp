<%@page import="dto.Orador"%>
<html>
    <head>
            <%@include file="head.jsp" %>	
    </head>

    <body>
        <main>
            <!-- ACA VA EL NAVBAR  -->
            <%@include file="navbar.jsp" %>
            <div class="container">
                <section>
                    <% 
                        Orador orador = (Orador)request.getAttribute("orador");
                    %>
                    <h1>Editar orador ID=<%=orador.getId_orador()%></h1>
                    <!--  JSP -->
                    <form method="POST"
                            action="<%=request.getContextPath()%>/api/EditarOradorController">
                        
                        <div class="mb-3">
                              <label for="exampleFormControlInput1" class="form-label">Id</label>
                              <input name="id"
                                    value="<%=orador.getId_orador()%>"  
                                    type="text" class="form-control" id="id" placeholder="Id" maxlength="50">
                            </div>
                            <div class="mb-3">
                              <label for="nombre" class="form-label">Nombre</label>
                              <input name="nombre"
                                    value="<%=orador.getNombre()%>"  
                                    type="text" class="form-control" id="nombre" placeholder="Nombre" maxlength="50">
                            </div>
                            <div class="mb-3">
                              <label for="apellido" class="form-label">Apellido</label>
                              <input name="apellido"
                                    value="<%=orador.getApellido()%>" 
                                    type="text" class="form-control" id="apellido">
                            </div>
                            <div class="my-3">
                                <label for="mail" class="form-label">Mail</label>
                                <input value="<%=orador.getMail()%>" name="mail" type="text" 
                                       class="form-control" id="mail" placeholder="Mail" maxlength="50">
                            </div>
                            <div class="mb-3">
                              <label for="tema" class="form-label">Tema</label>
                              <input name="tema"
                                    value="<%=orador.getTema()%>" 
                                    type="text" class="form-control" id="tema" placeholder="Tema" maxlength="50">
                            </div>
                            <div class="mb-3">
                              <label for="estado" class="form-label">Estado</label>
                              <input name="estado"
                                    value="<%=orador.getEstado()%>" 
                                    type="text" class="form-control" id="estado" placeholder="Estado" maxlength="10">
                            </div>
                            <button class="btn btn-primary">
                                Grabar
                            </button>
                    </form>
                </section>
            </div>
        </main>
    </body>	
</html>