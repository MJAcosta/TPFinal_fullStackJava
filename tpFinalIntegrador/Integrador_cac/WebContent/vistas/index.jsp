<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Conf Bs As</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"> 
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <link href="css/style.css" rel="stylesheet">
    
</head>
<body>

  
  
  <div class="container-fluid g-0">
    
    <div class="row w-100 m-0 barraNav">

      <div class="col-4">
        <div class="logo">
              <a href="FrontController?="><img src="img/codoacodo.png" height="120"></a>
              <a href="FrontController?=" class="navbar-brand text-white fs-2">Conf Bs As</a>
            </div>
      </div>

      <div class="col-8 menu w-auto justify-content-center">
       
            <ul class="navbar-nav flex-row textoMenu">
              <li class="nav-item m-2"><a href="FrontController?=" class="nav-link text-white">La conferencia</a></li>
              <li class="nav-item m-2"><a href="FrontController?=/index.html#anclaOradores" class="nav-link text-white opacity-50">Los oradores</a></li>
              <li class="nav-item m-2"><a href="FrontController?=/index.html#anclaLugarYfecha" class="nav-link text-white opacity-50">El lugar y la fecha</a></li>
              <li class="nav-item m-2"><a href="FrontController?=/index.html#anclaSerOradore" class="nav-link text-white opacity-50">Conviértete en orador</a></li>
              <li class="nav-item m-2"><a href="FrontController?accion=registrar" class="nav-link" style="color: #29a744;">Comprar tickets</a></li>
              <li class="nav-item m-2"><a href="FrontController?accion=backoffice" class="nav-link" style="color: #f2ee0c;">Back Office</a></li>
            </ul>
          
      </div>

      
    </div>
    
    <div class="row gx-0">

        <div class="col-12 fotos">
            <div id="carouselSlidesOnly" class="carousel slide position-relative d-flex align-items-center justify-content-end" data-bs-ride="carousel">
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img src="img/ba1.jpg" class="d-block w-100 opacidad" alt="Buenos Aires 1">
                  </div>
                  <div class="carousel-item">
                    <img src="img/ba2.jpg" class="d-block w-100 opacidad" alt="Buenos Aires 2">
                  </div>
                  <div class="carousel-item">
                    <img src="img/ba3.jpg" class="d-block w-100 opacidad" alt="Buenos Aires 3">
                  </div>
                </div>
                <div class="position-absolute text-end col-md-6 col-12 text-light TextoCarousel">
                  <div class="d-none d-md-block pt-5 mt-5">
                    <h1 class="tituloCarousel">
                      Conf Bs As
                    </h1>
                    <p>
                      Bs As llega por primera vez a Argentina. Un evento para compartir con
                      nuestra comunidad el conocimiento y experiencia de los expertos que
                      están creando el futuro de Internet. Ven a conocer a miembros del
                      evento, a otros estudiantes de Codo a Codo y los oradores de primer
                      nivel que tenemos para ti. ¡Te esperamos!
                    </p>
                  </div>
                  <div class="d-none d-sm-block d-md-none text-center mt-5">
                    <h1>
                      Conf Bs As
                    </h1>
                    <p>
                      Por primera vez a Argentina. Veni a conocer los miembros del
                      evento, estudiantes y oradores de primer
                      nivel que tenemos para ti. ¡Te esperamos!
                    </p>
                  </div>
                  <div class="d-block d-sm-none text-center mb-0 pb-0 mt-5">
                    <p class="mb-0 pt-3">
                      Conoce los miembros del
                      evento. ¡Te esperamos!
                    </p>
                  </div>
                  <div class="pt-1 d-grid gap-2 d-md-block">
                    <a class="btn btn-outline-light botonOrador" href="FrontController?=/index.html#anclaSerOradore" role="button">Quiero ser orador</a>
                    <a class="btn btn-outline-light botonTickets" href="FrontController?accion=registrar" role="button">Comprar Tickets</a>
                  </div> 
                </div>
              </div>
        </div>
    </div>

    <a class="ancla" id="anclaOradores"></a>
    <div class="row justify-content-center mt-3 me-0 ms-0">

        <div class="col-auto">
            <p class="mb-0">CONOCE A LOS</p>
        </div>
    </div>

    <div class="row w-auto justify-content-center me-0 ms-0">

      <div class="col-auto h1 mb-0">
          <p class="mb-0">ORADORES</p>
      </div>
    </div>

    <div class="row justify-content-center g-0">

      <div class="col-3 border m-3" >
        <img src="img/steve.jpg" class="d-block w-100" alt="Steve Jobs">

      <div class="p-3">
        <button type="button" class="btn btn-warning p-1 m-0 lh-1"><div class="textoBoton">JavaScript</div></button>
        <button type="button" class="btn btn-info text-white p-1 m-0 lh-1 " style="background-color: #16a2b8; border-color: #16a2b8;"><div class="textoBoton">React</div></button>
        <p class="titulos">Steve Jobs</p>
        <p class="texto">ipsum dolor sit amet, consectetur adipiscing elit. Quisque rutrum metus eget nisl luctus, id iaculis dolor commodo. Donec finibus tristique gravida. Vestibulum libero justo, pulvinar nec nisi et, venenatis accumsan lacus. Nunc massa turpis, faucibus at ipsum.</p>
      </div>
      </div>

      <div class="col-3 border m-3">
        <img src="img/bill.jpg" class="d-block w-100" alt="Bill Gates">
        
        <div class="p-3">
          <button type="button" class="btn btn-warning p-1 m-0 lh-1"><div class="textoBoton">JavaScript</div></button>
          <button type="button" class="btn btn-info text-white p-1 m-0 lh-1 " style="background-color: #16a2b8; border-color: #16a2b8;"><div class="textoBoton">React</div></button>
          <p class="titulos">Bill Gates</p>
          <p class="texto">ipsum dolor sit amet, consectetur adipiscing elit. Quisque rutrum metus eget nisl luctus, id iaculis dolor commodo. Donec finibus tristique gravida. Vestibulum libero justo, pulvinar nec nisi et, venenatis accumsan lacus. Nunc massa turpis, faucibus at ipsum.</p>
        </div>

      </div>

      <div class="col-3 border m-3">
        <img src="img/ada.jpeg" class="d-block w-100" alt="Ada Lovelace">
        
        <div class="p-3">
          <button type="button" class="btn btn-warning text-white p-1 m-0 lh-1" style="background-color: #757171; border-color: #757171;"><div class="textoBoton">Negocios</div></button>
          <button type="button" class="btn btn-info text-white p-1 m-0 lh-1 " style="background-color: #d81111; border-color: #d81111;"><div class="textoBoton">Startups</div></button>
          <p class="titulos">Ada Lovelace</p>
          <p class="texto">ipsum dolor sit amet, consectetur adipiscing elit. Quisque rutrum metus eget nisl luctus, id iaculis dolor commodo. Donec finibus tristique gravida. Vestibulum libero justo, pulvinar nec nisi et, venenatis accumsan lacus. Nunc massa turpis, faucibus at ipsum.</p>
        </div>

      </div>

    </div>

    <a class="ancla" id="anclaLugarYfecha"></a>
    <div class="row g-0">

      <div class="col-6 border-end">
        <img src="img/honolulu.jpg" class="w-100">
      </div>

      <div class="col-6 text-white mb-0 border-start octubre" style="background-color: #353a40">
        <h1>Bs As - Octubre</h1>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed volutpat, magna nec fermentum pulvinar, orci tortor ornare diam, et convallis eros est et augue. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi mollis, diam et tincidunt egestas, magna ex aliquam odio, vitae suscipit est lectus a ex. Sed vulputate lacus quis dolor posuere bibendum.</p>
        <button type="button" class="btn btn-outline-light botonLugar">Conocé más</button>
      </div>

      

    </div>

    <a class="ancla" id="anclaSerOradore"></a>
    <div class="row justify-content-center mt-3 me-0 ms-0">

      <div class="col-auto">
          <p class="mb-0">CONVIÉRTETE EN UN</p>
      </div>
  </div>

  <div class="row w-auto justify-content-center me-0 ms-0">

    <div class="col-auto h1 mb-0">
        <p class="mb-0">ORADOR</p>
    </div>
  </div>

  <div class="row justify-content-center mt-3 me-0 ms-0 anotateParaOrador">

    <div class="col-auto">
        <p class="mb-4">¡Anótate como orador para dar una <span class="charlaIgnite">charla ignite</span>. Cuéntanos de qué quieres hablar!</p>
    </div>

  </div>

  <div class="row justify-content-center m-0">

    <div class="col-3">
      <form>
        <div class="mb-3">
          <input type="text" class="form-control" id="inputNombre" aria-describedby="emailHelp" placeholder="Nombre">
       
        </div>
    </div>

    <div class="col-3">
      <form>
        <div class="mb-3">
          <input type="text" class="form-control" id="inputApellido" aria-describedby="emailHelp" placeholder="Apellido">
        </div>
    </div>
  
  </div>

  <div class="row justify-content-center m-0">

    <div class="col-6">
      <form>
        <div class="mb-3">
          <textarea class="form-control" id="inputQueHablar" placeholder="¿Sobre qué quieres hablar?" rows="4"></textarea>
          <p style="color: #46474b; margin-top: 10px;">Recuerda incluir un título para tu charla</p>
        </div>
    </div>

    <div class="row justify-content-center p-0">

      <div class="col-6">
        <button type="button" class="btn text-light botonEnviar">Enviar</button>
      </div>
    </div>

  </div>

  <div class="row m-0">
    <div class="col-8 menuInferior w-100">
       
      <ul class="navbar-nav flex-row textoMenuInferior align-items-center">
        <li class="nav-item linkInferior"><a href="#" class="nav-link text-white">Preguntas Frecuentes</a></li>
        <li class="nav-item linkInferior"><a href="#" class="nav-link text-white">Contáctanos</a></li>
        <li class="nav-item linkInferior"><a href="#" class="nav-link text-white">Prensa</a></li>
        <li class="nav-item linkInferior"><a href="#" class="nav-link text-white">Conferencias</a></li>
        <li class="nav-item linkInferior"><a href="#" class="nav-link text-white">Términos y condiciones</a></li>
        <li class="nav-item linkInferior"><a href="#" class="nav-link text-white">Privacidad</a></li>
        <li class="nav-item linkInferior"><a href="#" class="nav-link text-white">Estudiantes</a></li>
      </ul>
    
</div>
  </div>

</div>

</body> 
</html>
