
package logica;

import persistencia.ControladoraPersistencia;

public class ControladoraSuscripcion {
    
    ControladoraPersistencia control = new ControladoraPersistencia();
    
     public void crearSuscripcion(String dni,String email,String mensaje) throws Exception{
     
         Suscripcion suscripcion=new Suscripcion();
         
         suscripcion.setDni(Integer.parseInt(dni));
         suscripcion.setEmail(email);
         suscripcion.setOpinion(mensaje);
         
          control.crearSuscripcion(suscripcion);
     }
}
