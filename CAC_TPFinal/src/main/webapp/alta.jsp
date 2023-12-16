<html>
    <head>
            <%@include file="head.jsp" %>
    </head>

    <body class="bg-secondary-subtle">
        <main>
            <!-- ACA VA EL NAVBAR  -->
            <%@include file="navbar.jsp" %>
            <div class="containerk-fluid">
                <section class="border border-secondary rounded-4 col-6 mx-auto text-center bg-warning"> <!-- style="background-color: aquamarine" -->
                    <h1 class="text-center my-4">Alta</h1>
                    <!--  JSP -->
                    <form method="post"
                        action="<%=request.getContextPath()%>/api/CrearOradorController">
                        <div class="my-3 mx-3">
                          <input name="nombre"  type="text" class="form-control" id="nombreTextarea" placeholder="Nombre" maxlength="50">
                        </div>
                        <div class="my-3 mx-3">
                          <input name="apellido" type="text" class="form-control" id="precioNumber" placeholder="Apellido">
                        </div>
                        <div class="my-3 mx-3">
                          <input name="mail" type="text" class="form-control" id="hechoTextarea" placeholder="Mail" maxlength="50">
                        </div>
                        <div class="my-3 mx-3">
                          <input name="tema" type="text" class="form-control" id="codigoTextarea" maxlength="255" placeholder="Tema">
                        </div>
                        <select class="form-select6" aria-label="Default select example">
                            <option selected="1" class="col-2">Habilitado</option>
                            <option value="0" class="col-2">Deshabilitado</option>
                          </select>
                        <br>
                        <button class="btn btn-primary my-3 col-6">
                            Dar de alta
                        </button>
                    </form>
                </section>
            </div>
            <%@include file="footer.jsp" %>
        </main>
    </body>	
</html>