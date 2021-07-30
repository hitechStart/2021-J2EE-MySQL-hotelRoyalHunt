package logica;

import java.io.Serializable;
import java.util.ArrayList;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "factura")
public class Factura implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int idFactura;
    @Basic
    private ArrayList<String> descripcion = new ArrayList<String>();
    private double montoTotal;
    @OneToOne
    private Reserva reserva;

    public Factura() {
    }

    public Factura(int idFactura, double montoTotal, Reserva reserva) {
        this.idFactura = idFactura;
        this.montoTotal = montoTotal;
        this.reserva = reserva;
    }

    public int getIdFactura() {
        return idFactura;
    }

    public void setIdFactura(int idFactura) {
        this.idFactura = idFactura;
    }

    public ArrayList<String> getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(ArrayList<String> descripcion) {
        this.descripcion = descripcion;
    }

    public double getMontoTotal() {
        return montoTotal;
    }

    public void setMontoTotal(double montoTotal) {
        this.montoTotal = montoTotal;
    }

    public Reserva getReserva() {
        return reserva;
    }

    public void setReserva(Reserva reserva) {
        this.reserva = reserva;
    }

    @Override
    public String toString() {
        return "Factura{" + "idFactura=" + idFactura + ", descripcion=" + descripcion + ", montoTotal=" + montoTotal + ", reserva=" + reserva + '}';
    }

}
