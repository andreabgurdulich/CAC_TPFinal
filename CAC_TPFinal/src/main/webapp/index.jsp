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
        <nav class="navbar navbar-expand-lg" style="background-color:rgb(50, 50, 50);">

            <div class="container-fluid">

                <a class="navbar-brand" href="#">

                    <img src="assets/images/codoacodo.png" alt="logo codo a codo" width="150" height="90">

                </a>

                <button class="navbar-toggler text-bg-secondary" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                        aria-label="Toggle navigation">

                    <span class="navbar-toggler-icon"></span>

                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">

                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                        <li class="nav-item">

                            <a class="nav-link active text-bg-dark border rounded-5 text-center" aria-current="page" href="#">

                                Conferencia Bs As

                            </a>

                        </li>

                    </ul>

                    <div class="d-flex justify-content-center">

                        <ul class="navbar-nav me-auto mb-2 mb-lg-0 start-100">

                            <li class="nav-item">

                                <a class="nav-link" aria-current="page" href="#">La Conferencia</a>

                            </li>

                            <li class="nav-item">

                                <a class="nav-link" aria-current="page" href="<%=request.getContextPath()%>/api/ListadoOradorController" style="color: lightslategray;">Los oradores</a>

                            </li>

                            <li class="nav-item">

                                <a class="nav-link" href="#" style="color: lightslategray;">El lugar y la fecha</a>

                            </li>

                            <li class="nav-item">

                                <a class="nav-link" aria-current="page" href="#" style="color: lightslategray;">Conviértete en orador</a>

                            </li>

                            <li class="nav-item">

                                <a class="nav-link" aria-current="page" href="ComprarTickets.html" style="color:green;">Comprar tickets</a>

                            </li>

                        </ul>

                    </div>

                </div>

            </div>

        </nav>

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

        <nav class="navbar navbar-expand-lg"

             style="padding-left: 10%;padding-right: 10%;height: 100px; background-color:#2d526a;">

            <div class="navbar-nav container-fluid">

                <a class="nav-link" href="#">Preguntas <br>Frecuentes</a>

                <a class="nav-link" href="#">Contáctanos</a>

                <a class="nav-link" href="#">Prensa</a>

                <a class="nav-link" href="#">Conferencias</a>

                <a class="nav-link" href="#">Términos y <br>Condiciones</a>

                <a class="nav-link" href="#">Privacidad</a>

                <a class="nav-link" href="#">Estudiantes</a>

            </div>

        </div>

    </div>

</nav>

</body>

</html>