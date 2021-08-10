<%@page  import="javax.servlet.http.HttpSession"%>
<%@page import="java.util.List"%>
<%@page import="logica.Reserva"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html  lang="es" dir="ltr">
    <head>
        <%@ include file = "cabecera.jsp" %>
        <link rel="stylesheet" href="Resourses/CSS/imprimirReservaDia.css">
        <!Inicio de fuentes fonts-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=MonteCarlo&display=swap" rel="stylesheet">
    <!--Fin de Fuentes Fonts-->
</head>
<body>
    <div class="container marco" >
        <div class="row">
            <div class="usuario">
                <h3>Usuario:<%=session.getAttribute("usuario")%></h3>
            </div>
        </div>
        <p class="item">A-Reservas realizadas en un día: </p>
        <br>
        <div class="row">
            <div class="col-md-12">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">DNI</th>
                            <th scope="col">NOMBRE</th>
                            <th scope="col">APELLIDO</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% HttpSession misession = request.getSession();
                            List<Reserva> verificarFecha = (List) request.getSession().getAttribute("verificarFecha");

                        %>
                        <tr>
                            <%  int i = 0;
                                for (Reserva reserva : verificarFecha) {
                                    int idReserva = reserva.getIdReserva();
                                    String nombre = reserva.getHuesped().getNombre();
                                    String apellido = reserva.getHuesped().getApellido();
                                    i++;
                            %>
                            <th scope="row"><%=i%></th>
                            <td><%=idReserva%></td>
                            <td><%=nombre%></td>
                            <td><%=apellido%></td>
                        </tr>
                        <%}%>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <form action="./PanelControl.jsp" method="GET">

                    <div class="row">
                        <div class="col-md-12">
                            <button  id="boton" type="submit" class="submit-btn">VOLVER</button>
                        </div>
                    </div>

                </form>
            </div>
        </div>
    </div>
    <!--Incluimos el archivo de Pie de pagina-->
    <%@ include file = "footer.jsp" %>
</body>
</html>
