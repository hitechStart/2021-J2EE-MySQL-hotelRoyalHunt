package logica;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="habitacion")
public class Habitacion implements Serializable{

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int idHabitacion;
    @Basic
    private int piso;
    private String tematica;
    private String tipo;
    private double precioNoche;

    public Habitacion() {
    }

    public Habitacion(int idHabitacion, int piso, String tematica, String tipo, double precioNoche) {
        this.idHabitacion = idHabitacion;
        this.piso = piso;
        this.tematica = tematica;
        this.tipo = tipo;
        this.precioNoche = precioNoche;
    }

    public int getIdHabitacion() {
        return idHabitacion;
    }

    public void setIdHabitacion(int idHabitacion) {
        this.idHabitacion = idHabitacion;
    }

    public int getPiso() {
        return piso;
    }

    public void setPiso(int piso) {
        this.piso = piso;
    }

    public String getTematica() {
        return tematica;
    }

    public void setTematica(String tematica) {
        this.tematica = tematica;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
    public double getPrecioNoche() {
        return precioNoche;
    }

    public void setPrecioNoche(double precioNoche) {
        this.precioNoche = precioNoche;
    }

    @Override
    public String toString() {
        return "Habitacion{" + "idHabitacion=" + idHabitacion + ", piso=" + piso + ", tematica=" + tematica + ", tipo=" + tipo + ", precioNoche=" + precioNoche + '}';
    }

   

}
