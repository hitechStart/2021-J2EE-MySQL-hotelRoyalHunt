
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html  lang="es" dir="ltr">
    <head>
        <%@ include file = "cabecera.jsp" %>

        <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,700" rel="stylesheet">
        <!--Inicio de archivos CSS-->
        <link rel="stylesheet" href="Resourses/CSS/principal.css">
        <link rel="stylesheet" href="Resourses/CSS/PanelControl.css">

        <!Inicio de fuentes fonts-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <link href="https://allfont.es/allfont.css?fonts=deutsch-gothic" rel="stylesheet" type="text/css" />
    <!--Fin de Fuentes Fonts-->


    <!--Import de Barra de redes Sociales-->
    <%@ include file = "BarraRedSocial.jsp" %>

</head>
<body>
    <!--Inicio de barra de menu-->
    <header>
        <%@ include file = "BarraDeMenu.jsp" %>
        <div class="btn-volver-arriba" id="btnVolverArriba">
            <a href="#" class="volver-arriba">
                <i class="fa fa-arrow-up" aria-hidden="true"></i>
            </a>
        </div>
    </header>
    <!--Fin de barra de menu-->

    <!--Inicio de main-->
    <section class="main">
        <!-- Banner Principal -->
        <section class="banner-principal">
            <div class="banner" id="banner"></div>
            <div class="texto-banner">
                <h2>Siempre Innovando</h2>
                <h1>HOTEL ROYAL HUNT</h1>
                <a href="#proyectos" class="scroll-suave">Tu relax, nuestra especialidad</a>
            </div>
        </section>
    </section>

    <br>
    <!--Inicio de gestion de servicios--> 
    <section>
        <div>
            <div class="titulo-seccion">
                <h2 class="titulo">GESTION DE SERVICIOS</h2>
            </div>
            <div class="container-fluid">
                <div class="row listas">
                    <div class="col-2 imgLeft"></div>  
                    <div class="col-8 panel">
                        <h3 class="titulo">PANEL DE CONTROL PARA LA ADMINISTRACION DE:</h3>
                        <br>
                        <ul class="listaOpciones">
                            <li><i class="fas fa-bed"></i><span class="espacioTexto">ADMINISTRACION DE HABITACIONES</span></li>
                            <li><i class="far fa-user-circle"></i><span class="espacioTexto">LISTA DE EMPLEADOS</span></li>
                            <li><i class="far fa-id-card"></i><span class="espacioTexto">LISTA DE HUESPEDES</span></li>
                            <li><i class="fas fa-book"></i><span class="espacioTexto">LISTA DE RESERVAS POR EMPLEADO</span></li>
                            <li><i class="far fa-calendar-alt"></i><span class="espacioTexto">LISTA DE HUESPED SEGUN RANGO DE FECHAS</span></li>
                        </ul>
                    </div>
                    <div class="col-2 imgRight"></div>
                </div>
            </div>
        </div>
    </section>
    <hr>
    <!--Inicio de resolucion de puntos A B C D-->
    <section>
        <!--B-Todos los huéspedes registrados en el sistema:-->
        <div class="row container-fluid">
            <div class="col-md-3">
                <div class="card" style="width: 18rem;height:35rem;">
                    <div class="card-header">
                        <h4 class="identificacion"><img class="card-img-top" id="coronaIzquierda" src="Resourses/Images/icono.jpg" alt="Card image cap">
                            CLIENTES
                            <img class="card-img-top" id="coronaDerecha" src="Resourses/Images/icono.jpg" alt="Card image cap">
                        </h4>
                    </div>
                    <img class="card-img-top" src="Resourses/Images/hueped-hotel.jpeg" id="imagen" alt="Card image cap">
                    <div class="card-body centerForm">
                        <form action="SVconsultaHuesped" method="GET">
                            <div class="row">
                                <div class="col-md-12">
                                    <button id="boton" type="submit" class="submit-btn">CLIENTES</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!--FIN-->

            <!--C-Lista de las reservas realizadas por un determinado empleado.-->
            <div class="col">
                <div class="card" style="width: 18rem;height:35rem;">
                    <div class="card-header">
                        <h4 class="identificacion"><img class="card-img-top" id="coronaIzquierda" src="Resourses/Images/icono.jpg" alt="Card image cap">
                            RESERVAS
                            <img class="card-img-top" id="coronaDerecha" src="Resourses/Images/icono.jpg" alt="Card image cap">
                        </h4>
                    </div>
                    <img class="card-img-top" src="Resourses/Images/reservaHotel.jpg" id="imagen" alt="Card image cap">
                    <div class="card-body centerForm">
                        <form action="SvListarEmpleado" method="GET">
                            <br>
                            <p>RESERVAS POR EMPLEADO</P>
                            <label for="html">INGRESE USUARIO</label>
                            <br>
                            <div class="form-label">
                                <input class="form-control" type="text" name="buscarReserva" required>
                            </div> 

                            <button id="boton" type="submit" class="submit-btn">EMPLEADOS</button>
                        </form>
                    </div>
                </div>
            </div>
            <!--FIN-->

            <!--A-reservas realizadas en un determinado día-->
            <div class="col">
                <div class="card" style="width: 18rem;height:35rem;">
                    <div class="card-header">
                        <h4 class="identificacion"><img class="card-img-top" id="coronaIzquierda" src="Resourses/Images/icono.jpg" alt="Card image cap">
                            RESERVAS
                            <img class="card-img-top" id="coronaDerecha" src="Resourses/Images/icono.jpg" alt="Card image cap">
                        </h4>
                    </div>
                    <img class="card-img-top" src="Resourses/Images/reservaDia.jpg" id="imagen" alt="Card image cap">
                    <div class="card-body centerForm">
                        <form action="SvConsultaReservaDia" method="GET">
                            <br>
                            <p>RESERVAS POR DIA</P>
                            <div class="form-label">
                                <span class="form-label">FECHA A BUSCAR</span>
                                <input class="form-control" type="date" name="fecha" required>
                            </div>    
                            <button id="boton" type="submit" class="submit-btn">RESERVAS</button>
                        </form>
                    </div>
                </div>  
            </div>
            <!--FIN-->

            <!--D-Listas de todas las reservas realizadas por un determinado huésped en un período desde/hasta-->
            <div class="col">
                <div class="card" style="width: 18rem;height:35rem;">
                    <div class="card-header">
                        <h4 class="identificacion"><img class="card-img-top" id="coronaIzquierda" src="Resourses/Images/icono.jpg" alt="Card image cap">
                            RESERVAS
                            <img class="card-img-top" id="coronaDerecha" src="Resourses/Images/icono.jpg" alt="Card image cap">
                        </h4>
                    </div>

                    <div class="card-body centerForm">
                        <img class="card-img-top" src="Resourses/Images/reservafechas.jpg" id="imagen" alt="Card image cap">
                        <p>RESERVAS ENTRE FECHAS</P>
                        <form action="SvD" method="GET">
                            <div class="form-label">
                                <div class="form-label">INGRESE HUESPED
                                    <input class="form-control" type="text" name="idhuesped" required>
                                </div>   
                                <span class="form-label">FECHA DESDE</span>
                                <input class="form-control" type="date" name="fechaDesde" required>
                                <span class="form-label">FECHA HASTA</span>
                                <input class="form-control" type="date" name="fechaHasta" required>
                            </div>    
                            <button id="boton"type="submit" class="submit-btn">RESERVAS</button>
                        </form>
                    </div>
                </div>  
            </div>
            <!--FIN-->
        </div>  
    </section>
    <br>
    <hr>
    <!-- Acerca de -->
    <section class="acerca-de" id="acercaDe">
        <div class="contenedor">

            <h2>SERVICIOS DE HABITACION</h2>
            <br>
            <p>GESTION DE HABITACIONES</p>
        </div>
    </section>
    <section>

        <div class="row align-items-center">
            <!--Habitacion SINGLE-->
            <div class="col-md-3">
                <div class="card" style="width: 18rem;height:38rem;">
                    <img class="card-img-top" src="Resourses/Images/habitacion-I.jpg" alt="Card image cap">
                    <div class="card-body">
                        <div class="card-header">
                            <h4 class="my-0 font-weight-normal">SINGLE</h4>
                        </div>
                        <div class="form-group">
                            <form action="SvHabitacion" method="POST">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <div class="form-label"></div>
                                            <input class="form-control" type="number" placeholder="NUMERO" name="idHabitacion" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="espacio"></div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <div class="form-label"></div>
                                            <input class="form-control" type="number" placeholder="PISO" name="piso" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="espacio"></div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <span class="form-label"></span>
                                            <select class="form-control"  name="tematica" required>
                                                <option value="" selected hidden>TEMATICA</option>
                                                <option>CLASICA</option>
                                                <option>CONTEMPORANEA</option>
                                                <option>MEDIEVAL</option>
                                                <option>REAL</option>
                                            </select>
                                            <span class="select-arrow"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="espacio"></div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <span class="form-label"></span>
                                            <select class="form-control"  name="tipo" required>
                                                <option value="" selected hidden>TIPO</option>
                                                <option>SINGLE</option>
                                            </select>
                                            <span class="select-arrow"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="espacio"></div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <div class="form-label"></div>
                                            <input class="form-control" type="number" placeholder="PRECIO POR NOCHE" name="precio" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="espacio"></div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <div class="form-label"></div>
                                            <input class="form-control" type="number" placeholder="DISPONIBILIDAD" name="disponibilidad" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="espacio"></div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <button id="btn" type="submit" class="submit-btn">REGISTRAR</button>
                                    </div>
                                </div>
                            </form>
                        </div>

                    </div>  
                </div>
            </div>
            <!--Habitacion DOBLE-->
            <div class="col-md-3">
                <div class="card" style="width: 18rem;height:38rem;">
                    <img class="card-img-top" src="Resourses/Images/habitacion-II.jpg" alt="Card image cap">
                    <div class="card-body">
                        <div class="card-header">
                            <h4 class="my-0 font-weight-normal">DOBLE</h4>
                        </div>
                        <div class="form-group">
                            <form action="SvHabitacion" method="POST">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <div class="form-label"></div>
                                            <input class="form-control" type="number" placeholder="NUMERO" name="idHabitacion" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="espacio"></div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <div class="form-label"></div>
                                            <input class="form-control" type="number" placeholder="PISO" name="piso" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="espacio"></div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <span class="form-label"></span>
                                            <select class="form-control"  name="tematica" required>
                                                <option value="" selected hidden>TEMATICA</option>
                                                <option>CLASICA</option>
                                                <option>CONTEMPORANEA</option>
                                                <option>MEDIEVAL</option>
                                                <option>REAL</option>
                                            </select>
                                            <span class="select-arrow"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="espacio"></div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <span class="form-label"></span>
                                            <select class="form-control"  name="tipo" required>
                                                <option value="" selected hidden>TIPO</option>
                                                <option>DOBLE</option>
                                            </select>
                                            <span class="select-arrow"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="espacio"></div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <div class="form-label"></div>
                                            <input class="form-control" type="number" placeholder="PRECIO POR NOCHE" name="precio" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="espacio"></div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <div class="form-label"></div>
                                            <input class="form-control" type="number" placeholder="DISPONIBILIDAD" name="disponibilidad" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="espacio"></div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <button id="btn" type="submit" class="submit-btn">REGISTRAR</button>
                                    </div>
                                </div>
                                <div class="espacio"></div>
                            </form>
                        </div>
                    </div>
                </div>  
            </div>
            <!--Habitacion TRIPLE-->
            <div class="col-md-3">
                <div class="card" style="width: 18rem;height:38rem;">
                    <img class="card-img-top" src="Resourses/Images/habitacion-III.jpg" alt="Card image cap">
                    <div class="card-body">
                        <div class="card-header">
                            <h4 class="my-0 font-weight-normal">TRIPLE</h4>
                        </div>
                        <div class="form-group">
                            <form action="SvHabitacion" method="POST">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <div class="form-label"></div>
                                            <input class="form-control" type="number" placeholder="NUMERO" name="idHabitacion" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="espacio"></div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <div class="form-label"></div>
                                            <input class="form-control" type="number" placeholder="PISO" name="piso" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="espacio"></div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <span class="form-label"></span>
                                            <select class="form-control"  name="tematica" required>
                                                <option value="" selected hidden>TEMATICA</option>
                                                <option>CLASICA</option>
                                                <option>CONTEMPORANEA</option>
                                                <option>MEDIEVAL</option>
                                                <option>REAL</option>
                                            </select>
                                            <span class="select-arrow"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="espacio"></div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <span class="form-label"></span>
                                            <select class="form-control"  name="tipo" required>
                                                <option value="" selected hidden>TIPO</option>
                                                <option>TRIPLE</option>
                                            </select>
                                            <span class="select-arrow"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="espacio"></div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <div class="form-label"></div>
                                            <input class="form-control" type="number" placeholder="PRECIO POR NOCHE" name="precio" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="espacio"></div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <div class="form-label"></div>
                                            <input class="form-control" type="number" placeholder="DISPONIBILIDAD" name="disponibilidad" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="espacio"></div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <button id="boton" type="submit" class="submit-btn">REGISTRAR</button>
                                    </div>
                                </div>
                            </form>
                        </div> 
                    </div>
                </div>  
            </div>
            <!--Habitacion MULTIPLE-->
            <div class="col-md-3">
                <div class="card" style="width: 18rem;height:38rem;">
                    <img class="card-img-top" src="Resourses/Images/habitacion-IV.jpeg" alt="Card image cap">
                    <div class="card-body">
                        <div class="card-header">
                            <h4 class="my-0 font-weight-normal">SINGLE</h4>
                        </div>
                        <div class="form-group">
                            <form action="SvHabitacion" method="POST">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <div class="form-label"></div>
                                            <input class="form-control" type="number" placeholder="NUMERO" name="idHabitacion" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="espacio"></div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <div class="form-label"></div>
                                            <input class="form-control" type="number" placeholder="PISO" name="piso" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="espacio"></div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <span class="form-label"></span>
                                            <select class="form-control"  name="tematica" required>
                                                <option value="" selected hidden>TEMATICA</option>
                                                <option>CLASICA</option>
                                                <option>CONTEMPORANEA</option>
                                                <option>MEDIEVAL</option>
                                                <option>REAL</option>
                                            </select>
                                            <span class="select-arrow"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="espacio"></div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <span class="form-label"></span>
                                            <select class="form-control"  name="tipo" required>
                                                <option value="" selected hidden>TIPO</option>
                                                <option>MULTIPLE</option>
                                            </select>
                                            <span class="select-arrow"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="espacio"></div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <div class="form-label"></div>
                                            <input class="form-control" type="number" placeholder="PRECIO POR NOCHE" name="precio" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="espacio"></div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <div class="form-label"></div>
                                            <input class="form-control" type="number" placeholder="DISPONIBILIDAD" name="disponibilidad" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="espacio"></div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <button id="boton" type="submit" class="submit-btn">REGISTRAR</button>
                                    </div>
                                </div>
                            </form>                       
                        </div>
                    </div>  
                </div>
            </div>
    </section>

    <!-- Espacio en blanco -->
    <div class="contenedor">  
    </div>

    <!--Pie de pagina-->
    <%@ include file = "footer.jsp" %>
    <script src="Resourses/JS/jquery.min.js"></script>
</body>
</html>
