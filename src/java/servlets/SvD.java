package servlets;

import java.io.IOException;
import java.io.PrintWriter;
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

@WebServlet(name = "SvD", urlPatterns = {"/SvD"})
public class SvD extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int idhuesped = Integer.parseInt(request.getParameter("idhuesped"));
        String fechaDesde = request.getParameter("fechaDesde");
        String fechaHasta = request.getParameter("fechaHasta");

        request.getSession().setAttribute("idhuesped", idhuesped);
        request.getSession().setAttribute("fechaDesde", fechaDesde);
        request.getSession().setAttribute("fechaHasta", fechaHasta);

        ControladoraReserva control = new ControladoraReserva();
        List<Reserva> verificarFechas;
        try {
            System.out.println("Fecha hasta: "+fechaHasta);
            verificarFechas = control.verificarFechas(idhuesped,fechaDesde,fechaHasta);

            if (verificarFechas != null) {

                HttpSession misession = request.getSession(true);
                misession.setAttribute("verificarFechas", verificarFechas);
                response.sendRedirect("imprimir5.jsp");
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
