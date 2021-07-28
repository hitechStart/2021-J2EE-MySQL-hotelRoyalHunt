package logica;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "empleado")
public class Empleado extends Persona implements Serializable{

    @Basic
    private String usuario;
    private String password;

    public Empleado() {
        super();
    }

    public Empleado(int dni, String nombre, String apellido, Date fechaNac, String profesion, String cargo, int idEmpleado, String usuario, String password) {

        super(dni, nombre, apellido, fechaNac, profesion, cargo);
        this.usuario = usuario;
        this.password = password;
    }

    public Empleado(String usuario, String password) {
       
        this.usuario = usuario;
        this.password = password;
    }

    @Override
    public String toString() {
        return "Empleado{usuario=" + usuario + ", password=" + password + '}';
    }

}
