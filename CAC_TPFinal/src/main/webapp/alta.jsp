<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to- fit=no">
        <!-- Bootstrap CSS -->
        <title>Alta</title>
        <%@include file="head.jsp" %>

        <style>
            /* Agrega estilos para el mensaje de error */
            .error-message {
                color: red;
                font-size: 14px;
            }
        </style>
    </head>

    <body>
        <script src="assets/js/funciones.js" type="text/javascript"></script>
    <main>
        <!-- ACA VA EL NAVBAR  -->
        <%@include file="navbar.jsp" %>
        <div class="container">
            <section class="border border-primary rounded-4 col-6 mx-auto text-center" style="background-color: #bacbe6">
                <h1 class="text-center my-4">Alta Orador</h1>
                <!--  JSP -->
                <form method="post" action="<%=request.getContextPath()%>/api/CrearOradorController"
                    onsubmit="return validarFormulario()">
                    <div class="my-3 mx-3">
                        <input name="nombre" type="text" class="form-control" id="nombreTextarea" placeholder="Nombre" maxlength="50">
                        <span id="nombreError" class="error-message"></span>
                    </div>
                    <div class="my-3 mx-3">
                        <input name="apellido" type="text" class="form-control" id="precioNumber" placeholder="Apellido">
                        <span id="apellidoError" class="error-message"></span>
                    </div>
                    <div class="my-3 mx-3">
                        <input name="mail" type="text" class="form-control" id="hechoTextarea" placeholder="Mail" maxlength="50">
                        <span id="mailError" class="error-message"></span>
                    </div>
                    <div class="my-3 mx-3">
                        <input name="tema" type="text" class="form-control" id="codigoTextarea" maxlength="255" placeholder="Tema">
                        <span id="temaError" class="error-message"></span>
                    </div>
                    <br>
                    <button type="submit" class="btn btn-primary my-3 col-6">
                        Dar de alta
                    </button>
                </form>
            </section>
        </div>
        <%@include file="footer.jsp" %>
    </main>
        <script>
        function validarFormulario() {
            // Reiniciar mensajes de error
            document.getElementById('nombreError').innerHTML = '';
            document.getElementById('apellidoError').innerHTML = '';
            document.getElementById('mailError').innerHTML = '';
            document.getElementById('temaError').innerHTML = '';

            var nombre = document.getElementById('nombreTextarea').value.trim();
            var apellido = document.getElementById('precioNumber').value.trim();
            var mail = document.getElementById('hechoTextarea').value.trim();
            var tema = document.getElementById('codigoTextarea').value.trim();
            var isValid = true;

            // Validar cada campo
            if (nombre === '') {
                document.getElementById('nombreError').innerHTML = 'El nombre es requerido';
                isValid = false;
            }

            if (apellido === '') {
                document.getElementById('apellidoError').innerHTML = 'El apellido es requerido';
                isValid = false;
            }

            if (mail === '') {
                document.getElementById('mailError').innerHTML = 'El mail es requerido';
                isValid = false;
            }

            if (tema === '') {
                document.getElementById('temaError').innerHTML = 'El tema es requerido';
                isValid = false;
            }

            return isValid;
        }
    </script>
    </body>	
</html>