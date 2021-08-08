package servlets;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.ControladoraHabitacion;
import logica.ControladoraHuesped;
import logica.ControladoraPersona;
import logica.ControladoraReserva;

@WebServlet(name = "SvReserva", urlPatterns = {"/SvReserva"})
public class SvReserva extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {;
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String idReserva = String.valueOf(request.getParameter("idReserva"));
        String dni = String.valueOf(request.getParameter("dni"));
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String fechaNac = request.getParameter("fechaNac");
        String direccion = request.getParameter("direccion");
        String profesion = request.getParameter("profesion");
        String check_in = request.getParameter("check_in");
        String check_out = request.getParameter("check_out");
        String idHabitacion = String.valueOf(request.getParameter("idHabitacion"));
        String piso = String.valueOf(request.getParameter("piso"));
        String tematica = request.getParameter("tematica");
        String tipo = request.getParameter("tipo");
        String numPersonas = String.valueOf(request.getParameter("numPersonas"));
       
        request.getSession().setAttribute("idReserva", idReserva);
        request.getSession().setAttribute("dni", dni);
        request.getSession().setAttribute("nombre", nombre);
        request.getSession().setAttribute("apellido", apellido);
        request.getSession().setAttribute("fechaNac", fechaNac);
        request.getSession().setAttribute("direccion", direccion);
        request.getSession().setAttribute("profesion", profesion);
        request.getSession().setAttribute("check_in", check_in);
        request.getSession().setAttribute("check_out", check_out);
        request.getSession().setAttribute("idHabitacion", idHabitacion);
        request.getSession().setAttribute("piso", piso);
        request.getSession().setAttribute("tematica", tematica);
        request.getSession().setAttribute("tipo", tipo);
        request.getSession().setAttribute("numPersonas", numPersonas);
       
        HttpSession session = request.getSession();
        String user = (String) session.getAttribute("usuario");

        ControladoraPersona ctrl_persona = new ControladoraPersona();
        ControladoraHuesped ctrl_huesped = new ControladoraHuesped();
        ControladoraHabitacion ctrl_Habitacion = new ControladoraHabitacion();

        ControladoraReserva ctrl_reserva = new ControladoraReserva();
        boolean autorizado = ctrl_reserva.verificacionFecha(check_in, check_out, idHabitacion);

        try {
            double montoTotal = ctrl_Habitacion.calculaMontoTotal(idHabitacion,
                    piso, tematica, tipo, numPersonas, check_in, check_out);

            System.out.println("valores son: "+autorizado +montoTotal);
            if (autorizado && montoTotal!=0) {

                ctrl_persona.crearPersona(dni, nombre, apellido, fechaNac, direccion);
                ctrl_huesped.crearHuesped(dni, nombre, apellido, fechaNac, direccion, profesion);
                ctrl_reserva.crearReserva(idReserva, dni, nombre, apellido, fechaNac, direccion, profesion,
                        check_in, check_out, idHabitacion, piso, tematica, tipo, numPersonas, user,montoTotal);

                response.sendRedirect("principal.jsp");

            } else {
                response.sendRedirect("formulario.jsp");
            }
        } catch (Exception ex) {
            Logger.getLogger(SvReserva.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
