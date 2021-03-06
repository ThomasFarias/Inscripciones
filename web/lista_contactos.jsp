
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Vector"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="entities.Contacto"%>

<%-- Cargar archivos comunes: Cabecera, Barra Navegacion, Pie de Pagina--%>
<%@ include file="/shared/header.html" %>
<%@ include file="/shared/nav.jsp" %>
<%@ include file="/shared/footer.html" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html lang="es">
    <%-- Carga de JavaScript para validar la FORM--%>
    <script src="static/js/jquery.validate.js"></script>
    <script src="static/js/validarFormaContacto.js"></script>
    <body id="page-top" class="container-fluid">
        <section class="d-flex justify-content-center row"> 
            <h1 class="display-2 text-dark text-center col-12">Bienvenido</h1>
            <h1 class="display-3 text-dark text-center col-12"><%= usuario.nombre %></h1>
            <article class="col-8"> 
                <%-- TABLA PARA MOSTRAR LOS CONTACTOS--%>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Nombre contacto</th>
                            <th scope="col">Correo</th>
                            <th scope="col">Telefono</th>
                            <th scope="col">Motivo</th>
                            <th scope="col">Requerimiento</th>
                            <th scope="col">Fecha de envío</th>
                        </tr>
                    </thead>
                    <tbody>
                <%-- SE OBTIENEN LOS CONTACTOS DESDE EL SERVLET--%>
      <%  
          //FORMATEAMOS LA FECHA
          SimpleDateFormat dt = new SimpleDateFormat("HH:mm:ss dd-MM-yyyy");
          Vector<Contacto> contactos = new Vector<Contacto>();
          //OBTENEMOS LOS CONTACTOS Y LOS IMPRIMIMOS
          contactos=(Vector<Contacto>)request.getAttribute("contactos");
          try{                
          for (Contacto c : contactos){
              out.println("<tr>");
              out.println("<th scope='row'>"+c.getIdContacto()+"</th>");
              out.println("<td>"+c.getNombreContacto()+"</td>");
              out.println("<td>"+c.getCorreo()+" </td>");
              out.println("<td>"+c.getTelefono()+" </td>");
              out.println("<td>"+c.getMotivo()+" </td>");
              out.println("<td>"+c.getRequerimiento()+" </td>");
              out.println("<td>"+dt.format(c.getFechaEnvio())+" </td");
              out.println("<tr>"); }  
          }catch(Exception e){
          } 
      %>  
                    </tbody>
                </table>
            </article>
        </section>     
    </body>
</html>
