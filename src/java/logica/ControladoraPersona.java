package logica;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import persistencia.ControladoraPersistencia;

public class ControladoraPersona {

    ControladoraPersistencia control = new ControladoraPersistencia();

    public void crearPersona(String dni, String nombre, String apellido,
            String fechaNac, String direccion) throws ParseException, Exception {

        DateFormat formatter1 = new SimpleDateFormat("yyyy-MM-dd");
        Date date = null;
        date = formatter1.parse(fechaNac);

        int documento = Integer.parseInt(dni);
        Persona persona = new Persona();

        persona.setDni(documento);
        persona.setNombre(nombre);
        persona.setApellido(apellido);
        persona.setFechaNac(date);
        persona.setDireccion(direccion);

        control.crearPersona(persona);
    }
}
