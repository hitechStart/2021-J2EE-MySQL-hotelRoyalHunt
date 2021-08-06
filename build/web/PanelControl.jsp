
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html  lang="es" dir="ltr">
    <head>
        <%@ include file = "cabecera.jsp" %>

        <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,700" rel="stylesheet">

        <link rel="stylesheet" href="Resourses/CSS/principal.css">

        <!--Fuentes para la barra de redes Sociales-->
        <script src="https://kit.fontawesome.com/eb496ab1a0.js" crossorigin="anonymous"></script>

        <%@ include file = "BarraRedSocial.jsp" %>

    </head>
    <body>

        <%@ include file = "BarraDeMenu.jsp" %>
        <div class="btn-volver-arriba" id="btnVolverArriba">
            <a href="#" class="volver-arriba">
                <i class="fa fa-arrow-up" aria-hidden="true"></i>
            </a>
        </div>
        <!-- Main -->


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
        <!-- Acerca de -->
        <br>
        <section class="acerca-de" id="acercaDe">
            <div class="contenedor">
                <div class="titulo-seccion">
                    <h2>SERVICIOS DE CONFIGURACION Y RESULTADOS</h2>

                </div>
                <div class="texto-acerca-de">
                    <p>Atracciones para visitar con toda la familia y amigos
                        • Catedral de León
                        • Estadio de tenis
                        • Centro de exposiciones y convenciones Poliforum León
                        • Arco Triunfal Calzada de los Héroes
                        Otros puntos de interés cerca de Hoteles Royal Hunt
                        • Centro comercial Plaza del Zapato
                        • Zoológico de León
                        • Centro comercial Centro Max
                        • Teatro Manuel Doblado
                        • Centro de Ciencias Explora
                        • Vuelos a León</p>
                </div>
            </div>
        </section>
        <hr>
        <section>
            <div class="container">
                <div class="row row-cols-2 row-cols-lg-5 g-2 g-lg-3">
                    <div class="col">
                        <form action="SVconsultaHuesped" method="GET">
                            <div class="row">
                                <div class="col-md-12">
                                    <button type="submit" class="submit-btn">CLIENTES</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="col">
                        <div class="p-3 border bg-light">

                            <form action="SvListarEmpleado" method="GET">
                                <div class="form-label">
                                    <input class="form-control" type="text" name="buscarReserva" required>
                                </div>    

                                <button type="submit" class="submit-btn">EMPLEADOS</button>


                            </form>
                        </div>
                    </div>
                    <div class="col">
                        <div class="p-3 border bg-light">
                            <form action="SvConsultaReservaDia" method="GET">
                                <div class="form-label">

                                    <span class="form-label">FECHA A BUSCAR</span>
                                    <input class="form-control" type="date" name="fecha" required>
                                </div>    

                                <button type="submit" class="submit-btn">RESERVAS</button>


                            </form>


                        </div>
                    </div>
                    <div class="col">
                        <div class="p-3 border bg-light">

                            <form action="SvD" method="GET">
                                <div class="form-label">
                                    <div class="form-label">
                                        <input class="form-control" type="text" name="idhuesped" required>
                                    </div>   
                                    <span class="form-label">FECHA DESDE</span>
                                    <input class="form-control" type="date" name="fechaDesde" required>
                                    <span class="form-label">FECHA HASTAR</span>
                                    <input class="form-control" type="date" name="fechaHasta" required>
                                </div>    

                                <button type="submit" class="submit-btn">RESERVAS</button>


                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </section>
        <br>
        <hr>
        <!-- Acerca de -->
        <section class="acerca-de" id="acercaDe">
            <div class="contenedor">
                <div class="titulo-seccion">
                    <h2>SERVICIOS</h2>
                    <p>Conoce más sobre nosotros, lo que hacemos y cómo lo hacemos</p>
                </div>
                <div class="texto-acerca-de">
                    <p>Atracciones para visitar con toda la familia y amigos
                        • Catedral de León
                        • Estadio de tenis
                        • Centro de exposiciones y convenciones Poliforum León
                        • Arco Triunfal Calzada de los Héroes
                        Otros puntos de interés cerca de Hoteles Royal Hunt
                        • Centro comercial Plaza del Zapato
                        • Zoológico de León
                        • Centro comercial Centro Max
                        • Teatro Manuel Doblado
                        • Centro de Ciencias Explora
                        • Vuelos a León</p>
                </div>
            </div>
        </section>
        <section>
            <div class="row align-items-center">
                <div class="col-md-3">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="Resourses/Images/habitacion-I.jpg" alt="Card image cap">
                        <div class="card-body">
                            <div class="card-header">
                                <h4 class="my-0 font-weight-normal">SINGLE</h4>
                            </div>

                            <form>
                                <div class="form-group">
                                    <form action="SvHabitacion" method="POST">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <div class="form-label"></div>
                                                    <input class="form-control" type="number" placeholder="NUMERO" name="idHabitacion" required>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <div class="form-label"></div>
                                                    <input class="form-control" type="number" placeholder="PISO" name="piso" required>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <span class="form-label"></span>
                                                    <select class="form-control"  name="tematica" required>
                                                        <option value="" selected hidden>TEMATICA</option>
                                                        <option>Private Room (1 to 2 People)</option>
                                                        <option>Family Room (1 to 4 People)</option>
                                                    </select>
                                                    <span class="select-arrow"></span>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <span class="form-label"></span>
                                                    <select class="form-control"  name="tipo" required>
                                                        <option value="" selected hidden>TIPO</option>
                                                        <option>SINGLE</option>
                                                        <option>DOBLE</option>
                                                        <option>TRIPLE</option>
                                                        <option>MULTIPLE</option>
                                                    </select>
                                                    <span class="select-arrow"></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <div class="form-label"></div>
                                                    <input class="form-control" type="number" placeholder="PRECIO POR NOCHE" name="precio" required>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <div class="form-label"></div>
                                                    <input class="form-control" type="number" placeholder="DISPONIBILIDAD" name="disponibilidad" required>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-12">
                                                <button type="submit" class="submit-btn">REGISTRAR</button>
                                            </div>
                                        </div>
                                    </form>

                                </div>
                            </form>
                        </div>  
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="Resourses/Images/habitacion-II.jpg" alt="Card image cap">
                        <div class="card-body">
                            <div class="card-header">
                                <h4 class="my-0 font-weight-normal">SINGLE</h4>
                            </div>

                            <form>
                                <div class="form-group">
                                    <form action="SvHabitacion" method="POST">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <div class="form-label"></div>
                                                    <input class="form-control" type="number" placeholder="NUMERO" name="idHabitacion" required>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <div class="form-label"></div>
                                                    <input class="form-control" type="number" placeholder="PISO" name="piso" required>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <span class="form-label"></span>
                                                    <select class="form-control"  name="tematica" required>
                                                        <option value="" selected hidden>TEMATICA</option>
                                                        <option>Private Room (1 to 2 People)</option>
                                                        <option>Family Room (1 to 4 People)</option>
                                                    </select>
                                                    <span class="select-arrow"></span>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <span class="form-label"></span>
                                                    <select class="form-control"  name="tipo" required>
                                                        <option value="" selected hidden>TIPO</option>
                                                        <option>SINGLE</option>
                                                        <option>DOBLE</option>
                                                        <option>TRIPLE</option>
                                                        <option>MULTIPLE</option>
                                                    </select>
                                                    <span class="select-arrow"></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <div class="form-label"></div>
                                                    <input class="form-control" type="number" placeholder="PRECIO POR NOCHE" name="precio" required>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <div class="form-label"></div>
                                                    <input class="form-control" type="number" placeholder="DISPONIBILIDAD" name="disponibilidad" required>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-12">
                                                <button type="submit" class="submit-btn">REGISTRAR</button>
                                            </div>
                                        </div>
                                    </form>

                                </div>
                            </form>
                        </div>
                    </div>  
                </div>
                <div class="col-md-3">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="Resourses/Images/habitacion-III.jpg" alt="Card image cap">
                        <div class="card-body">
                            <div class="card-header">
                                <h4 class="my-0 font-weight-normal">SINGLE</h4>
                            </div>

                            <form>
                                <div class="form-group">
                                    <form action="SvHabitacion" method="POST">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <div class="form-label"></div>
                                                    <input class="form-control" type="number" placeholder="NUMERO" name="idHabitacion" required>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <div class="form-label"></div>
                                                    <input class="form-control" type="number" placeholder="PISO" name="piso" required>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <span class="form-label"></span>
                                                    <select class="form-control"  name="tematica" required>
                                                        <option value="" selected hidden>TEMATICA</option>
                                                        <option>Private Room (1 to 2 People)</option>
                                                        <option>Family Room (1 to 4 People)</option>
                                                    </select>
                                                    <span class="select-arrow"></span>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <span class="form-label"></span>
                                                    <select class="form-control"  name="tipo" required>
                                                        <option value="" selected hidden>TIPO</option>
                                                        <option>SINGLE</option>
                                                        <option>DOBLE</option>
                                                        <option>TRIPLE</option>
                                                        <option>MULTIPLE</option>
                                                    </select>
                                                    <span class="select-arrow"></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <div class="form-label"></div>
                                                    <input class="form-control" type="number" placeholder="PRECIO POR NOCHE" name="precio" required>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <div class="form-label"></div>
                                                    <input class="form-control" type="number" placeholder="DISPONIBILIDAD" name="disponibilidad" required>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-12">
                                                <button type="submit" class="submit-btn">REGISTRAR</button>
                                            </div>
                                        </div>
                                    </form>

                                </div>
                            </form>    
                        </div>
                    </div>  
                </div>
                <div class="col-md-3">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="Resourses/Images/habitacion-IV.jpeg" alt="Card image cap">
                        <div class="card-body">
                            <div class="card-header">
                                <h4 class="my-0 font-weight-normal">SINGLE</h4>
                            </div>

                            <form>
                                <div class="form-group">
                                    <form action="SvHabitacion" method="POST">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <div class="form-label"></div>
                                                    <input class="form-control" type="number" placeholder="NUMERO" name="idHabitacion" required>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <div class="form-label"></div>
                                                    <input class="form-control" type="number" placeholder="PISO" name="piso" required>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <span class="form-label"></span>
                                                    <select class="form-control"  name="tematica" required>
                                                        <option value="" selected hidden>TEMATICA</option>
                                                        <option>Private Room (1 to 2 People)</option>
                                                        <option>Family Room (1 to 4 People)</option>
                                                    </select>
                                                    <span class="select-arrow"></span>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <span class="form-label"></span>
                                                    <select class="form-control"  name="tipo" required>
                                                        <option value="" selected hidden>TIPO</option>
                                                        <option>SINGLE</option>
                                                        <option>DOBLE</option>
                                                        <option>TRIPLE</option>
                                                        <option>MULTIPLE</option>
                                                    </select>
                                                    <span class="select-arrow"></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <div class="form-label"></div>
                                                    <input class="form-control" type="number" placeholder="PRECIO POR NOCHE" name="precio" required>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <div class="form-label"></div>
                                                    <input class="form-control" type="number" placeholder="DISPONIBILIDAD" name="disponibilidad" required>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-12">
                                                <button type="submit" class="submit-btn">REGISTRAR</button>
                                            </div>
                                        </div>
                                    </form>

                                </div>
                            </form>    
                        </div>
                    </div>  
                </div>
            </div>
        </section>
        <!-- Acerca de -->
        <section class="acerca-de" id="acercaDe">
            <div class="contenedor">
                <div class="titulo-seccion">
                    <h2>SERVICIOS</h2>
                    <p>Conoce más sobre nosotros, lo que hacemos y cómo lo hacemos</p>
                </div>
                <div class="texto-acerca-de">
                    <p>Atracciones para visitar con toda la familia y amigos
                        • Catedral de León
                        • Estadio de tenis
                        • Centro de exposiciones y convenciones Poliforum León
                        • Arco Triunfal Calzada de los Héroes
                        Otros puntos de interés cerca de Hoteles Royal Hunt
                        • Centro comercial Plaza del Zapato
                        • Zoológico de León
                        • Centro comercial Centro Max
                        • Teatro Manuel Doblado
                        • Centro de Ciencias Explora
                        • Vuelos a León</p>
                </div>
            </div>
        </section>
        <section>
            <div class="row align-items-center">
                <div class="col-md-3">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="..." alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary">Go somewhere</a>
                        </div>
                    </div>  
                </div>
                <div class="col-md-3">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="..." alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary">Go somewhere</a>
                        </div>
                    </div>  
                </div>
                <div class="col-md-3">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="..." alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary">Go somewhere</a>
                        </div>
                    </div>  
                </div>
                <div class="col-md-3">
                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="..." alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary">Go somewhere</a>
                        </div>
                    </div>  
                </div>
            </div>
        </section>
        <!-- Acerca de -->
        <section class="acerca-de" id="acercaDe">
            <div class="contenedor">
                <div class="titulo-seccion">
                    <h2>SERVICIOS</h2>
                    <p>Conoce más sobre nosotros, lo que hacemos y cómo lo hacemos</p>
                </div>
                <div class="texto-acerca-de">
                    <p>Atracciones para visitar con toda la familia y amigos
                        • Catedral de León
                        • Estadio de tenis
                        • Centro de exposiciones y convenciones Poliforum León
                        • Arco Triunfal Calzada de los Héroes
                        Otros puntos de interés cerca de Hoteles Royal Hunt
                        • Centro comercial Plaza del Zapato
                        • Zoológico de León
                        • Centro comercial Centro Max
                        • Teatro Manuel Doblado
                        • Centro de Ciencias Explora
                        • Vuelos a León</p>
                </div>
            </div>
        </section>



        <%@ include file = "footer.jsp" %>

        <script src="Resourses/JS/jquery.min.js"></script>
        <script src="Resourses/JS/banner.js"></script>
        <script src="Resourses/JS/stickyHeader.js"></script>
        <script src="Resourses/JS/scrollSuave.js"></script>
        <script src="Resourses/JS/modal.js"></script>
        <script src="Resourses/JS/slider.js"></script>
        <script src="js/bgParallax.js"></script>
        <script src="Resourses/JS/validacion.js"></script>
        <script src="Resourses/JS/menuMobile.js"></script>


        <script src="Resourses/JS/parallax.min.js"></script>

        <script src="Resourses/JS/prefixfree.min.js"></script>
    </body>
</html>
