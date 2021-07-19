<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head lang="es" dir="ltr">
        <%@ include file = "cabecera.jsp" %>

        <title>Hotel Royal Hunt</title>
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,700" rel="stylesheet">
        <link rel="stylesheet" href="Resourses/CSS/principal.css">

        <link rel="stylesheet" href="https://necolas.github.io/normalize.css/8.0.1/normalize.css">
    </head>
    <body>

        <!-- Boton "Volver Arriba" -->
        <div class="btn-volver-arriba" id="btnVolverArriba">
            <a href="#" class="volver-arriba">
                <i class="fa fa-arrow-up" aria-hidden="true"></i>
            </a>
        </div>

        <!-- Encabezado -->
        <header>
            <!-- Versión móvil -->
            <div class="menu-mobile">
                <div class="barra">
                        <img src="Resourses/Images/logo.jpg" style="border-radius: 50%"alt="Royal Hunt">
                    </a>
                    <a href="#" id="btnMenu">
                        <i class="fa fa-bars" aria-hidden="true"></i>
                    </a>
                </div>
                <nav class="menu-principal">
                    <a href="#" class="volver-arriba">INICIO</a>
                    <a href="#proyectos" class="scroll-suave">SERVICIOS</a>
                    <a href="#acercaDe" class="scroll-acercaDe">ESPECIALIDADES</a>
                    <a href="#equipo" class="scroll-equipo">NUESTRO EQUIPO</a>
                    <a href="./formulario.jsp">RESERVAS</a>
                    <a href="#contacto" class="scroll-suave">CONTACTO</a>
                </nav>
            </div>

            <!-- Versión escritorio -->
            <div class="menu-bar-pc">

                <a href="#" class="logo">
                    <img src="Resourses/Images/logo.jpg" style="border-radius:50%" alt="Royal Hunt">
                </a>

                <nav class="menu-principal">
                    <a href="#" class="volver-arriba">INICIO</a>
                    <a href="#proyectos" class="scroll-suave">SERVICIOS</a>
                    <a href="#acercaDe" class="scroll-acercaDe">ESPECIALIDADES</a>
                    <a href="#equipo" class="scroll-equipo">NUESTRO EQUIPO</a>
                    <a href="./formulario.jsp">RESERVAS</a>
                    <a href="#contacto" class="scroll-suave">CONTACTO</a>
                </nav>

                <div class="top-redes">
                    <a href="https://es-la.facebook.com/">
                        <i class="fa fa-facebook" aria-hidden="true"></i>
                    </a>
                    <a href="https://twitter.com/tweeter?lang=es">
                        <i class="fa fa-twitter" aria-hidden="true"></i>
                    </a>
                    <a href="https://www.instagram.com/?hl=es">
                        <i class="fa fa-instagram" aria-hidden="true"></i>
                    </a>
                </div>

            </div>
        </header>

        <div class="fixed-header" id="fixedHeader">
            <a href="#"  class="logo">
                <img src="Resourses/Images/logo.jpg" style="border-radius:50%" alt="Royal Hunt">
            </a>
            <nav class="menu-principal">
                <a href="#" class="volver-arriba">INICIO</a>
                <a href="#proyectos" class="scroll-suave">SERVICIOS</a>
                <a href="#acercaDe" class="scroll-acercaDe">ESPECIALIDADES</a>
                <a href="#equipo" class="scroll-equipo">NUESTRO EQUIPO</a>
                <a href="./formulario.jsp">RESERVAS</a>
                <a href="#contacto" class="scroll-suave">CONTACTO</a>
            </nav>
            <div class="top-redes">
                <a href="https://es-la.facebook.com/">
                    <i class="fa fa-facebook" aria-hidden="true"></i>
                </a>
                <a href="https://twitter.com/tweeter?lang=es">
                    <i class="fa fa-twitter" aria-hidden="true"></i>
                </a>
                <a href="https://www.instagram.com/?hl=es">
                    <i class="fa fa-instagram" aria-hidden="true"></i>
                </a>
            </div>
        </div>

        <!-- Main -->
        <section class="main">
            <!-- Banner Principal -->
            <section class="banner-principal">
                <div class="banner" id="banner"></div>
                <div class="texto-banner">
                    <h2>Siempre Innovando</h2>
                    <h1>Design Studio</h1>
                    <a href="#proyectos" class="scroll-suave">VER PROYECTOS</a>
                </div>
            </section>

            <!-- Proyectos -->
            <section class="proyectos" id="proyectos">
                <div class="contenedor">
                    <div class="titulo-seccion">
                        <h2>Espectaculos y deportes pensados para nuestros clientes</h2>
                        <p>Somos especialistas en entregar los mejores momentos y la mejor diversión</p>
                    </div>
                    <div class="galeria-proyectos">
                        <div class="proyecto">
                            <img src="Resourses/Images/1-Golf.jpg" alt="Golf" class="imagen-proyecto">
                        </div>
                        <div class="proyecto">
                            <img src="Resourses/Images/2-Natacion.jpg" alt="Natacion" class="imagen-proyecto">
                        </div>
                        <div class="proyecto">
                            <img src="Resourses/Images/3-Rugby.jpg" alt="Rugby" class="imagen-proyecto">
                        </div>
                        <div class="proyecto">
                            <img src="Resourses/Images/4-Polo.jpg" alt="Polo" class="imagen-proyecto">
                        </div>
                        <div class="proyecto">
                            <img src="Resourses/Images/5-Baile.jpg" alt="Baile" class="imagen-proyecto">
                        </div>
                        <div class="proyecto">
                            <img src="Resourses/Images/6-Deporte4x4.jpg" alt="Deporte4x4" class="imagen-proyecto">
                        </div>
                    </div>
                </div>
            </section>

            <!-- Acerca de -->
            <section class="acerca-de" id="acercaDe">
                <div class="contenedor">
                    <div class="titulo-seccion">
                        <h2>Especialidades</h2>
                        <p>Conoce más sobre nosotros, lo que hacemos y cómo lo hacemos</p>
                    </div>
                    <div class="texto-acerca-de">
                        <p>Atracciones para visitar con toda la familia y amigos
                        • Catedral de León
                        
                        • Estadio León
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

            <!-- Slider -->
            <section class="contenedor-slider">
                <div class="slider" id="slider">
                    <div class="slide">
                        <img src="Resourses/Images/slide1.jpg" alt="Slide">
                    </div>
                    <div class="slide">
                        <img src="Resourses/Images/slide2.jpg" alt="Slide">
                    </div>
                    <div class="slide">
                        <img src="Resourses/Images/slide3.jpeg" alt="Slide">
                    </div>
                    <div class="slide">
                        <img src="Resourses/Images/slide4.jpg" alt="Slide">
                    </div>
                </div>
                <div class="btn-anterior" id="btnAnterior">
                    <i class="fa fa-arrow-left" aria-hidden="true"></i>
                </div>
                <div class="btn-siguiente" id="btnSiguiente">
                    <i class="fa fa-arrow-right" aria-hidden="true"></i>
                </div>
            </section>

            <!-- Nuestro equipo -->
            <section class="nuestro-equipo" id="equipo">
                <div class="contenedor">
                    <div class="titulo-seccion">
                        <h2>Nuestro equipo</h2>
                        <p>Personas expertas y apasionadas por lo que hacen</p>
                    </div>
                    <div class="equipo">
                        <div class="persona-equipo">
                            <div class="foto">
                                <img src="Resourses/Images/foto1.jpg" alt="Persona">
                            </div>
                            <div class="texto">
                                <h3>Raúl Gonzalez</h3>
                                <h4>Conserje Real</h4>
                                <p>25 años dando atencion, calidad y asesoria a nuestros clientes</p>
                            </div>
                        </div>

                        <div class="persona-equipo">
                            <div class="foto">
                                <img src="Resourses/Images/foto2.jpg" alt="Persona">
                            </div>
                            <div class="texto">
                                <h3>Laura Lentini</h3>
                                <h4>Administradora de servicio</h4>
                                <p>Gracias a sus destrezas y habilidades, el hotel funciona las 24 horas a plena capacidad</p>
                            </div>
                        </div>

                        <div class="persona-equipo">
                            <div class="foto">
                                <img src="Resourses/Images/foto3.jpg" alt="Persona">
                            </div>
                            <div class="texto">
                                <h3>De María Castro</h3>
                                <h4>Chef Profesional</h4>
                                <p>Aporta su experiencia y conocimiento se sirven las mas ricas y sabrosas comidas</p>
                            </div>
                        </div>

                    </div>
                </div>
            </section>

            <!-- Seccion Información extra -->
            <section class="info-extra">
                <div class="contenedor">
                    <div class="info">

                        <div class="contenido-info">
                            <div class="icono-info">
                                <i class="fa fa-paint-brush" aria-hidden="true"></i>
                            </div>
                            <div class="texto-info">
                                <h4>Imaginamos y diseñamos</h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium, assumenda.</p>
                            </div>
                        </div>

                        <div class="contenido-info">
                            <div class="icono-info">
                                <i class="fa fa-desktop" aria-hidden="true"></i>
                            </div>
                            <div class="texto-info">
                                <h4>Creamos</h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium, assumenda.</p>
                            </div>
                        </div>

                    </div>
                    <div class="foto">
                    </div>
                </div>
            </section>

            <!-- Contacto -->
            <div class="contacto" id="contacto" data-parallax="scroll" data-image-src="img/bg-contacto.jpg">
                <div class="contenedor">
                    <div class="contenedor-formulario">
                        <div class="formulario" id="formulario">
                            <h2>Cuéntanos sobre tu proyecto</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia, fugit.</p>
                            <form>
                                <div>
                                    <input type="text" name="nombre" placeholder="Nombre" id="nombre">
                                    <p class="error">Por favor escribe tu nombre</p>
                                </div>
                                <div>
                                    <input type="email" name="email" placeholder="Correo electrónico" id="email">
                                    <p class="error">Por favor escribe tu correo</p>
                                </div>
                                <div>
                                    <textarea name="mensaje" placeholder="Cuéntanos de tu proyecto" id="mensaje"></textarea>
                                    <p class="error">Por favor escribe tu mensaje</p>
                                </div>
                                <div>
                                    <input type="submit" name="enviar" value="Enviar">
                                </div>
                            </form>
                        </div>

                        <div class="foto">

                        </div>
                    </div>
                </div>
            </div>

        </section>

        <!-- Pie de página -->
        <footer>
            <div class="copy">
                <p>Todos los derechos reservados</p>
            </div>
            <div class="footer-redes">
                <a href="#">
                    <i class="fa fa-facebook" aria-hidden="true"></i>
                </a>
                <a href="#">
                    <i class="fa fa-twitter" aria-hidden="true"></i>
                </a>
                <a href="#">
                    <i class="fa fa-instagram" aria-hidden="true"></i>
                </a>
            </div>
        </footer>

        <script src="Resourses/JS/jquery.min.js"></script>
        <!-- <script src="js/banner.js"></script> -->
        <script src="Resourses/JS/stickyHeader.js"></script>
        <script src="Resourses/JS/scrollSuave.js"></script>
        <script src="Resourses/JS/modal.js"></script>
        <script src="Resourses/JS/slider.js"></script>
        <!-- <script src="js/bgParallax.js"></script> -->
        <script src="Resourses/JS/validacion.js"></script>
        <script src="Resourses/JS/menuMobile.js"></script>


        <script src="Resourses/JS/parallax.min.js"></script>
        <!-- Buscar:
        t(e).on("ready.px.parallax.data-api",function(){t('[data-parallax="scroll"]').parallax()})}
    
        Reemplazar por:
        t(function(){t('[data-parallax="scroll"]').parallax()})} -->
        <script src="Resourses/JS/prefixfree.min.js"></script>

    </body>
</html>

