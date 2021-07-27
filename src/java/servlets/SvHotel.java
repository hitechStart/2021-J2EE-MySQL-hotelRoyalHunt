package servlets;
import logica.Controladora;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "SvHotel", urlPatterns = {"/SvHotel"})
public class SvHotel extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String idReserva = String.valueOf(request.getParameter("idReserva"));
        String documento = String.valueOf(request.getParameter("documento"));
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String fechaNac = request.getParameter("fechaNac");
        String check_in = request.getParameter("check_in");
        String check_out = request.getParameter("check_out");
        String idHabitacion = String.valueOf(request.getParameter("idHabitacion"));
        String piso = String.valueOf(request.getParameter("piso"));
        String tematica = request.getParameter("tematica");
        String tipo = request.getParameter("tipo");
        String numPersonas = String.valueOf(request.getParameter("numPersonas"));
        String montoTotal = String.valueOf(request.getParameter("montoTotal"));

        request.getSession().setAttribute("idReserva", idReserva);
        request.getSession().setAttribute("documento", documento);
        request.getSession().setAttribute("nombre", nombre);
        request.getSession().setAttribute("apellido", apellido);
        request.getSession().setAttribute("fechaNac", fechaNac);
        request.getSession().setAttribute("check_in", check_in);
        request.getSession().setAttribute("check_out", check_out);
        request.getSession().setAttribute("idHabitacion", idHabitacion);
        request.getSession().setAttribute("piso", piso);
        request.getSession().setAttribute("tematica", tematica);
        request.getSession().setAttribute("tipo", tipo);
        request.getSession().setAttribute("numPersonas", numPersonas);
        request.getSession().setAttribute("montoTotal", montoTotal);
        

        //conecto con la logica:
        Controladora ctrl = new Controladora();
        try {
            ctrl.crearReserva(idReserva,documento,nombre,apellido,fechaNac,check_in,check_out,idHabitacion,piso,tematica,tipo,numPersonas,montoTotal);
        } catch (Exception ex) {
            Logger.getLogger(SvHotel.class.getName()).log(Level.SEVERE, null, ex);
        }
        response.sendRedirect("imprimir.jsp");

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
