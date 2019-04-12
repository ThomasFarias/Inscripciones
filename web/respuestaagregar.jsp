
<%-- Cargar archivos comunes: Cabecera, Barra Navegacion, Pie de Pagina--%>
<%@ include file="/shared/header.html" %>
<%@ include file="/shared/nav.jsp" %>
<%@ include file="/shared/footer.html" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    
    <body id="page-top">
        <section class="features" id="features" style="text-align: center;padding-top: 10em">
 <% 
            String nombre=request.getParameter("nombre");
            //SI NO HUBO ERROR AL AGREGAR, EL SERVLET ENVIA ERROR TRUE
            //SI HAY PROBLEMAS MUESTRA MENSAJE DE ERROR
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

