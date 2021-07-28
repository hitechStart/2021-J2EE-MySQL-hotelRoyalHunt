package persistencia;

import logica.Empleado;
import logica.Persona;
//import logica.Hotel;

public class ControladoraPersistencia {

    EmpleadoJpaController empleadoJPA = new EmpleadoJpaController();
     PersonaJpaController personaJPA = new PersonaJpaController();
     /*
    FacturaJpaController facturaJPA = new FacturaJpaController();
    HabitacionJpaController habitacionJPA = new HabitacionJpaController();
    HotelJpaController hotelJPA = new HotelJpaController();
    HuespedJpaController huespedJPA = new HuespedJpaController();
   
    ReservaJpaController reservaJPA = new ReservaJpaController();
     public void crearReserva(Hotel hotel) throws Exception {
        hotelJPA.create(hotel);
    }
     */

    public void crearPersona(Persona persona) throws Exception {
        personaJPA.create(persona);
    }
        
    public void crearEmpleado(Empleado empleado) throws Exception {
        empleadoJPA.create(empleado);
    }

}
