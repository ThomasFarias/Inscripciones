<%-- BARRA DE NAVEGACION--%>
<%-- Tambien se administra un BEAN de la sesión en este archivo--%>
<%@page import="models.UsuarioFacadeLocal"%>
<%@page import="models.UsuarioFacade"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%-- Declaración del BEAN "usuario" con la sesión como scope.--%>
<jsp:useBean id="usuario" class="models.UsuarioFacade" scope="session" />
<!DOCTYPE html>
<!-- Menú Navegacion -->

<%-- 
    Si se recibe un atributo del servletLogin se modifica el BEAN para
     que contenga los datos del usuario que esta autenticado en el sistema
--%>  
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
 
<html>
    <%-- Cargar archivos comunes: Cabecera, Barra Navegacion, Pie de Pagina--%>
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

 
 <%-- La barra de navegación cambia sus ITEMS dependiendo si hay un usuario logueado o no --%>
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
