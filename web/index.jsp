<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" dir="ltr">
    <head>
        <!--Incluimos el archivo de cabecera-->
        <%@ include file = "cabecera.jsp" %>

        <title>Hotel Royal Hunt</title>

        <link rel="stylesheet" type="text/css" href="Resourses/CSS/login.css">
        <link rel="stylesheet" type="text/css" href="Resourses/CSS/footer.css">

    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-10 order-first">
                    <div class="login-wrap">
                        <div class="login-html">
                            <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">INICIO</label>
                            <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">REGISTRO</label>
                            <div class="login-form ">
                                <form action="principal.jsp"  method="POST">
                                    <div class="sign-in-htm">
                                        <div class="group">
                                            <label for="user" class="label">USUARIO</label>
                                            <input id="user" type="text" class="input">
                                        </div>
                                        <div class="group">
                                            <label for="pass" class="label">PASSWORD</label>
                                            <input id="pass" type="password" class="input" data-type="password">
                                        </div>
                                        <div class="group">
                                            <input type="submit" class="button" value="INICIAR">
                                        </div>
                                        <div class="hr"></div>

                                    </div>
                                </form>
                                <form action="principal.jsp"  method="POST">
                                    <div class="sign-up-htm">

                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="group">
                                                    <label for="user" class="label">DNI</label>
                                                    <input id="user" type="text" class="input" required>
                                                </div>
                                            </div>
                                            <div class="col-md-6"> 
                                                <div class="group">
                                                    <label for="user" class="label">Nombre</label>
                                                    <input id="user" type="text" class="input" required>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="group">
                                                    <label for="user" class="label">APELLIDO</label>
                                                    <input id="user" type="text" class="input" required>
                                                </div>
                                            </div>
                                            <div class="col-md-6"> 
                                                <div class="group">
                                                    <label for="user" class="label">NACIMIENTO</label>
                                                    <input id="user" type="date" class="input" required>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="group">
                                                    <label for="user" class="label">DIRECCION</label>
                                                    <input id="user" type="text" class="input" required>
                                                </div>
                                            </div>
                                            <div class="col-md-6"> 
                                                <div class="group">
                                                    <label for="user" class="label">CARGO</label>
                                                    <input id="user" type="text" class="input" required>
                                                </div>
                                            </div>
                                        </div>



                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="group">
                                                    <label for="user" class="label">USUARIO</label>
                                                    <input id="user" type="text" class="input">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="group">
                                                    <label for="pass" class="label">PASSWORD</label>
                                                    <input id="pass" type="password" class="input" data-type="password">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">    
                                            <div class="group">
                                                <input type="submit" class="button" value="REGISTRAR">
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="widgets col-1 order-last">

                    <div class="cleanslate w24tz-current-time w24tz-small" style="margin-left: 10px !important; display: inline-block !important; visibility: hidden !important; min-width:80px !important; min-height:100px !important; border-radius: 20px !important;"><p><a href="//24timezones.com/zona-horaria/art" style="text-decoration: none" class="clock24" id="tz24-1626701529-tzart-eyJob3VydHlwZSI6IjI0Iiwic2hvd2RhdGUiOiIxIiwic2hvd3NlY29uZHMiOiIxIiwiY29udGFpbmVyX2lkIjoiY2xvY2tfYmxvY2tfY2I2MGY1N2VkOWI4ZTliIiwidHlwZSI6ImRiIiwibGFuZyI6ImVzIn0" title="ART reloj mundial" target="_blank">ARGENTINA</a></p><div id="clock_block_cb60f57ed9b8e9b"></div></div>
                    <br>
                  
                    <div align="center">
                        <!-- weather widget start -->
                        <a target="_blank" href="https://hotelmix.es/weather/buenos-aires-18250"><img src="https://w.bookcdn.com/weather/picture/1_18250_1_4_137AE9_160_ffffff_333333_08488D_1_ffffff_333333_0_6.png?scode=124&domid=582&anc_id=85008"  alt="booked.net"/></a>
                        <!-- weather widget end -->
                    </div>
                </div>
            </div>
        </div>
        <!--Incluimos el archivo de Pie de pagina-->
        <%@ include file = "footer.jsp" %>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
        <script type="text/javascript" src="//w.24timezones.com/l.js" async></script>
    </body>
</html>



