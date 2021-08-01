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

@WebServlet(name = "SvListarEmpleado", urlPatterns = {"/SvListarEmpleado"})
public class SvListarEmpleado extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String buscarReserva = request.getParameter("buscarReserva");
        request.getSession().setAttribute("buscarReserva", buscarReserva);

        ControladoraReserva control = new ControladoraReserva();
        List<Reserva> verificarUsuario;
        try {
            verificarUsuario = control.verificarUsuario(buscarReserva);

            if (verificarUsuario != null) {

                HttpSession misession = request.getSession(true);
                misession.setAttribute("verificarUsuario", verificarUsuario);
                response.sendRedirect("imprimir4.jsp");
            }
        } catch (ParseException ex) {
            Logger.getLogger(SvConsultaReservaDia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
