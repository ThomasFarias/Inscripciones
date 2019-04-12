<%@ include file="/shared/header.html" %>
<%@ include file="/shared/nav.jsp" %>
<%@ include file="/shared/footer.html" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="es">
     <script src="static/js/jquery.validate.js"></script>
    <script src="static/js/validarFormas.js"></script>
    <script src="static/js/formularioAjax.js"></script>
    
    <body id="page-top">
        <section class="features" id="features">
            <div class="container section-heading text-center  pt-4 p-4">
                <h2>Iniciar Sesión</h2>
                <div id="escondido">
                    <h4 id="error" style="color:#FF0000"></h4>
                </div>        
            <div class=" d-flex justify-content-center pt-4">
                <form method="post" class="col-7" id="formaLogin" action=""> 

                    <div class="form-group row ">
                        <label class="col-sm-2 col-form-label">Correo</label>
                        <div class="col-sm-10">
                            <input type="email" class="form-control" id="correo" name="correo">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label  class="col-sm-2 col-form-label">Password</label>
                            <div class="col-sm-10">
                                <input type="password" class="form-control" id="password" name="password">
                            </div>
                    </div>    

                    <div class="form-group row">
                        <div class="col-sm-12">
                            <button class="btn btn-danger" type="button" id="enviar" name="enviar"    >Ingresar</button>
                        </div>
                    </div>  
                </form>
            </div>
        </div>
      </section>   
    </body>
</html>
