<%@ include file="/shared/header.html" %>
<%@ include file="/shared/nav.jsp" %>
<%@ include file="/shared/footer.html" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="es">
     <script src="static/js/jquery.validate.js"></script>
    <script src="static/js/validarFormas.js"></script>
<body id="page-top">
  <section class="features" id="features">
    <div class="container section-heading text-center  pt-4 p-4">
        <h2>Contacto</h2>
        <p class="text-muted">Envía tu consulta.</p>
        <hr>
        <div class=" d-flex justify-content-center pt-4">
          <form method="post" class="col-7" id="formaContacto" action="ServletForm"> 
          <div class="form-group row ">
            <label for="inputPassword" class="col-sm-2 col-form-label">Nombre</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" id="nombre" name="nombre">

             </div>
          </div>
          
          <div class="form-group row">
            <label  class="col-sm-2 col-form-label">Email</label>
             <div class="col-sm-10">
              <input type="text" class="form-control" name="correo">
            </div>
          </div>
          
          <div class="form-group row">
            <label  class="col-sm-2 col-form-label">Numero</label>
            <div class="col-sm-10">
              <input type="text" class="form-control" id="telefono" name="telefono">
            </div>
          </div>
            
          <div class="form-group row">
            <label  class="col-sm-2 col-form-label">Motivo</label>
            <div class="col-sm-10">
                <select class="form-control" id="motivo" name="motivo">
                  <option value="">Seleccione opción</option>
                  <option value="incribir">Inscribir ramo</option>
                  <option value="cupo">Cupo de ramo</option>
                  <option value="solicitar cupo">Solicitar cupo</option>
                </select>
            </div>
          </div>
             


          
          <div class="form-group row">
           <label  class="col-sm-2 col-form-label">Consulta</label>
            <div class="col-sm-10">
              <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="consulta"></textarea>
            </div>
          </div>
          
          <div class="form-group row">
            <div class="col-sm-12">
              <button class="btn btn-danger" type="submit" name="enviar">Enviar</button>
            </div>
          </div>  
        </form>
      </div>
    </div>
  </section>
      
</body>
</html>
