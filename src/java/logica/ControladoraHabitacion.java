package logica;

import persistencia.ControladoraPersistencia;

public class ControladoraHabitacion {

    ControladoraPersistencia control = new ControladoraPersistencia();

    public void crearHabitacion(String idHabitacion, String piso, String tematica,
             String tipo, String disponibilidad, String precioNoche) throws Exception {

        Habitacion habitacion = new Habitacion();

        int identificacion = Integer.parseInt(idHabitacion);
        habitacion.setIdHabitacion(identificacion);
        habitacion.setPiso(Integer.parseInt(piso));
        habitacion.setTipo(tipo);
        habitacion.setTematica(tematica);
        habitacion.setDisponibilidad(Integer.parseInt(disponibilidad));
        habitacion.setPrecioNoche(Double.valueOf(precioNoche));

         control.crearHabitacion(habitacion);
    }
}
