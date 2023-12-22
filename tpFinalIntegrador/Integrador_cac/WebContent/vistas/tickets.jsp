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
              <li class="nav-item m-2"><a href="" class="nav-link" style="color: #29a744;">Comprar tickets</a></li>
              <li class="nav-item m-2"><a href="FrontController?accion=backoffice" class="nav-link" style="color: #f2ee0c;">Back Office</a></li>
            </ul>
          
      </div>

      
     
    
    </div>
    
    <div class="row justify-content-center descuentos g-0">
      <div class="col-2 descuento border border-primary m-1">
        <p class="habilidad">Estudiante</p>
        <p class="tienenDescuento">Tienen un descuento</p>
        <p class="cantidadDescuento">80%</p>
        <p class="presentarDocumentacion">* Presentar documentación</p>
      </div>

      <div class="col-2 descuento border border-success m-1">
        <p class="habilidad">Trainee</p>
        <p class="tienenDescuento">Tienen un descuento</p>
        <p class="cantidadDescuento">50%</p>
        <p class="presentarDocumentacion">* Presentar documentación</p>      
      </div>

      <div class="col-2 descuento border border-warning m-1">
        <p class="habilidad">Junior</p>
        <p class="tienenDescuento">Tienen un descuento</p>
        <p class="cantidadDescuento">15%</p>
        <p class="presentarDocumentacion">* Presentar documentación</p>  
      </div>
    </div>

    <div class="row justify-content-center mt-2 me-0 ms-0">
      <div class="col-auto">
        <p>VENTA</p>
      </div>
    </div>

    <div class="row valorTicket justify-content-center mt-2 me-0 ms-0">
      <div class="col-auto">
        <p>VALOR DE TICKET $200</p>
      </div>
    </div>

<form id="formulario" action="FrontController?accion=insert"method="post">
    <div class="row justify-content-center mb-3 me-0 ms-0">
      <div class="col-3">
        <div>
          <input type="text" class="form-control" id="inputNombre" name="nombre" aria-describedby="emailHelp" placeholder="Nombre" required>
        </div>
      </div>

      <div class="col-3">
        <div>
          <input type="text" class="form-control" id="inputApellido" name="apellido" aria-describedby="emailHelp" placeholder="Apellido" required>
        </div>
      </div>

    </div>

    <div class="row justify-content-center mb-3 me-0 ms-0">
      <div class="col-6">
        <div>
          <input type="email" class="form-control" id="inputCorreo" name="mail" aria-describedby="emailHelp" placeholder="Correo" required>
        </div>
      </div>
    </div>

    <div class="row justify-content-center me-0 ms-0">
      <div class="col-3">
        <p class="textoCantidad">Cantidad</p>
      </div>

      <div class="col-3">
        <p class="textoCategoria">Categoria</p>
      </div>
    </div>

    

    <div class="row justify-content-center mb-3 me-0 ms-0">
      <div class="col-3">
        <input type="number" class="form-control" id="inputCantidad" name="cantidad" min="1" aria-describedby="emailHelp" placeholder="Ingrese Cantidad..." onkeydown="evitarNegativo(event)" required>
      </div>

      <div class="col-3">
        <select class="form-select" aria-label="Default select example" id="inputCategoria" name="categoria">
          <option value="0" id="sinCategoria">Sin Categoria</option>
          <option value="1" id="estudiante">Estudiante</option>
          <option value="2" id="trainee">Trainee</option>
          <option value="3" id="junior">Junior</option>
        </select>
      </div>
    </div>

    <div class="row justify-content-center mb-4 justify-content-center me-0 ms-0">
      <div class="col-6 bg-info totalAPagar justify-content-center" id="pagoTotal">
        <input class="bg-info border-0 text-white" type="text" name="resultadoInput" id="resultadoInput" value="Total a pagar: $" disabled readonly>
        <script>
        
        </script>
      </div>
    </div>
    <div class="row justify-content-center me-0 ms-0 m-0">
    <div class="col-2 m-2">
        <button type="button" onclick="window.open('FrontController?accion=volver')"   class="btn btn-secondary text-light px-5 w-100 h-100 fs-2" id="btnBorrar">Volver</button>
                            </div>
                            
      <div class="col-2 m-2">
        <button id="comprar" type="submit" onclick="window.open('FrontController?accion=')" class="btn btn-success text-light px-5 w-100 h-100 fs-2" >Comprar</button>
      </div>
      <div class="col-2 m-2">
        <button id="borrar" type="reset" class="btn btn-danger text-light px-5 w-100 h-100 fs-2">Borrar</button>
      </div>

      
      
      
    </div>
</form>
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

<script src="js/index.js"></script>
</body> 
</html>
