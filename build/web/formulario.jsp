<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" dir="ltr">

    <head>
        <%@include file ="cabecera.jsp"%>
        <!-- Google font -->
        <link href="http://fonts.googleapis.com/css?family=Playfair+Display:400" rel="stylesheet" type="text/css" />
        <link href="http://fonts.googleapis.com/css?family=Alice:400,700" rel="stylesheet" type="text/css" />


        <!-- Custom stlylesheet -->
        <link type="text/css" rel="stylesheet" href="Resourses/CSS/formulario.css" />
        <link type="text/css" rel="stylesheet" href="Resourses/CSS/footer.css" />
        <%@include file = "BarraRedSocial.jsp"%>
    </head>

    <body>

        <%@include file = "BarraDeMenu.jsp"%>



        <!-- Slider -->

        <section class="contenedor-slider">
            <div class="slider" id="slider">
                <div class="slide">

                    <img class="rounded float-left" src="Resourses/Images/slide6.jpg" alt="Slide" style="width: 30rem;height:auto">
                    <div  style="float: right;" >


                        <div class="tarifa">
                            <div class="card-deck mb-4 text-center">
                                <div class="card mb-4 shadow-sm">
                                    <div class="card-header">
                                        <h4 class="my-0 font-weight-normal">SINGLE</h4>
                                    </div>
                                    <div class="card-body">
                                        <h1 class="card-title pricing-card-title">$12600</h1>
                                        <ul class="list-unstyled mt-3 mb-4">
                                            <li>Mini Bar</li>
                                            <li>Jacuzzi</li>
                                            <li>Aire acondicionado</li>
                                            <li>Tv cable</li>
                                            <li>Periodico</li>
                                            <li>wifi</li>
                                        </ul>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>



                <div class="slide">
                    <img class="rounded float-left" src="Resourses/Images/slide7.jpg" alt="Slide" style="width:30rem;height:auto">
                    <div  style="float: right;" >


                        <div class="tarifa">
                            <div class="card-deck mb-4 text-center">
                                <div class="card mb-4 shadow-sm">
                                    <div class="card-header">
                                        <h4 class="my-0 font-weight-normal">DOBLE</h4>
                                    </div>
                                    <div class="card-body">
                                        <h1 class="card-title pricing-card-title">$20500</h1>
                                        <ul class="list-unstyled mt-3 mb-4">
                                            <li>Mini Bar</li>
                                            <li>Jacuzzi</li>
                                            <li>Aire acondicionado</li>
                                            <li>Tv cable</li>
                                            <li>wifi</li>
                                            <li>Servicio de limpieza</li>
                                            <li>Telefono</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="slide">
                    <img class="rounded float-left" src="Resourses/Images/slide8.jpg" alt="Slide" style="width:30rem;height:auto">
                    <div  style="float: right;" >


                        <div class="tarifa">
                            <div class="card-deck mb-4 text-center">
                                <div class="card mb-4 shadow-sm">
                                    <div class="card-header">
                                        <h4 class="my-0 font-weight-normal">TRIPLE</h4>
                                    </div>
                                    <div class="card-body">
                                        <h1 class="card-title pricing-card-title">$29600</h1>
                                        <ul class="list-unstyled mt-3 mb-4">
                                            <li>Mini Bar</li>
                                            <li>Jacuzzi</li>
                                            <li>Aire acondicionado</li>
                                            <li>Tv cable</li>

                                            <li>wifi</li>
                                            <li>Servicio de limpieza</li>

                                            <li>Pack de Bienvenida</li>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="slide">
                    <img class="rounded float-left" src="Resourses/Images/slide9.jpg" alt="Slide" style="width:30rem;height:auto">
                    <div  style="float: right;" >


                        <div class="tarifa">
                            <div class="card-deck mb-4 text-center">
                                <div class="card mb-4 shadow-sm">
                                    <div class="card-header">
                                        <h4 class="my-0 font-weight-normal">MULTIPLE</h4>
                                    </div>
                                    <div class="card-body">
                                        <h1 class="card-title pricing-card-title">$41700</h1>
                                        <ul class="list-unstyled mt-3 mb-4">
                                            <li>Mini Bar</li>
                                            <li>Jacuzzi</li>
                                            <li>Aire acondicionado</li>
                                            <li>Tv cable</li>
                                            <li>Periodico</li>
                                            <li>wifi</li>
                                            <li>Pack de Bienvenida</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="btn-anterior" id="btnAnterior">
                <i class="fa fa-arrow-left" aria-hidden="true"></i>
            </div>
            <div class="btn-siguiente" id="btnSiguiente">
                <i class="fa fa-arrow-right" aria-hidden="true"></i>
            </div>

        </section>




        <div id="booking" class="section">
            <div class="section-center">
                <div class="container">
                    <div class="row">
                        <div class="booking-form">
                            <div class="booking-bg">
                                <div class="form-header">
                                    <h2>Make your reservation</h2>
                                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate laboriosam numquam at</p>
                                </div>
                            </div>
                            <form action="SvHotel" method="POST">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="form-label">NUMERO DE RESERVA</div>
                                            <input class="form-control" type="number" name="idReserva" required>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="form-label">DOCUMENTO</div>
                                            <input class="form-control" type="number" name="documento" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="form-label">NOMBRE</div>
                                            <input class="form-control" type="text" name="nombre" required>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="form-label">APELLIDO</div>
                                            <input class="form-control" type="text" name="apellido" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <span class="form-label">FECHA DE NACIMIENTO</span>
                                            <input class="form-control" type="date" name="fechaNac" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span class="form-label">CHECK IN</span>
                                            <input class="form-control" type="date" name="check_in" required>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span class="form-label">CHECK OUT</span>
                                            <input class="form-control" type="date" name="check_out" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span class="form-label">ID DE HABITACION</span>
                                            <input class="form-control" type="number" name="idHabitacion" required>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span class="form-label">PISO</span>
                                            <input class="form-control" type="number" name="piso" required>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <span class="form-label">TEMATICA</span>
                                            <select class="form-control"  name="tematica" required>
                                                <option value="" selected hidden>Select room type</option>
                                                <option>Private Room (1 to 2 People)</option>
                                                <option>Family Room (1 to 4 People)</option>
                                            </select>
                                            <span class="select-arrow"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group">
                                        <span class="form-label">TIPO DE HABITACION</span>
                                        <select class="form-control"  name="tipo" required>
                                            <option value="" selected hidden>Select room type</option>
                                            <option>Private Room (1 to 2 People)</option>
                                            <option>Family Room (1 to 4 People)</option>
                                        </select>
                                        <span class="select-arrow"></span>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span class="form-label">NUMERO DE PERSONAS</span>
                                            <input class="form-control" type="number" name="numPersonas" required/>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span class="form-label">MONTO TOTAL</span>
                                            <input class="form-control" type="number"  step="any" name="montoTotal" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <button type="submit" class="submit-btn">RESERVAR</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--Incluimos el archivo de Pie de pagina-->
        <%@ include file = "footer.jsp" %>
        <script src="Resourses/JS/jquery.min.js"></script>     
        <script src="Resourses/JS/slider.js"></script>   
        <script src="Resourses/JS/bootstrap.min.js"></script>   
    </body>

</html>