package logica;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import persistencia.ControladoraPersistencia;

public class ControladoraEmpleado {

    ControladoraPersistencia control = new ControladoraPersistencia();

    public void crearEmpleado(String dni, String nombre, String apellido,
            String fechaNac, String direccion, String cargo, String usuario, String password) throws Exception {

        DateFormat formato = new SimpleDateFormat("yyyy-MM-dd");
        Date fechaDate = null;
        fechaDate = formato.parse(fechaNac);
        
        int documento = Integer.parseInt(dni);

        Empleado empleado = new Empleado();

        empleado.setDni(documento);
        empleado.setNombre(nombre);
        empleado.setApellido(apellido);
        empleado.setFechaNac(fechaDate);
        empleado.setDireccion(direccion);
        empleado.setCargo(cargo);
        empleado.setUsuario(usuario);
        empleado.setPassword(password);

        control.crearEmpleado(empleado);

    }
}
