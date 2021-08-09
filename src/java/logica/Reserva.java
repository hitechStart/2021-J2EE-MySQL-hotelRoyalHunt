package logica;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "reserva")
public class Reserva implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int idReserva;
    @Temporal(TemporalType.DATE)
    private Date check_in;
    @Temporal(TemporalType.DATE)
    private Date check_out;
    @Basic
    private double cantDias;
    private String user;
    double montoTotal;
    @ManyToOne
    Huesped huesped;
    @ManyToOne
    private Habitacion habitacion;

    public Reserva() {
    }
    public Reserva(int idReserva, Date check_in, Date check_out, double cantDias, String user, double montoTotal, Huesped huesped, Habitacion habitacion) {
        this.idReserva = idReserva;
        this.check_in = check_in;
        this.check_out = check_out;
        this.cantDias = cantDias;
        this.user = user;
        this.montoTotal = montoTotal;
        this.huesped = huesped;
        this.habitacion = habitacion;
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

    public double getCantDias() {
        return cantDias;
    }

    public void setCantDias(double cantDias) {
        this.cantDias = cantDias;
    }

    public Huesped getHuesped() {
        return huesped;
    }

    public void setHuesped(Huesped huesped) {
        this.huesped = huesped;
    }

    public Habitacion getHabitacion() {
        return habitacion;
    }

    public void setHabitacion(Habitacion habitacion) {
        this.habitacion = habitacion;
    }

    public String getUsuario() {
        return user;
    }

    public void setUsuario(String usuario) {
        this.user = usuario;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public double getMontoTotal() {
        return montoTotal;
    }

    public void setMontoTotal(double montoTotal) {
        this.montoTotal = montoTotal;
    }

    @Override
    public String toString() {
        return "Reserva{" + "idReserva=" + idReserva + ", check_in=" + check_in + ", check_out=" + check_out + ", cantDias=" + cantDias + ", user=" + user + ", montoTotal=" + montoTotal + ", huesped=" + huesped + ", habitacion=" + habitacion + '}';
    }
    
}
