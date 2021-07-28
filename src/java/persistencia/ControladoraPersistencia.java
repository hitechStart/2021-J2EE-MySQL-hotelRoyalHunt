package persistencia;

import logica.Hotel;

public class ControladoraPersistencia {

    EmpleadoJpaController empleadoJPA = new EmpleadoJpaController();
    FacturaJpaController facturaJPA = new FacturaJpaController();
    HabitacionJpaController habitacionJPA = new HabitacionJpaController();
    HotelJpaController hotelJPA = new HotelJpaController();
    HuespedJpaController huespedJPA = new HuespedJpaController();
    PersonaJpaController personaJPA = new PersonaJpaController();
    ReservaJpaController reservaJPA = new ReservaJpaController();

    public void crearReserva(Hotel hotel) throws Exception {
        hotelJPA.create(hotel);
    }

}
