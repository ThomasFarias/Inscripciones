package requests;

import entities.Usuario;
import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.UsuarioFacadeLocal;

public class ServletAgregar extends HttpServlet {
    
    @EJB UsuarioFacadeLocal usuarioFacade;
    /**
     * PROCESA EL REQUEST PROVENIENTE DE "agregar.jsp"
     * SI LOS DATOS SON VALIDOS SE INSERTA UN USUARIO NUEVO
     * EN LA BASE DE DATOS

     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/respuestaagregar.jsp");        
        
        //Se instancia un usuario con los datos del formulario
        Usuario nuevo_usuario = new Usuario(
                0, 
                request.getParameter("nombre"), 
                request.getParameter("apellidos"),
                request.getParameter("correo"),
                request.getParameter("password"));
        try 
        {
            System.out.println("Agregando usuario nuevo...");
            System.out.println("Nombre "+nuevo_usuario.getNombre());
            System.out.println("Apellidos "+nuevo_usuario.getApellidos());
            System.out.println("Email: "+nuevo_usuario.getEmail());
            System.out.println("Password: "+nuevo_usuario.getPassword());
            
            //Se usa la "fachada" de usuario para acceder al metodo de creacion
            //de un usuario en la base de datos.
            usuarioFacade.create(nuevo_usuario);
            //Se pasa la respuesta a respuestaagregar.jsp para mostrar el resultado
            //de la operación.
            request.setAttribute("nombre", nuevo_usuario.getNombre());
            request.setAttribute("error", false);
            
        }catch(Exception e)
        {
            //Si hay error se envia el parametro error = true
            request.setAttribute("error", true);
            System.out.println(e);
            
        }
        //Se envia la respuesta.
        rd.forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
