<%-- 
    Document   : respuestaform
    Created on : 26-mar-2019, 17:44:32
    Author     : cetecom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link href="static/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
           <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Acerca de Nosotros</title>

  <!-- Bootstrap core CSS -->
  <link href="static/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link rel="stylesheet" href="vendor/simple-line-icons/css/simple-line-icons.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Muli" rel="stylesheet">

  <!-- Plugin CSS -->
  <link rel="stylesheet" href="device-mockups/device-mockups.min.css">

  <!-- Custom styles for this template -->
  <link href="static/css/new-age.min.css" rel="stylesheet">
    </head>
    
<body id="page-top">
    

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="#page-top">Start Bootstrap</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="index.html">Inicio</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#">Nosotros</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="contacto.html">Contacto</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="login.html">Iniciar Sesión</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

       <section class="download bg-primary text-center h-100" id="download">
    <div class="container h-100">
      <div class="row h-100">
        <div class="col-md-8 mx-auto">
          <h2 class="section-heading">
        <%
        String mensaje;
        if(Boolean.parseBoolean(request.getAttribute("valido").toString())){
           mensaje="es valido"; 
            
        }else{
            mensaje=request.getAttribute("mensaje").toString();
            
            
        }
        %>
        
        <h1> <%=mensaje%> </h1>
        <h1> Numero: <%=request.getParameter("telefono")%> </h1>
        <h1> Motivo: </h1>
        <h1> Consulta: </h1>
          <div class="badges">
          </div>
        </div>
      </div>
    </div>
  </section>
<footer class="fixed-bottom">
    <div class="container">
      <p>&copy; Pagina de Ayuda de Inscripción de Asignaturas</p>
      <ul class="list-inline">
        <li class="list-inline-item">
          <a href="#">Privacidad</a>
        </li>
        <li class="list-inline-item">
          <a href="#">Terminos de Uso</a>
        </li>
        <li class="list-inline-item">
          <a href="#">Preguntas Frecuentes</a>
        </li>
      </ul>
    </div>
  </footer>