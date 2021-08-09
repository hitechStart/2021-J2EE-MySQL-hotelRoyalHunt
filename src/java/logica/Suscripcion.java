package logica;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "suscripcion")
public class Suscripcion implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private String email;
    @Basic
    private int idDni;
    private String opinion;
       
    public Suscripcion() {
    }

    public Suscripcion(String email, int idDni, String opinion) {
        this.email = email;
        this.idDni = idDni;
        this.opinion = opinion;
        
    }

    public int getDni() {
        return idDni;
    }

    public void setDni(int idDni) {
        this.idDni = idDni;
    }
    
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    public String getOpinion() {
        return opinion;
    }

    public void setOpinion(String opinion) {
        this.opinion = opinion;
    }

    @Override
    public String toString() {
        return "Suscripcion{" + "email=" + email + ", dni=" + idDni + ", opinion=" + opinion +'}';
    }


}
