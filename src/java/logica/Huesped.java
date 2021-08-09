package logica;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "huesped")
public class Huesped extends Persona implements Serializable {

    @Basic
    private String profesion;
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "idDni")
    Suscripcion suscripcion;

    public Huesped() {
        super();
    }

    public Huesped(String profesion) {
        this.profesion = profesion;
    }

    public Huesped(String profesion, int dni, String nombre, String apellido, Date fechaNac, String direccion) {
        super(dni, nombre, apellido, fechaNac, direccion);
        this.profesion = profesion;
    }

    public String getProfesion() {
        return profesion;
    }

    public void setProfesion(String profesion) {
        this.profesion = profesion;
    }

    @Override
    public String toString() {
        return "Huesped{" + "profesion=" + profesion + '}';
    }

   
}
