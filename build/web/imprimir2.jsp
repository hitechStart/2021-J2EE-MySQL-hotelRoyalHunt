<%@page import="java.util.List"%>
<%@page import="logica.Huesped"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

    <tbody>
    <h3>Empleado: <%=session.getAttribute("usuario")%></h3>
    <br>
    <br>
    <% HttpSession misession = request.getSession();
        List<Huesped> listaHuesped = (List) request.getSession().getAttribute("listaHuesped");

    %>
    <tr>
        <%                for (Huesped huesped : listaHuesped) {
                int dni = huesped.getDni();
                String nombre = huesped.getNombre();
                String Apellido = huesped.getApellido();
        %>

        <td><%=dni%></td>
        <td><%=nombre%></td>
        <td><%=Apellido%></td>
    <br>
</tr>

<%}%>
</tbody>
</body>
</html>
