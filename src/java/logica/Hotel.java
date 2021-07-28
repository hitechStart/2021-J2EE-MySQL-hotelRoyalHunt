package logica;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.OneToMany;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "hotel")
public class Hotel implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int idHotel;
    @Basic
    private String direccion;
    private int codigoPostal;
    private String localidad;
    private String provincia;

    @OneToMany(cascade = CascadeType.PERSIST)
    private List<Habitacion> habitacion;
    @OneToMany(cascade = CascadeType.PERSIST)
    private List<Reserva> reserva;
    @OneToMany(cascade = CascadeType.PERSIST)
    private List<Empleado> empleado;

    public Hotel() {

    }

    public Hotel(int idHotel, String direccion, int codigoPostal, String localidad, String provincia) {
        this.idHotel = idHotel;
        this.direccion = direccion;
        this.codigoPostal = codigoPostal;
        this.localidad = localidad;
        this.provincia = provincia;
    }

    public int getIdHotel() {
        return idHotel;
    }

    public void setIdHotel(int idHotel) {
        this.idHotel = idHotel;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public int getCodigoPostal() {
        return codigoPostal;
    }

    public void setCodigoPostal(int codigoPostal) {
        this.codigoPostal = codigoPostal;
    }

    public String getLocalidad() {
        return localidad;
    }

    public void setLocalidad(String localidad) {
        this.localidad = localidad;
    }

    public String getProvincia() {
        return provincia;
    }

    public void setProvincia(String provincia) {
        this.provincia = provincia;
    }

    public List<Habitacion> getHabitacion() {
        return habitacion;
    }

    public void setHabitacion(List<Habitacion> habitacion) {
        this.habitacion = habitacion;
    }

    public List<Reserva> getReserva() {
        return reserva;
    }

    public void setReserva(List<Reserva> reserva) {
        this.reserva = reserva;
    }

    public List<Empleado> getEmpleado() {
        return empleado;
    }

    public void setEmpleado(List<Empleado> empleado) {
        this.empleado = empleado;
    }

   

    @Override
    public String toString() {
        return "Hotel{" + "idHotel=" + idHotel
                + ", direccion=" + direccion + ", codigoPostal="
                + codigoPostal + ", localidad=" + localidad
                + ", provincia=" + provincia + ", habitacion="
                + habitacion + ", reserva=" + reserva
                + ", empleado=" + empleado + '}';
    }

}
