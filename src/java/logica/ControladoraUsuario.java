package logica;

import java.util.List;
import persistencia.ControladoraPersistencia;

public class ControladoraUsuario {
    
    ControladoraPersistencia control=new ControladoraPersistencia();
    
    public boolean verificarEmpleado(String usuario,String password){
    
        List <Empleado> listaEmpleados=control.traerEmpleado();
        
        if(listaEmpleados!=null){
          for(Empleado empleado:listaEmpleados){
          
              if(empleado.getUsuario().equals(usuario) && empleado.getPassword().equals(password)){
              return true;
              }
          }  
        }
        return false;
    }    
    
}
