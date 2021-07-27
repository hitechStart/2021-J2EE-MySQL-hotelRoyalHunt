package logica;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="reserva")
public class Reserva implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int idReserva;
    @Temporal(TemporalType.DATE)
    private Date check_in;
    @Temporal(TemporalType.DATE)
    private Date check_out;
    @Basic
    private int cantDias;
    @ManyToOne
    Huesped huesped;
    @OneToOne
    private Factura factura;

    public Huesped getHuesped() {
        return huesped;
    }

    public void setHuesped(Huesped huesped) {
        this.huesped = huesped;
    }

    

    public Reserva() {
    }

    public Reserva(int idReserva, Date check_in, Date check_out, int cantDias, Huesped huesped, Factura factura) {
        this.idReserva = idReserva;
        this.check_in = check_in;
        this.check_out = check_out;
        this.cantDias = cantDias;
        this.factura = factura;
    }

    public int getIdReserva() {
        return idReserva;
    }

    public void setIdReserva(int idReserva) {
        this.idReserva = idReserva;
    }

    public Date getCheck_in() {
        return check_in;
    }

    public void setCheck_in(Date check_in) {
        this.check_in = check_in;
    }

    public Date getCheck_out() {
        return check_out;
    }

    public void setCheck_out(Date check_out) {
        this.check_out = check_out;
    }

    public int getCantDias() {
        return cantDias;
    }

    public void setCantDias(int cantDias) {
        this.cantDias = cantDias;
    }
    public Factura getFactura() {
        return factura;
    }

    public void setFactura(Factura factura) {
        this.factura = factura;
    }

    @Override
    public String toString() {
        return "Reserva{" + "idReserva=" + idReserva + ", check_in=" + check_in + ", check_out=" + check_out + ", cantDias=" + cantDias + ", factura=" + factura + '}';
    }

}
