<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" dir="ltr">

    <head>
        <%@ include file = "cabecera.jsp" %>

        <title>Booking Form HTML Template</title>

        <!-- Google font -->
        <link href="http://fonts.googleapis.com/css?family=Playfair+Display:400" rel="stylesheet" type="text/css" />
        <link href="http://fonts.googleapis.com/css?family=Alice:400,700" rel="stylesheet" type="text/css" />

        <!-- Bootstrap -->
        <link type="text/css" rel="stylesheet" href="Resourses/CSS/bootstrap.min.css" />

        <!-- Custom stlylesheet -->
        <link type="text/css" rel="stylesheet" href="Resourses/CSS/formulario.css" />
        <link type="text/css" rel="stylesheet" href="Resourses/CSS/footer.css" />
        <%@ include file = "BarraRedSocial.jsp" %>
    </head>

    <body>
        <%@ include file = "BarraDeMenu.jsp" %>
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
                            <form action="imprimir.jsp"  method="POST">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="form-label">Numero de reserva</div>
                                            <input class="form-control" type="text" required>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="form-label">Identificacion</div>
                                            <input class="form-control" type="text" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="form-label">Nombre</div>
                                            <input class="form-control" type="text" required>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="form-label">Apellido</div>
                                            <input class="form-control" type="text" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span class="form-label">Check in</span>
                                            <input class="form-control" type="date" required>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span class="form-label">Check Out</span>
                                            <input class="form-control" type="date" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span class="form-label">Identificador</span>
                                            <input class="form-control" type="text" required>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span class="form-label">Piso</span>
                                            <input class="form-control" type="text" required>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <span class="form-label">Tematica</span>
                                            <input class="form-control" type="text" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <span class="form-label">Tipo de habitacion</span>
                                    <select class="form-control" required>
                                        <option value="" selected hidden>Select room type</option>
                                        <option>Private Room (1 to 2 People)</option>
                                        <option>Family Room (1 to 4 People)</option>
                                    </select>
                                    <span class="select-arrow"></span>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span class="form-label">Personas</span>
                                            <select class="form-control">
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                            </select>
                                            <span class="select-arrow"></span>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span class="form-label">Precio por noche</span>
                                            <select class="form-control">
                                                <option>0</option>
                                                <option>1</option>
                                                <option>2</option>
                                            </select>
                                            <span class="select-arrow"></span>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-btn">
                                    <button class="submit-btn">RESERVAR</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Incluimos el archivo de Pie de pagina-->
        <%@ include file = "footer.jsp" %>
    </body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>