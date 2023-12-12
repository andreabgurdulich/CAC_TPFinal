<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to- fit=no">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <title>Index</title>
    </head>


    <body>
        <script src="assets/js/bootstrap.bundle.min.js"></script>
        <%@include file="navbar.jsp" %>
        <div class="container mt-5">
            <h1 class="mb-4">Listado Oradores</h1>            
            <hr class="my-4">
            <table class="table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Mail</th>
                        <th>Tema</th>
                        <th>Fecha Alta</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Los datos se cargarán dinámicamente desde la base de datos -->
                </tbody>
            </table>
        </div>
    <%@include file="footer.jsp" %>
</nav>

</body>

</html>