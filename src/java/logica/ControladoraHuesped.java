package logica;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import persistencia.ControladoraPersistencia;

public class ControladoraHuesped {
    
     ControladoraPersistencia control = new ControladoraPersistencia();
     
      public void crearHuesped(String dni, String nombre, String apellido,
            String fechaNac, String direccion, String profesion) throws ParseException, Exception{
          
        DateFormat formatter1 = new SimpleDateFormat("yyyy-MM-dd");
        Date date=null;
        date = formatter1.parse(fechaNac);

        int documento = Integer.parseInt(dni);
        
        Huesped huesped=new Huesped();
        
        huesped.setDni(documento);
        huesped.setNombre(nombre);
        huesped.setApellido(apellido);
        huesped.setFechaNac(date);
        huesped.setDireccion(direccion);
        huesped.setProfesion(profesion);
        
        control.crearHuesped(huesped);
      }

    public List<Huesped> traerHuesped() {
       
       return  control.traerHuesped();       
    }
       
      
}
