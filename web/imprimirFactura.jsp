<%@page  import="javax.servlet.http.HttpSession"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Guia Salgraf</title>

    </head>

    <body>

        <h1>Ingreso los siguientes datos:</h1>
        <br>
        <p>Numero de empleado <%=session.getAttribute("usuario")%></p>
        <p>Numero de reserva: <%=session.getAttribute("idReserva")%></p>
        <p>Numero de Documento: <%=session.getAttribute("dni")%></p>
        <p>Nombre:  <%=session.getAttribute("nombre")%></p>
        <p>Apellido<%=session.getAttribute("apellido")%></p>
        <p>Fecha de Nacimiento <%=session.getAttribute("fechaNac")%></p>
        <p>Check-in: <%=session.getAttribute("check_in")%></p>
        <p>Check-out: <%=session.getAttribute("check_out")%></p>
        <p>Identificador de Habitacion: <%=session.getAttribute("idHabitacion")%></p>
        <p>Piso: <%=session.getAttribute("piso")%></p>
        <p>Tipo: <%=session.getAttribute("tipo")%></p>
        <p>Tematica: <%=session.getAttribute("tematica")%></p>
        <p>Numero de Personas: <%=session.getAttribute("numPersonas")%></p>
        <p>Monto Total: <%=session.getAttribute("montoTotal")%></p>

    </body>
</html>