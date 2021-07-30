package logica;

import java.util.ArrayList;
import persistencia.ControladoraPersistencia;

public class ControladoraFactura {
 
     ControladoraPersistencia control = new ControladoraPersistencia();
     
      public void crearFactura(String idReserva,ArrayList<String> descripcion,String montoTotal) throws Exception{
          
           int numeroFactura = Integer.parseInt(idReserva);
           double total=Double.parseDouble(montoTotal);
           
           Reserva reserva=new Reserva();
           Factura factura=new Factura();
           
           reserva.setIdReserva(numeroFactura);
           
           factura.setIdFactura(numeroFactura);
           factura.setDescripcion(descripcion);
           factura.setMontoTotal(total);
          factura.setReserva(reserva);
               
           control.crearFactura(factura);
          
      }
}
