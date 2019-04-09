<%@ include file="/shared/header.html" %>
<%@ include file="/shared/nav.jsp" %>
<%@ include file="/shared/footer.html" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="es">
     <script src="static/js/jquery.validate.js"></script>
    <script src="static/js/validarFormaContacto.js"></script>
<body id="page-top">
  <section class="features" id="features">
    <div class="container section-heading text-center  pt-4 p-4">
        <h2>Iniciar Sesión</h2>
        <% 
            if(request.getAttribute("isLogged") != null && 
               !Boolean.parseBoolean(request.getAttribute("isLogged").toString()) )
                out.println("<h4 style=\"color:#FF0000\">Correo o Contraseña Incorrectos</h2>");
         %>
        <hr>
        
        <div class=" d-flex justify-content-center pt-4">
            
            
        <form method="post" class="col-7" id="formaLogin" action="ServletLogin"> 
              
          <div class="form-group row ">
            <label class="col-sm-2 col-form-label">Correo</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" id="correo" name="email">
             </div>
          </div>
          
          <div class="form-group row">
            <label  class="col-sm-2 col-form-label">Password</label>
             <div class="col-sm-10">
              <input type="text" class="form-control" name="password">
            </div>
          </div>
          
      
           
          
          <div class="form-group row">
            <div class="col-sm-12">
              <button class="btn btn-danger" type="submit" name="enviar">Ingresar</button>
            </div>
          </div>  
        </form>
      </div>
    </div>
  </section>
      
</body>
</html>
