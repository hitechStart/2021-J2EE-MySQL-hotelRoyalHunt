package logica;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import persistencia.ControladoraPersistencia;

public class ControladoraReserva {
    
    ControladoraPersistencia control = new ControladoraPersistencia();
    
    public void crearReserva(String idReserva, String dni, String nombre, String apellido,
            String fechaNac, String direccion, String profesion,
            String check_in, String check_out, String idHabitacion, String piso,
            String tematica, String tipo, String numPersonas)
            throws ParseException, Exception {
        
        Reserva reserva = new Reserva();
        Huesped huesped = new Huesped();
        Habitacion habitacion = new Habitacion();
   
        
        int reservation = Integer.parseInt(idReserva);  
        reserva.setIdReserva(reservation);
        
        int documento = Integer.parseInt(dni);
        huesped.setDni(documento);
        huesped.setNombre(nombre);
        huesped.setApellido(apellido);
        
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        Date date;
        date = formatter.parse(fechaNac);
        
        huesped.setFechaNac(date);
        huesped.setDireccion(direccion);
        huesped.setProfesion(profesion);
        reserva.setHuesped(huesped);
        
        date = formatter.parse(check_in);
        long fechaInicialMs = date.getTime();
        reserva.setCheck_in(date);
        
        date = formatter.parse(check_out);
        long fechaFinalMs = date.getTime();
        reserva.setCheck_out(date);
        
        long diferencia = fechaFinalMs - fechaInicialMs;
        double dias = Math.floor(diferencia / (1000 * 60 * 60 * 24));
        
        reserva.setCantDias(dias);
        
        int room = Integer.parseInt(idHabitacion);
        habitacion.setIdHabitacion(room);
        
        int floor = Integer.parseInt(piso);
        habitacion.setPiso(floor);
        
        reserva.setHabitacion(habitacion);
   
        control.crearReserva(reserva);
    }
}
