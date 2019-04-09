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
import javax.ejb.Stateless;
import javax.enterprise.context.SessionScoped;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author matia
 */
@Stateless

public class UsuarioFacade extends AbstractFacade<Usuario> implements UsuarioFacadeLocal {

    boolean isLogged = false;
    
    @PersistenceContext(unitName = "InscripcionesWebPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public UsuarioFacade() {
        super(Usuario.class);
    }
    
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
     public boolean authenticate(String email, String password)
     {
        Usuario usr = getByMail(email);
        if(usr != null && usr.getPassword().compareTo(password)==0)
        {
            this.isLogged = true;
            return true;
        }
        else
        {
            return false;
        }
     }
     
     public boolean isLogged()
     {
         return this.isLogged;
     }
     
    
}
