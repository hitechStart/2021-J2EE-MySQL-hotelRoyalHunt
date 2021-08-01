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

        <form action="SVconsultaHuesped" method="GET">
            <div class="row">
                <p>B-Todos los huéspedes registrados en el sistema:</p>
                <div class="col-md-6">
                    <button type="submit" class="submit-btn">ListarClientes</button>
                </div>
            </div>
        </form>
        <br>
        <form action="SvConsultaReservaDia" method="GET">
            <div class="row">
                <p>A-Todas las reservas realizadas en un determinado día:</p>
                <div class="col-md-6">
                    <div class="form-label">INGRESE FECHA A BUSCAR</div>
                    <input class="form-control" type="date" placeholder="FECHA" name="fecha" required>
                </div>
            </div>
            <br>
            <br>
            <div class="row">
                <div class="col-md-6">
                    <button type="submit" class="submit-btn">Listar Reservas por dia</button>
                </div>
            </div>
        </form>
        <br>
        <form action="SvListarEmpleado" method="GET">
            <div class="row">
                <p>C-Lista de las reservas realizadas por un determinado empleado.</p>   
                <div class="col-md-6">
                    <div class="form-label">INGRESE USUARIO A BUSCAR</div>
                    <input class="form-control" type="text" placeholder="" name="buscarReserva" required>
                </div>
                <br>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <button type="submit" class="submit-btn">Listar Reservas por empleado</button>
                </div>
            </div>
        </form>

        <form action="SvD" method="GET">   
            <div class="row">
                <p>D-Listas de todas las reservas realizadas por un determinado huésped en un período desde/hasta</p>
                <div class="col-md-6">
                    <div class="form-label">INGRESE HUESPED A BUSCAR</div>
                    <input class="form-control" type="text" placeholder="" name="idhuesped" required>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    <div class="form-label">INGRESE FECHA DESDE</div>
                    <input class="form-control" type="date" name="fechaDesde" required>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-label">INGRESE FECHA HASTA</div>
                    <input class="form-control" type="date" name="fechaHasta" required>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <button type="submit" class="submit-btn">Listar</button>
                </div>
            </div>
        </div>
    </form>

</body>
</html>