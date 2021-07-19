<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" dir="ltr">
    <head>
        <%@ include file = "cabecera.jsp" %>
        <title>Hotel Royal Hunt</title>

        <link rel="stylesheet" type="text/css" href="Resourses/CSS/login.css">

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
                                        <div class="group">
                                            <label for="user" class="label">USUARIO</label>
                                            <input id="user" type="text" class="input">
                                        </div>
                                        <div class="group">
                                            <label for="pass" class="label">PASSWORD</label>
                                            <input id="pass" type="password" class="input" data-type="password">
                                        </div>

                                        <div class="group">
                                            <label for="pass" class="label">EMAIL</label>
                                            <input id="pass" type="text" class="input">
                                        </div>
                                        <div class="group">
                                            <input type="submit" class="button" value="REGISTRAR">
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="widgets col-2 order-last">

                    <div class="cleanslate w24tz-current-time w24tz-small"style="margin-left: 10px !important; display: inline-block !important; visibility: hidden !important; min-width:183px !important; min-height:100px !important; border-radius: 20px !important;"><p><a href="//24timezones.com/zona-horaria/art" style="text-decoration: none" class="clock24" id="tz24-1626701529-tzart-eyJob3VydHlwZSI6IjI0Iiwic2hvd2RhdGUiOiIxIiwic2hvd3NlY29uZHMiOiIxIiwiY29udGFpbmVyX2lkIjoiY2xvY2tfYmxvY2tfY2I2MGY1N2VkOWI4ZTliIiwidHlwZSI6ImRiIiwibGFuZyI6ImVzIn0" title="ART reloj mundial" target="_blank">ARGENTINA</a></p><div id="clock_block_cb60f57ed9b8e9b"></div></div>
                    <br>
                    <br>
                    <div align="center">
                        <iframe align="center" src="http://widget.calendarlabs.com/v1/calendar.php?cid=1002&uid=6143778325&c=8&l=en&cbg=FFFFFF&cfg=5C0201&hfg=5C0201&hfg1=5C0201&ct=60&cb=0&cbc=5C0201&cf=verdana&cp=bottom&sw=0&hp=t&ib=1&ibc=5C0201&i=images/golden-retriever.jpg" width="183" height="373" marginwidth=0 marginheight=0 frameborder=no scrolling=no allowtransparency='true'>Loading...</iframe><script type="text/javascript" src="//acortar.org/gen-js">
                        </script>  
                    </div>
                </div>
            </div>
        </div>

        <div class="footer-dark">
            <footer>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-6 col-md-3 item">
                            <h3>Servicios</h3>
                            <ul>
                                <li>servicio de desayuno</li>
                                <li>Servicio de Internet</li>
                                <li>Aparcamiento</li>
                                <li>Servicio de Internet</li> 
                            </ul>
                        </div>
                        <div class="col-sm-6 col-md-3 item">
                            <h3>Servicio durante todo el año</h3>
                            <ul>
                                <li>Pileta climatizada</li>
                                <li>Turismo en Bus</li>
                                <li>Estacionamiento</li>
                                <li>Servicio de bar nocturno</li>
                            </ul>
                        </div>
                        <div class="col-md-6 item text">
                            <h3>Acerca del hotel Royal Hunt</h3>
                            <ul>
                                <li> Boulevard Almirante Brown 637, Puerto Madryn (09120), Chubut, Argentina</li>

                                <li>Reservas: (+54 280) 447 5758</li>

                                <li>Recepción: (+54 280) 447 5753</li>

                                <li>reservas@RoyalHunt.com.ar</li>
                            </u>

                        </div>
                    </div>
                    <p class="copyright">Di Ludovico Maximiliano © 2021</p>
                </div>
            </footer>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
        <script type="text/javascript" src="//w.24timezones.com/l.js" async></script>
    </body>
</html>



