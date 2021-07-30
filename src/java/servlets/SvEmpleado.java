package servlets;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import logica.ControladoraEmpleado;
import logica.ControladoraPersona;

@WebServlet(name = "SvEmpleado", urlPatterns = {"/SvEmpleado"})
public class SvEmpleado extends HttpServlet {

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

        String dni = String.valueOf(request.getParameter("dni"));
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String fechaNac = request.getParameter("fechaNac");
        String direccion = request.getParameter("direccion");
        String cargo = request.getParameter("cargo");
        String usuario = request.getParameter("usuario");
        String password = request.getParameter("password");

        request.getSession().setAttribute("dni", dni);
        request.getSession().setAttribute("nombre", nombre);
        request.getSession().setAttribute("apellido", apellido);
        request.getSession().setAttribute("fechaNac", fechaNac);
        request.getSession().setAttribute("direccion", direccion);
        request.getSession().setAttribute("cargo", cargo);
        request.getSession().setAttribute("usuario", usuario);
        request.getSession().setAttribute("password", password);

       
        ControladoraPersona ctrl_persona = new ControladoraPersona();
        ControladoraEmpleado ctrl = new ControladoraEmpleado();

        try {
            ctrl_persona.crearPersona(dni, nombre, apellido, fechaNac, direccion);
            ctrl.crearEmpleado(dni, nombre, apellido, fechaNac, direccion, cargo, usuario, password);
        } catch (Exception ex) {
            Logger.getLogger(SvEmpleado.class.getName()).log(Level.SEVERE, null, ex);
        }
        response.sendRedirect("index.jsp");

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
