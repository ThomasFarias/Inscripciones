<%-- 
    Document   : respuestaagregar
    Created on : 12-Apr-2019, 03:41:58
    Author     : matia
--%>

<%@ include file="/shared/header.html" %>
<%@ include file="/shared/nav.jsp" %>
<%@ include file="/shared/footer.html" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
     <script src="static/js/jquery.validate.js"></script>
    <script src="static/js/validarFormas.js"></script>
    <script src="static/js/formularioAjax.js"></script>
    
<body id="page-top">
  <section class="features" id="features" style="text-align: center;padding-top: 10em">
     <% 
  
         String nombre=request.getParameter("nombre");
               
            
            if( Boolean.parseBoolean(request.getParameter("error")) ){  
                
                out.println("<b><h1 class='display-4 text-dark font-weight-lighter'>Se agregó un usuario nuevo. </b></h1>");
                out.println("<h4 class='text-dark font-weight-light '>Nombre: "+nombre+"</h4>"); 
     
                
            }else{
                
                
                out.println("<div class='display-4 col-12' style='color:#FF0000'> <h1>ERROR AL INGRESAR USUARIO</h1></div>");


            
            }
               %> 
  </section>   
</body>
</html>

