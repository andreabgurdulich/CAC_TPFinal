<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to- fit=no">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css">
        <title>Navbar</title>
    </head>


    <body>
        <script src="assets/js/bootstrap.bundle.min.js"></script>
        <nav class="navbar navbar-expand-lg mb-5" style="background-color:rgb(50, 50, 50);">

            <div class="container-fluid">

                <a class="navbar-brand" href="<%=request.getContextPath()%>">

                    <img src="<%=request.getContextPath()%>/assets/images/codoacodo.png" alt="logo codo a codo" width="150" height="90">

                </a>

                <button class="navbar-toggler text-bg-secondary" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                        aria-label="Toggle navigation">

                    <span class="navbar-toggler-icon"></span>

                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">

                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                        <li class="nav-item">

                            <a class="nav-link active text-bg-dark border rounded-5 text-center" aria-current="page" href="<%=request.getContextPath()%>">

                                Conferencia Bs As

                            </a>

                        </li>

                    </ul>

                    <div class="d-flex justify-content-center">

                        <ul class="navbar-nav me-auto mb-2 mb-lg-0 start-100">

                            <li class="nav-item">

                                <a class="nav-link" aria-current="page" href="<%=request.getContextPath()%>">La Conferencia</a>

                            </li>

                            <li class="nav-item">

                                <a class="nav-link" aria-current="page" href="<%=request.getContextPath()%>/api/ListadoOradorController" style="color: lightslategray;">Los oradores</a>

                            </li>

                            <li class="nav-item">

                                <a class="nav-link" href="<%=request.getContextPath()%>" style="color: lightslategray;">El lugar y la fecha</a>

                            </li>

                            <li class="nav-item">

                                <a class="nav-link" aria-current="page" href="<%=request.getContextPath()%>/alta.jsp" style="color: lightslategray;">Conviértete en orador</a>

                            </li>

                            <li class="nav-item">

                                <a class="nav-link" aria-current="page" href="comprarTickets.jsp" style="color:green;">Comprar tickets</a>

                            </li>

                        </ul>

                    </div>

                </div>

            </div>

        </nav>
    </body>
</html>