<%@page import="logica.Reserva"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>Empleado:<%=session.getAttribute("usuario")%></h3>
        <br>
        <br>
              <h3>D-Listas de todas las reservas realizadas por un determinado huésped en un período desde/hasta </h3>
    <tbody>
        <% HttpSession misession = request.getSession();
            List<Reserva> verificarFechas = (List) request.getSession().getAttribute("verificarFechas");

        %>
        <tr>
            <% for (Reserva reserva : verificarFechas) {
                    int idHuesped = reserva.getHuesped().getDni();

            %>

            <td><%=idHuesped%></td>
            <br>
        </tr>

               <%}%>
    </tbody>
    </body>
    <div class="col">
    <form action="./PanelControl.jsp" method="GET">

        <div class="row">
            <div class="col-md-12">
                <button type="submit" class="submit-btn">VOLVER</button>
            </div>
        </div>

    </form>
</div>
</html>
