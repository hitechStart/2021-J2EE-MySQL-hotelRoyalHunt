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
import logica.ControladoraReserva;
import persistencia.exceptions.NonexistentEntityException;

@WebServlet(name = "SvEliminarReserva", urlPatterns = {"/SvEliminarReserva"})
public class SvEliminarReserva extends HttpServlet {

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
        
        String dni = String.valueOf(request.getParameter("id"));
        
         ControladoraReserva ctrl_reserva = new ControladoraReserva();
        try {
            ctrl_reserva.borrarReserva(Integer.parseInt(dni));
             request.getSession().setAttribute("listaReservas", ctrl_reserva.traerReservas());
         response.sendRedirect("PanelControl.jsp");
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(SvEliminarReserva.class.getName()).log(Level.SEVERE, null, ex);
        }      
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
