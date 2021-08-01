package persistencia;

import java.util.List;
import logica.Empleado;
import logica.Persona;
import logica.Huesped;
import logica.Factura;
import logica.Habitacion;
import logica.Reserva;
//import logica.Hotel;

public class ControladoraPersistencia {

    EmpleadoJpaController empleadoJPA = new EmpleadoJpaController();
    PersonaJpaController personaJPA = new PersonaJpaController();
    HuespedJpaController huespedJPA = new HuespedJpaController();
    FacturaJpaController facturaJPA = new FacturaJpaController();
    HabitacionJpaController habitacionJPA = new HabitacionJpaController();
    ReservaJpaController reservaJPA = new ReservaJpaController();

    public void crearPersona(Persona persona) throws Exception {
        personaJPA.create(persona);
    }

    public void crearEmpleado(Empleado empleado) throws Exception {
        empleadoJPA.create(empleado);
    }

    public void crearHuesped(Huesped huesped) throws Exception {
        huespedJPA.create(huesped);
    }

    public void crearFactura(Factura factura) throws Exception {
        facturaJPA.create(factura);
    }

    public void crearHabitacion(Habitacion habitacion) throws Exception {
        habitacionJPA.create(habitacion);
    }

    public void crearReserva(Reserva reserva) throws Exception {
        reservaJPA.create(reserva);
    }

    public List<Empleado> traerEmpleado() {

        return empleadoJPA.findEmpleadoEntities();
    }
    public List<Huesped> traerHuesped() {

        return huespedJPA.findHuespedEntities();
    }
    
    public List<Reserva> traerReservaDia() {

        return reservaJPA.findReservaEntities();
    }
    
    public List<Reserva> traerReserva() {

        return reservaJPA.findReservaEntities();
    }
}
