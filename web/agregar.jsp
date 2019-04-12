<%@ include file="/shared/header.html" %>
<%@ include file="/shared/nav.jsp" %>
<%@ include file="/shared/footer.html" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="es">
     <script src="static/js/jquery.validate.js"></script>
    <script src="static/js/validarFormaContacto.js"></script>
    <script src="static/js/validarFormas.js"></script>
<body id="page-top">
  <section class="features" id="features">
    <div class="container section-heading text-center  pt-4 p-4">
        <h2>Registrar</h2>
        <p class="text-muted">Nuevo Usuario.</p>
        <hr>
        <div class=" d-flex justify-content-center pt-4">
          <form method="post" class="col-7" id="formaAgregar" action="ServletAgregar"> 
              
          <div class="form-group row ">
            <label class="col-sm-2 col-form-label">Nombre</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" id="nombre" name="nombre">
             </div>
          </div>
              
              <div class="form-group row ">
            <label  class="col-sm-2 col-form-label">Apellidos</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" id="apellidos" name="apellidos">

             </div>
          </div>
          
          <div class="form-group row">
            <label  class="col-sm-2 col-form-label">Email</label>
             <div class="col-sm-10">
              <input type="text" id="correo" class="form-control" name="correo">
            </div>
          </div>
          
          <div class="form-group row ">
            <label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
              <div class="col-sm-10">
                <input type="password" class="form-control" id="password" name="password">

             </div>
          </div>

          
          <div class="form-group row">
            <div class="col-sm-12">
              <button class="btn btn-danger" type="submit" name="agregar">Crear</button>
            </div>
          </div>  
        </form>
      </div>
    </div>
  </section>
      
</body>
</html>
