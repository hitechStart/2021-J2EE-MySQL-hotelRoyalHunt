<%@page  import="javax.servlet.http.HttpSession"%>
<%@page import="java.util.List"%>
<%@page import="logica.Reserva"%>
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
        <h3>reservas realizadas en un determinado día. </h3>
    <tbody>
        <% HttpSession misession = request.getSession();
            List<Reserva> verificarFecha = (List) request.getSession().getAttribute("verificarFecha");

        %>
        <tr>
            <%                for (Reserva reserva : verificarFecha) {
                    int idReserva = reserva.getIdReserva();

            %>

            <td><%=idReserva%></td>
    <br>

</tr>

<%}%>
</tbody>
</body>
</html>
