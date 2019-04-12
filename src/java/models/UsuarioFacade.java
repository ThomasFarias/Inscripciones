/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import entities.Usuario;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.Stateful;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author matia
 */
@Stateful

public class UsuarioFacade extends AbstractFacade<Usuario> implements UsuarioFacadeLocal {

    public boolean isLogged = false;
    public String nombre;
    public String apellidos;
    public String mail;
    
    @PersistenceContext(unitName = "InscripcionesWebPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public UsuarioFacade() {
        super(Usuario.class);
    }
    
    //Obtener un usuario con la direccion de correo, si no existe retorna null
    @Override
     public Usuario getByMail(String mail)
     {
         List<Usuario> usuarios = new ArrayList<>();
         usuarios = findAll();
         for (Usuario usr : usuarios) 
        { 
            if(usr.getEmail().compareTo(mail)== 0)
                return usr;
        }
         return null;
     }
     
    @Override
     public boolean authenticate(String mail, String password)
     {
        //usuario temporal para comparar el mail y password
        Usuario usr = getByMail(mail);
        
        if(usr != null && usr.getPassword().compareTo(password)==0)
        {
            //Si las credenciales son correctas se guardan los datos del usuario en la fachada.
            this.isLogged = true;
            this.nombre = usr.getNombre();
            this.apellidos = usr.getApellidos();
            this.mail = usr.getEmail();
            
            return true;
        }
        else
        {
            return false;
        }
     }
     
    @Override
     public boolean isLogged()
     {
         return this.isLogged;
     }
     
     @Override
     public void logout()
     {
         this.isLogged = false;
         this.nombre = "";
         this.apellidos ="";
         this.mail ="";
     }
     

}
