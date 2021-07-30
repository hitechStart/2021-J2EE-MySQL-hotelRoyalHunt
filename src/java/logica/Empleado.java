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
    private String cargo;
    private String usuario;
    private String password;

    public Empleado() {
        super();
    }

    public Empleado(int dni, String nombre, String apellido, Date fechaNac,String direccion,String cargo,String usuario, String password) {

        super(dni, nombre, apellido,fechaNac,direccion);
        this.usuario = cargo;
        this.usuario = usuario;
        this.password = password;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Empleado{" + ", cargo=" + cargo + ", usuario=" + usuario + ", password=" + password + '}';
    }


  
   

}
