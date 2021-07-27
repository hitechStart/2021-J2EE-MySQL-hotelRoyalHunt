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
    private int idHuesped;

    public Huesped() {
        super();
    }

    public Huesped(int idHuesped, int dni, String nombre, String apellido, Date fechaNac, String profesion, String cargo) {
        super(dni, nombre, apellido, fechaNac, profesion, cargo);
        this.idHuesped = idHuesped;
    }

    public int getIdHuesped() {
        return idHuesped;
    }

    public void setIdHuesped(int idHuesped) {
        this.idHuesped = idHuesped;
    }

    @Override
    public String toString() {
        return "Huesped{" + "idHuesped=" + idHuesped + '}';
    }

}
