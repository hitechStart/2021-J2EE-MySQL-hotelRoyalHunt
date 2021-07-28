package logica;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="persona")

@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
public class Persona implements Serializable{

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int dni;
    @Basic
    private String nombre;
    private String apellido;
    private String profesion;
    private String cargo;
    @Temporal(TemporalType.DATE)
    private Date fechaNac;

    public Persona() {
    }

    public Persona(int dni, String nombre, String apellido, Date fechaNac, String profesion, String cargo) {
        this.dni = dni;
        this.nombre = nombre;
        this.apellido = apellido;
        this.fechaNac = fechaNac;
        this.profesion = profesion;
        this.cargo = cargo;
    }

    public int getDni() {
        return dni;
    }

    public void setDni(int dni) {
        this.dni = dni;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public Date getFechaNac() {
        return fechaNac;
    }

    public void setFechaNac(Date fechaNac) {
        this.fechaNac = fechaNac;
    }

    public String getProfesion() {
        return profesion;
    }

    public void setProfesion(String profesion) {
        this.profesion = profesion;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    @Override
    public String toString() {
        return "Persona{" + "dni=" + dni + ", nombre=" + nombre + ", apellido=" + apellido + ", fechaNac=" + fechaNac + ", profesion=" + profesion + ", cargo=" + cargo + '}';
    }

}
