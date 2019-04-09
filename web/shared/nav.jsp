<%-- 
    Document   : nav
    Created on : 09-Apr-2019, 04:02:12
    Author     : matia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="usuario" class="models.UsuarioFacade" scope="session" />
<!DOCTYPE html>
﻿<!DOCTYPE html>
<!-- Menú Navegacion -->
<html>
  <nav class="navbar navbar-expand-lg navbar-light bg-dark fixed-top" id="mainNav">
    <div class="container">
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="agregar.jsp">Inicio</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="nosotros.jsp">Nosotros</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="contacto.jsp">Contacto</a>
          </li>
          <li class="nav-item">
              <% if(usuario.isLogged())
              {
                  out.println("<a class=\"nav-link js-scroll-trigger\" href=\"login.jsp\">Agregar Usuario</a>");
              } else
              {
                out.println("<a class=\"nav-link js-scroll-trigger\" href=\"login.jsp\">Iniciar Sesión</a>");

              }
              %>
          </li>
        </ul>
      </div>
    </div>
  </nav>
</html>
