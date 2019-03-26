/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package requests;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author cetecom
 */
public class ServletForm extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String nombre;
        String email;
        String telefono;
        String consulta;
        String mensaje = "55555555555555";
        Boolean valido = true;
        
        nombre = request.getAttribute("nombre").toString(); 
        telefono = request.getAttribute("telefono").toString(); 
        consulta = request.getAttribute("consulta").toString(); 
        email = request.getAttribute("email").toString(); 
        
        if(nombre == "")
        {
            mensaje.concat("El nombre no es válido\n");
            valido = false;
        }
        if(telefono.length()<8)
        {
            mensaje.concat("El telefono no es válido\n");
            valido = false;
        }
        
        if(consulta.length()<1)
        {
            mensaje.concat("La consulta no es válida\n");
            valido = false;
        }
        
        if(email.length()<1)
        {
           mensaje.concat("El correo electronico no es válido\n");
            valido = false;
        }
        request.setAttribute("valido", valido);
        request.setAttribute("mensaje", mensaje);  
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/requests/respuestaform.jsp");
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
