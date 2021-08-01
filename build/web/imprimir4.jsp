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
        <h3>reservas realizadas Por un empleado. </h3>
    <tbody>
        <% HttpSession misession = request.getSession();
            List<Reserva> verificarUsuario = (List) request.getSession().getAttribute("verificarUsuario");

        %>
        <tr>
            <%                for (Reserva reserva : verificarUsuario) {
                    int idReserva = reserva.getIdReserva();

            %>

            <td><%=idReserva%></td>
    <br>

</tr>

<%}%>
</tbody>
</body>
</html>
