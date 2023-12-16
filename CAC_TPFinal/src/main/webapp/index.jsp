<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
  <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">

    <div class="carousel-inner">

        <div class="carousel-item active">

            <img src="assets/images/ba1.jpg" class="d-block w-100" alt="Bs As1">

        </div>

        <div class="carousel-item">

            <img src="assets/images/ba2.jpg" class="d-block w-100" alt="Bs As2">

        </div>

        <div class="carousel-item">

            <img src="assets/images/ba3.jpg" class="d-block w-100" alt="Bs As3">

        </div>
        <div class="overlay"></div>
        <div class="carousel-caption position-absolute">

            <h1 class="card-title" aria-current="page">Conf Bs As</h1>
      
            <p class="card-text" aria-current="page">Bs As llega por primera vez a Argentina. Un evento para compartir con<br>
              
              nuestra comunidad el conocimiento y experiencia de los expertos que <br>
             
              están creando el futuro de Internet. Ven a conocer a miembros del <br>
            
              evento, a otros estudiantes de Codo a Codo y los oradores de primer nivel <br>
            
              que tenemos para ti. ¡Te esperamos!</p>
      
            <!--             <button type="button" class="btn btn-outline-light btn-lg" aria-current="page">Quiero ser orador</button> -->
      
            <a class="btn btn-outline-light btn-lg" href="alta.jsp" role="button">Quiero ser orador</a>
            <a class="btn btn-success btn-lg" href="comprarTickets.jsp" role="button">Comprar Tickets</a>
      
          </div>

    </div>

</div>

  <h5 style="font-size: medium; text-align: center;">CONOCE A LOS<br><span
      style="font-size: xx-large; font-weight: bold;">ORADORES</span></h5>

  <div class="row row-cols-1 row-cols-md-3 g-4" style="padding-left: 10%;padding-right: 10%;padding-bottom: 2%;">

    <div class="col">

      <div class="card h-100">
        <img src="assets/images/steve.jpg" class="card-img-top" alt="Steve Jobs">

        <div class="card-body">

          <button type="button" class="btn btn-warning btn-sm">JavaScript</button>

          <button type="button" class="btn btn-info btn-sm">React</button>

          <h5 class="card-title">Steve Jobs</h5>

          <p class="card-text">Lorem, ipsum dolor sit amet, consectetur adipisicing elit. Et voluptatibus perferendis
            deleniti, totam fuga sequi iste! Facilis explicabo repellat ut similique incidunt? Ullam nobis beatae,
            coporis facilis veniam magni ratione!</p>
        </div>

      </div>
    </div>

    <div class="col">

      <div class="card h-100">

        <img src="assets/images/bill.jpg" class="card-img-top" alt="Bill Gates">

        <div class="card-body">

          <button type="button" class="btn btn-warning btn-sm">JavaScript</button>

          <button type="button" class="btn btn-info btn-sm">React</button>

          <h5 class="card-title">Bill Gates</h5>

          <p class="card-text">Lorem, ipsum dolor sit amet, consectetur adipisicing elit. Et voluptatibus perferendis

            deleniti, totam fuga sequi iste! Facilis explicabo repellat ut similique incidunt? Ullam nobis beatae,

            coporis facilis veniam magni ratione!</p>
        </div>

      </div>

    </div>

    <div class="col">

      <div class="card h-100">

        <img src="assets/images/ada.jpeg" class="card-img-top" alt="Ada Lovelace">

        <div class="card-body">

          <button type="button" class="btn btn-info btn-sm"
            style="background-color: dimgray; border-color: dimgray;">Negocios</button>

          <button type="button" class="btn btn-info btn-sm"
            style="background-color: darkred; border-color: darkred;">Startups</button>

          <h5 class="card-title">Ada Lovelace</h5>

          <p class="card-text">Lorem, ipsum dolor sit amet, consectetur adipisicing elit. Et voluptatibus perferendis

            deleniti, totam fuga sequi iste! Facilis explicabo repellat ut similique incidunt? Ullam nobis beatae,

            coporis facilis veniam magni ratione!</p>

        </div>
      </div>
    </div>
  </div>
  <div class="container-fluid" style="padding-bottom: 2%">
    <div class="row" style="background-color: rgb(51, 51, 51);border-color: #fff;">
      <div class="col-md-6">
        <!-- Columna izquierda con la imagen -->
        <img src="assets/images/honolulu.jpg" alt="Honolulu" class="img-fluid">
      </div>
      <div class="col-md-6">
        <!-- Columna derecha con el texto y el botón -->
        <h1 style="color: #fff;">Bs As - Octubre</h1>
        <h4 style="color: #fff;">
          Buenos Aires es la provincia y localidad más grande del estado de Argentina, en los Estados Unidos. Honolulu
          es la más sureña de entre las principales ciudades estadounidenses. Aunque el nombre de Honolulu se refiere al
          área urbana en la costa sureste de la isla de Oahu, la ciudad y el condado de Honolulu han formado una
          ciudad-condado consolidada que cubre toda la ciudad (aproximadamente 600km² de superficie).
        </h4>
        <button class="btn btn-outline-light btn-lg">Conocé más</button>
      </div>
    </div>
  </div>
  
  <h5 style="font-size: medium; text-align: center;">CONVIÉRTETE EN UN<br><span
  
    style="font-size: xx-large; font-weight: bold; padding-bottom: 2%;">ORADOR</span></h5>
  
    <h5 style="font-size: medium; text-align: center;">Anótate como orador para dar una charla ignite. ¡Cuéntanos de qué
  
      quieres hablar!</h5>
  
      <div class="row" style="padding-left: 20%;padding-right: 20%;">
  
        <div class="col">
  
          <input type="text" class="form-control" placeholder="Nombre" aria-label="First name">
  
        </div>
  
        <div class="col">
  
          <input type="text" class="form-control" placeholder="Apellido" aria-label="Last name">
  
        </div>
  
      </div>
  
      <div class="row" style="padding-left: 20%;padding-right: 20%;padding-top: 2%;padding-bottom: 2%;">
  
        <div class="col">
  
          <input type="text" class="form-control" placeholder="¿Sobre qué quieres hablar?" aria-label="First name"
  
          style="height: 100px;vertical-align: top;">
  
          <p style="font-size: smaller;">Recuerda incluir un título para tu charla.</p>
  
          <button type="button" class="btn btn-success btn-lg">Enviar</button>
  
        </div>
  
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
