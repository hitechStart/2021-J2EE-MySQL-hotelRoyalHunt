package logica;

import java.text.DateFormat;
import persistencia.ControladoraPersistencia;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

public class Controladora {

    ControladoraPersistencia control = new ControladoraPersistencia();

    public void crearReserva(String idReserva, String documento, String nombre, String apellido, String fechaNac,
            String check_in, String check_out, String idHabitacion, String piso,
            String tematica, String tipo, String numPersonas, String montoTotal) throws ParseException, Exception {

        ArrayList<Reserva> reservas = new ArrayList<>();
        ArrayList<Habitacion> habitaciones = new ArrayList<>();
        
        System.out.println("****************Ingreso a la controladora****************");
        Reserva reserva = new Reserva();

        Hotel hotel = new Hotel();

        reserva.setIdReserva(Integer.parseInt(idReserva));

        Date fechaEnviar = null;
        DateFormat formato = new SimpleDateFormat("dd-MM-yyyy");
        fechaEnviar = formato.parse(check_in);
        reserva.setCheck_in(fechaEnviar);

        fechaEnviar = null;
        fechaEnviar = formato.parse(check_out);
        reserva.setCheck_out(fechaEnviar);

        Huesped huesped = new Huesped();

        huesped.setDni(Integer.parseInt(documento));
        huesped.setNombre(nombre);
        huesped.setApellido(apellido);

        fechaEnviar = null;
        fechaEnviar = formato.parse(fechaNac);
        huesped.setFechaNac(fechaEnviar);

        System.out.println("Datos del huesped: " + huesped);

        reserva.setHuesped(huesped);

        Factura factura = new Factura();
        factura.setMontoTotal(Double.parseDouble(montoTotal));

        reserva.setFactura(factura);

        System.out.println("Datos de la reserva: " + reserva);

        reservas.add(reserva);
        hotel.setReserva(reservas);

        Habitacion habitacion = new Habitacion();

        habitacion.setIdHabitacion(Integer.parseInt(idHabitacion));
        habitacion.setPiso(Integer.parseInt(piso));
        habitacion.setTematica(tematica);
        habitacion.setTipo(tipo);
        habitacion.setCantPersonas(Integer.parseInt(numPersonas));

        System.out.println("Datos de la habitacion: " + habitacion);

        habitaciones.add(habitacion);
        hotel.setHabitacion(habitaciones);
        
        System.out.println("Datos del hotel: " + habitacion);

         System.out.println("****************Saliendo de la controladora****************");
         
        control.crearReserva(hotel);

         System.out.println("****************Fin****************");
    }
}
