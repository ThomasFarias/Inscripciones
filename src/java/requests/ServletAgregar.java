/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package requests;

import entities.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.UsuarioFacadeLocal;

/**
 *
 * @author matia
 */



public class ServletAgregar extends HttpServlet {
    
    @EJB UsuarioFacadeLocal usuarioFacade;
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
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/respuestaagregar.jsp");        
        
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
            usuarioFacade.create(nuevo_usuario);
            
            request.setAttribute("nombre", nuevo_usuario.getNombre());
            request.setAttribute("error", false);
            
        }catch(Exception e)
        {
            request.setAttribute("error", true);
            System.out.println(e);
            
        }
        
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
