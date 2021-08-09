/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import logica.ControladoraSuscripcion;

@WebServlet(name = "SvSuscripcion", urlPatterns = {"/SvSuscripcion"})
public class SvSuscripcion extends HttpServlet {

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

        String idDni = String.valueOf(request.getParameter("idDni"));
        String email = request.getParameter("email");
        String mensaje = request.getParameter("mensaje");

        request.getSession().setAttribute("idDni", idDni);
        request.getSession().setAttribute("email", email);
        request.getSession().setAttribute("mensaje", mensaje);

        ControladoraSuscripcion ctrl_suscripcion = new ControladoraSuscripcion();

        try {
            System.out.println("Ingreso a try");
            ctrl_suscripcion.crearSuscripcion(idDni, email, mensaje);
              System.out.println("Salio de crear suscrpcion");
            response.sendRedirect("principal.jsp");
        } catch (Exception ex) {
              System.out.println("Ingreso a catch");
            Logger.getLogger(SvSuscripcion.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
