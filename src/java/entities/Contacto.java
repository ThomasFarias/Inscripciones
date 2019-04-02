/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author cetecom
 */
@Entity
@Table(name = "contacto", catalog = "inscripciones", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Contacto.findAll", query = "SELECT c FROM Contacto c"),
    @NamedQuery(name = "Contacto.findByIdContacto", query = "SELECT c FROM Contacto c WHERE c.idContacto = :idContacto"),
    @NamedQuery(name = "Contacto.findByNombre", query = "SELECT c FROM Contacto c WHERE c.nombre = :nombre"),
    @NamedQuery(name = "Contacto.findByApelldContacto", query = "SELECT c FROM Contacto c WHERE c.apelldContacto = :apelldContacto"),
    @NamedQuery(name = "Contacto.findByCorreo", query = "SELECT c FROM Contacto c WHERE c.correo = :correo"),
    @NamedQuery(name = "Contacto.findByTelefono", query = "SELECT c FROM Contacto c WHERE c.telefono = :telefono"),
    @NamedQuery(name = "Contacto.findByMotivo", query = "SELECT c FROM Contacto c WHERE c.motivo = :motivo"),
    @NamedQuery(name = "Contacto.findByFechaEnvio", query = "SELECT c FROM Contacto c WHERE c.fechaEnvio = :fechaEnvio")})
public class Contacto implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ID_CONTACTO")
    private Integer idContacto;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "NOMBRE")
    private String nombre;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "APELLD_CONTACTO")
    private String apelldContacto;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "CORREO")
    private String correo;
    @Basic(optional = false)
    @NotNull
    @Column(name = "TELEFONO")
    private int telefono;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "MOTIVO")
    private String motivo;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "REQUERIMIENTO")
    private String requerimiento;
    @Basic(optional = false)
    @NotNull
    @Column(name = "fecha_envio")
    @Temporal(TemporalType.DATE)
    private Date fechaEnvio;

    public Contacto() {
    }

    public Contacto(Integer idContacto) {
        this.idContacto = idContacto;
    }

    public Contacto(Integer idContacto, String nombre, String apelldContacto, String correo, int telefono, String motivo, String requerimiento, Date fechaEnvio) {
        this.idContacto = idContacto;
        this.nombre = nombre;
        this.apelldContacto = apelldContacto;
        this.correo = correo;
        this.telefono = telefono;
        this.motivo = motivo;
        this.requerimiento = requerimiento;
        this.fechaEnvio = fechaEnvio;
    }

    public Integer getIdContacto() {
        return idContacto;
    }

    public void setIdContacto(Integer idContacto) {
        this.idContacto = idContacto;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApelldContacto() {
        return apelldContacto;
    }

    public void setApelldContacto(String apelldContacto) {
        this.apelldContacto = apelldContacto;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    public String getMotivo() {
        return motivo;
    }

    public void setMotivo(String motivo) {
        this.motivo = motivo;
    }

    public String getRequerimiento() {
        return requerimiento;
    }

    public void setRequerimiento(String requerimiento) {
        this.requerimiento = requerimiento;
    }

    public Date getFechaEnvio() {
        return fechaEnvio;
    }

    public void setFechaEnvio(Date fechaEnvio) {
        this.fechaEnvio = fechaEnvio;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idContacto != null ? idContacto.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Contacto)) {
            return false;
        }
        Contacto other = (Contacto) object;
        if ((this.idContacto == null && other.idContacto != null) || (this.idContacto != null && !this.idContacto.equals(other.idContacto))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Contacto[ idContacto=" + idContacto + " ]";
    }
    
}
