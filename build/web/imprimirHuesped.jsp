<%@page  import="javax.servlet.http.HttpSession"%>
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
    
    <p>B-Todos los huéspedes registrados en el sistema:</p>
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

<div class="col">
    <form action="./PanelControl.jsp" method="GET">

        <div class="row">
            <div class="col-md-12">
                <button type="submit" class="submit-btn">VOLVER</button>
            </div>
        </div>

    </form>
</div>
</body>
</html>