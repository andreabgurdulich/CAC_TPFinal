<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <title>Index</title>
</head>

<body>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/funciones.js"></script>
    <!-- Inicio Navbar -->
    <%@ include file="navbar.jsp" %>
    <!-- Fin Navbar -->

    <!-- Inicio Cards -->
    <div class="row" style="padding-left: 25%; padding-right: 25%; padding-top: 3%; padding-bottom:3%;">
        <div class="col-sm-4" style="margin-right: -2.5%px;">
            <div class="card border-primary" style="border-radius: 0%;">
                <div class="card-body text-center">
                    <h5 class="card-title">Estudiante</h5>
                    <p class="card-text">Tienen un descuento</p>
                    <p class="card-text"><b>80%</b></p>
                    <p class="card-text">*presentar documentacion</p>
                </div>
            </div>
        </div>

        <div class="col-sm-4" style="margin-left: -2.5%; margin-right: -2.5%;">
            <div class="card border-success" style="border-radius: 0%;">
                <div class="card-body text-center">
                    <h5 class="card-title">Trainee</h5>
                    <p class="card-text">Tienen un descuento</p>
                    <p class="card-text"><b>50%</b></p>
                    <p class="card-text">*presentar documentacion</p>
                </div>
            </div>
        </div>

        <div class="col-sm-4">
            <div class="card border-warning" style="border-radius: 0%;">
                <div class="card-body text-center">
                    <h5 class="card-title">Junior</h5>
                    <p class="card-text">Tienen un descuento</p>
                    <p class="card-text"><b>15%</b></p>
                    <p class="card-text">*presentar documentacion</p>
                </div>
            </div>
        </div>
    </div>
    <!-- Fin Cards -->

    <!-- Texto Pre Formulario -->
    <div>
        <h6 class="text-center">VENTA</h6>
        <h2 class="text-center">VALOR DE TICKET $200</h2>
    </div>

    <!-- Inicio Formulario -->
    <div class="row" style="padding-left: 20%;padding-right: 20%;">
        <div class="col">
            <input type="text" class="form-control" placeholder="Nombre" aria-label="First name" id="Nombre">
        </div>
        <div class="col">
            <input type="text" class="form-control" placeholder="Apellido" aria-label="Last name" id="Apellido">
        </div>
    </div>

    <div class="row" style="padding-left: 20%;padding-right: 20%;padding-top: 2%;padding-bottom: 2%;">
        <div class="col">
            <input type="email" class="form-control" placeholder="Correo" aria-label="Correo" aria-describedby="emailHelp" style="vertical-align: top;" id="Correo">
        </div>
    </div>

    <div class="row" style="padding-left: 20%;padding-right: 20%;padding-bottom: 2%;">
        <div class="col-sm-6">
            <input type="number" class="form-control" placeholder="Cantidad" aria-label="Cantidad" id="Cantidad" min="1" max="10">
        </div>

        <div class="col-sm-6">
            <select class="form-select form-select-sm" aria-label=".form-select-sm example" id="Categoria">
                <option value="0">Categoría</option>
                <option value="1">Estudiante</option>
                <option value="2">Trainee</option>
                <option value="3">Junior</option>
            </select>
        </div>
    </div>

    <div class="row" style="padding-left: 20%;padding-right: 20%;padding-bottom: 2%; ;">
        <div class="col">
            <input type="text" class="form-control" aria-label="Total" placeholder="Total a pagar: $" style="vertical-align: top; background-color: rgb(133, 187, 238)" id="Total">
        </div>
    </div>

    <div class="row" style="padding-left: 20%;padding-right: 20%;padding-bottom: 1%;">
        <div class="col-sm-6">
            <button type="button" class="btn btn-success btn-lg" style="width: 100%;" onclick="borrar()">Borrar</button>
        </div>

        <div class="col-sm-6">
            <button type="button" class="btn btn-success btn-lg" style="width: 100%;" onclick="resumen()">Resumen</button>
        </div>
    </div>
    <!-- Fin Formulario -->

    <!-- Inicio Footer -->
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
    </nav>

</body>

</html>