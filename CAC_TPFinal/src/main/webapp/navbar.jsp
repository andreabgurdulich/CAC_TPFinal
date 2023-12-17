<nav class="navbar navbar-expand-lg mb-5" style="background-color:rgb(50, 50, 50);">

            <div class="container-fluid">

                <a class="navbar-brand" href="#">

                    <img src="${pageContext.request.contextPath}/assets/images/codoacodo.png" alt="logo codo a codo" width="150" height="90">

                </a>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item link-light">
                            <a class="nav-link link-light" href="<%=request.getContextPath()%>/alta.jsp">Alta</a>
                        </li>
                        <li class="nav-item link-light">
                            <a class="nav-link link-light" href="<%=request.getContextPath()%>/api/ListadoOradorController">Oradores</a>
                        </li>
                    </ul>

                    <div class="d-flex justify-content-center">

                        <ul class="navbar-nav me-auto mb-2 mb-lg-0 start-100">

                            <li class="nav-item">

                                <a class="nav-link link-light" aria-current="page" href="#">La Conferencia</a>

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