package logica;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="factura")
public class Factura implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int idFactura;
    @Basic
    private String descripcion;
    private double montoTotal;
    @OneToOne
    Reserva reserva;
    
    public Factura() {
    }

    public Factura(int idFactura, String descripcion, double montoTotal) {
        this.idFactura = idFactura;
        this.descripcion = descripcion;
        this.montoTotal = montoTotal;
    }

    public int getIdFactura() {
        return idFactura;
    }

    public void setIdFactura(int idFactura) {
        this.idFactura = idFactura;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public double getMontoTotal() {
        return montoTotal;
    }

    public void setMontoTotal(double montoTotal) {
        this.montoTotal = montoTotal;
    }

    @Override
    public String toString() {
        return "Factura{" + "idFactura=" + idFactura + ", descripcion=" + descripcion + ", montoTotal=" + montoTotal + '}';
    }

}
