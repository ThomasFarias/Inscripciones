<%-- 
    Document   : respuestaform
    Created on : 26-mar-2019, 17:44:32
    Author     : cetecom
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%-- Cargar archivos comunes: Cabecera, Barra Navegacion, Pie de Pagina--%>
<%@ include file="/shared/header.html" %>
<%@ include file="/shared/nav.jsp" %>
<%@ include file="/shared/footer.html" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    

  <title>Acerca de Nosotros</title>

    
    <body id="page-top">
        <section class="download bg-primary text-center h-100" id="download">
            <div class="container h-100">
                <div class="row h-100">
                    <div class="col-md-8 mx-auto">   
                        <div class=" text-dark d-block ">            
        
                <% 
                ArrayList<String> datos;
                String nombre,email,telefono,consulta;        
                datos = (ArrayList<String>)request.getAttribute("datos");
                request.setCharacterEncoding("UTF-8");


                if(!datos.isEmpty()){  

                    out.println("<b><h1 class='display-4 text-dark font-weight-lighter'>La consulta no se ha podido envíar, los siguientes datos nos son validos: </b></h1><br>");

                    for(String dato : datos){                     
                        out.println("<h4 class='text-dark font-weight-light '>"+dato+"</h4>");                    
                    }

                }else{

                    nombre=request.getParameter("nombre");
                    email=request.getParameter("correo");
                    telefono=request.getParameter("telefono");
                    consulta=request.getParameter("consulta");
                    out.println("<div class='display-4 col-12'>Felicidades "+nombre+", la consulta se ha enviado correctamente."+"</div><br>");
                    out.println("<div class='d-flex justify-content-center'><div class=' col-7 '>");
                    out.println("<h4 class='text-left'>Nombre: "+nombre+"</h4>");
                    out.println("<h4 class='text-left'>Correo: "+email+"</h4>");
                    out.println("<h4 class='text-left'>Telefono: "+telefono+"</h4>");
                    out.println("<h4 class='text-left'>Consulta:  "+consulta+"</h4>");

                    out.println("<div><div>");

                }
                   %> 
       
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>>