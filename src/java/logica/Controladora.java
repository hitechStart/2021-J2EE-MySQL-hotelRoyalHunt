
package logica;

import persistencia.ControladoraPersistencia;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class Controladora {
    
     ControladoraPersistencia control= new ControladoraPersistencia();
    
    public void crearReserva(String idReserva,String documento,String nombre,String apellido,String fechaNac,
                String check_in,String check_out,String idHabitacion,String piso,
                String tematica,String tipo,String numPersonas,String montoTotal) throws ParseException, Exception{
       
        Reserva reserva=new Reserva();
        
        Hotel hotel=new Hotel();
        
        reserva.setIdReserva(Integer.parseInt(idReserva));
        
        SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
        Date dataFormateada = formato.parse(check_in);
        
        reserva.setCheck_in(dataFormateada);  
    
        Date dateFormateada = formato.parse(check_out);
        
        reserva.setCheck_in(dateFormateada);
   
        Huesped huesped=new Huesped();
        
        huesped.setDni(Integer.parseInt(documento));
        huesped.setNombre(nombre);
        huesped.setApellido(apellido);
        
         Date datoFormateado = formato.parse(fechaNac);
        huesped.setFechaNac(datoFormateado);
        
        reserva.setHuesped(huesped);
        
        Factura factura=new Factura();
        factura.setMontoTotal(Double.parseDouble(montoTotal));
        
        reserva.setFactura(factura);
         hotel.setReserva((List<Reserva>) reserva);
      
         Habitacion habitacion=new Habitacion();
         
         habitacion.setIdHabitacion(Integer.parseInt(idHabitacion));
         habitacion.setPiso(Integer.parseInt(piso));
         habitacion.setTematica(tematica);
         habitacion.setTipo(tipo);
         habitacion.setCantPersonas(Integer.parseInt(numPersonas));
         
         hotel.setHabitacion((List<Habitacion>) habitacion);
        
        control.crearReserva(hotel);
    }
}
