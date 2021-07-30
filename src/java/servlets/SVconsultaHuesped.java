package servlets;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.ControladoraHuesped;
import logica.Huesped;

@WebServlet(name = "SVconsultaHuesped", urlPatterns = {"/SVconsultaHuesped"})
public class SVconsultaHuesped extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("Uno");
        ControladoraHuesped control = new ControladoraHuesped();
        List<Huesped> listaHuesped = control.traerHuesped();

        HttpSession misession = request.getSession();
        misession.setAttribute("listaHuesped", listaHuesped);
        response.sendRedirect("imprimir2.jsp");
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
