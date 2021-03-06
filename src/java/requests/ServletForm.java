/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package requests;

import entities.Contacto;
import entities.Contacto_obsoleto;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.ContactoFacadeLocal;

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
    @EJB ContactoFacadeLocal contacto;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        ArrayList<String> datos = new ArrayList<String>(); //datos no validos del formulario
        String nombre;
        String email;
        String telefono;
        String consulta;
        String motivo;
	Date date = new Date();
        
        Contacto c = new Contacto();
        
        nombre = request.getParameter("nombre"); 
        telefono = request.getParameter("telefono"); 
        consulta = request.getParameter("consulta"); 
        email = request.getParameter("correo"); 
        motivo = request.getParameter("motivo");
        
        try{            
            c.setIdContacto(contacto.count());
            c.setFechaEnvio(date);
            c.setNombreContacto(nombre);
            c.setMotivo(motivo);
            c.setRequerimiento(consulta);
            c.setCorreo(email);
            c.setTelefono(Integer.parseInt(telefono)); 
            contacto.create(c);            
            
        }catch(Exception e){
            System.out.println(e);
        }
        
        
        
        if(nombre.equals(""))
        {
            datos.add("nombre");
            
        }
        
        
        if(consulta.length()<1)
        {
           datos.add("consulta");
            
        }
        
        if(email.length()<1)
        {
           datos.add("correo electronico");
            
        }
        
        
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/respuestaform.jsp");        
        request.setAttribute("datos",datos); //datos no validos del formulario
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
