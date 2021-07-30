package logica;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "huesped")
public class Huesped extends Persona implements Serializable {

    @Basic
    private String profesion;

    public Huesped() {
        super();
    }

    public Huesped(int idHuesped, int dni, String nombre, String apellido, Date fechaNac, String direccion, String profesion) {
        
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
