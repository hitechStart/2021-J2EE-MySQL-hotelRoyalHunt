<%@page import="java.util.List"%>
<%@page import="logica.Reserva"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html  lang="es" dir="ltr">
    <head>
        <%@ include file = "cabecera.jsp" %>
         <link rel="stylesheet" href="Resourses/CSS/imprimirListaReservas.css">
    </head>
    <body>
        <div class="container marco" >
            <div class="row">
                <div class="usuario">
                    <h3>Usuario: <%=session.getAttribute("usuario")%></h3>
                </div>
            </div>
            <p class="item">LISTADO DE RESERVAS:</p>
            <br>
            <div class="row">
                <div class="col-md-12">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">RESERVA</th>
                                <th scope="col">MONTO TOTAL</th>
                                <th scope="col">EMPLEADO</th>
                                <th scope="col">ELIMINAR</th>
                                
                            </tr>
                        </thead>
                        <tbody>

                            <% HttpSession misession = request.getSession();
                                List<Reserva> listaReserva = (List) request.getSession().getAttribute("listaReserva");

                            %>

                            <tr>

                                <%   int id;
                                    double monto;
                                    String empleado;
                                    for (Reserva reserva : listaReserva) {

                                        id = reserva.getIdReserva();
                                        monto = reserva.getMontoTotal();
                                        empleado = reserva.getUser();

                                %>
                                <td><%=id%></td>
                                <td><%=monto%></td>
                                <td><%=empleado%></td>
                                <td><form action="SvEliminarReserva" method="POST">
                                        <input type="hidden" name="id" value="<%=id%>">
                                    <button class="btn btn-primary" id="eliminar" type="submit">ELIMINAR</button>
                                </form></td>
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
                                <button id="boton" type="submit" class="submit-btn">VOLVER</button>
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
