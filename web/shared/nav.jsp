<%-- 
    Document   : nav
    Created on : 09-Apr-2019, 04:02:12
    Author     : matia
--%>

<%@page import="models.UsuarioFacadeLocal"%>
<%@page import="models.UsuarioFacade"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="usuario" class="models.UsuarioFacade" scope="session" />
<!DOCTYPE html>
<!-- Menú Navegacion -->
<html>
  <nav class="navbar navbar-expand-lg navbar-light bg-dark fixed-top" id="mainNav">
    <div class="container">
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="index.jsp">Inicio</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="nosotros.jsp">Nosotros</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="contacto.jsp">Contacto</a>
          </li>
          
           <%                   
                  try{
                      if((Boolean)session.getAttribute("isLogged"))
                      {
                        usuario.isLogged = true;
                        usuario.nombre = (String)session.getAttribute("nombre");       
                      }
                  }catch(Exception ex){
                       System.out.println("ERROR DE SESION");
                  }
 %>
 
             <%
                if(usuario.isLogged)
              {                                                                 
                  out.println("<li class=\"nav-item\"> <a class=\"nav-link js-scroll-trigger\" href=\"agregar.jsp\">Agregar Usuario</a></li>");
                  out.println("<li class=\"nav-item\"> <a class=\"nav-link js-scroll-trigger\" href=\"ServletContactos\">Lista Contactos</a></li>");
                  out.println("<li class=\"nav-item\"> <a class=\"nav-link js-scroll-trigger\" style=\"color:#A32525;\" href=\"ServletLogout\">Salir</a></li>");
              } else
              {                 
                out.println("<li class=\"nav-item\"> <a class=\"nav-link js-scroll-trigger\" href=\"login.jsp\">Iniciar Sesión</a></li>");

              }
                     
              %>
          
        </ul>
      </div>
    </div>
  </nav>
</html>
