package logica;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
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

    public List<Reserva> verificarFecha(String fecha) throws ParseException {

        List<Reserva> listaDia = control.traerReservaDia();
        List<Reserva> listaCompleta = new ArrayList<>();

        String fecha_in;
        //String fecha_out;
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

        if (listaDia != null) {
            for (Reserva reservaFecha : listaDia) {

                fecha_in = formatter.format(reservaFecha.getCheck_in());
                //fecha_out = formatter.format(reservaFecha.getCheck_out());

                //   || (fecha_in.compareTo(fecha) < 0 && 1 <= fecha_out.compareTo(fecha))
                if (fecha_in.equalsIgnoreCase(fecha)) {

                    listaCompleta.add(reservaFecha);
                }
            }
            return listaCompleta;
        }
        return listaCompleta;
    }

    public List<Reserva> traerReservaDia() {

        return control.traerReservaDia();
    }
}
