package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import logica.ControladoraHabitacion;

@WebServlet(name = "SvHabitacion", urlPatterns = {"/SvHabitacion"})
public class SvHabitacion extends HttpServlet {

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

        String idHabitacion = String.valueOf(request.getParameter("idHabitacion"));
        String piso = String.valueOf(request.getParameter("piso"));
        String tematica = request.getParameter("tematica");
        String tipo = request.getParameter("tipo");
        String precio = String.valueOf(request.getParameter("precio"));
        String disponibilidad = String.valueOf(request.getParameter("disponibilidad"));

        request.getSession().setAttribute("idHabitacion", idHabitacion);
        request.getSession().setAttribute("piso", piso);
        request.getSession().setAttribute("tematica", tematica);
        request.getSession().setAttribute("tipo", tipo);
        request.getSession().setAttribute("disponibilidad", disponibilidad);
        request.getSession().setAttribute("precio", precio);

        ControladoraHabitacion ctrl_habitacion = new ControladoraHabitacion();

        try {
            ctrl_habitacion.crearHabitacion(idHabitacion, piso, tematica, tipo, disponibilidad, precio);
            response.sendRedirect("PanelControl.jsp");

        } catch (Exception ex) {
            Logger.getLogger(SvHabitacion.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
