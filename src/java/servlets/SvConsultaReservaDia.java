package servlets;

import java.io.IOException;
import java.text.ParseException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.ControladoraReserva;
import logica.Reserva;

@WebServlet(name = "SvConsultaReservaDia", urlPatterns = {"/SvConsultaReservaDia"})
public class SvConsultaReservaDia extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String fecha = request.getParameter("fecha");
        request.getSession().setAttribute("fecha", fecha);

        ControladoraReserva control = new ControladoraReserva();
        List<Reserva> verificarFecha;
        try {
            verificarFecha = control.verificarFecha(fecha);

            if (verificarFecha != null) {

                HttpSession misession = request.getSession(true);
                misession.setAttribute("verificarFecha", verificarFecha);
                response.sendRedirect("imprimir3.jsp");
            }
        } catch (ParseException ex) {
            Logger.getLogger(SvConsultaReservaDia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
