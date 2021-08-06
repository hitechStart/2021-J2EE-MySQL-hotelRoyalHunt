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
        <p>C-Lista de las reservas realizadas por un determinado empleado.</p>   
        <h3>Empleado:<%=session.getAttribute("usuario")%></h3>
        <br>
        <br>
      
            
    <tbody>
         
        
        <% HttpSession misession = request.getSession();
            List<Reserva> verificarUsuario = (List) request.getSession().getAttribute("verificarUsuario");

        %>
        <tr>
            <%for (Reserva reserva : verificarUsuario) {
                    int idReserva = reserva.getIdReserva();
                    

            %>

            <td><%=idReserva%></td>
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
