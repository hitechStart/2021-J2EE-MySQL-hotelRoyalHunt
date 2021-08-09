<!-- Encabezado -->
<header>
    <!-- Versión móvil -->
    <div class="menu-mobile">
        <div class="barra">
            <a href="#" class="logo">
                <img src="Resourses/Images/logo.jpg" style="border-radius: 50%" alt="Royal Hunt">
            </a>
            <a href="#" id="btnMenu">
                <i class="fa fa-bars" aria-hidden="true"></i>
            </a>
        </div>
        <nav class="menu-principal">
            <a href="./principal.jsp" class="volver-arriba">INICIO</a>
            <a href="#proyectos" class="scroll-suave">ENTRETENIMIENTO</a>
            <a href="#acercaDe" class="scroll-acercaDe">SERVICIOS</a>
            <a href="#equipo" class="scroll-equipo">NUESTRO EQUIPO</a>
            <a href="./formulario.jsp">RESERVAS</a>
            <a href="#contacto" class="scroll-suave">SUSCRIPCION</a>
            <a href="./PanelControl.jsp">PANEL DE CONTROL</a>
            <a>
                <form action="SvCerrarSesion" method="POST">
                    <button type="submit" id="cerrarSesion"> 
                        <%=session.getAttribute("usuario")%><i class="fas fa-power-off"></i>
                    </button>
                </form>
            </a>
        </nav>
    </div>

    <!-- Versión escritorio -->
    <div class="menu-bar-pc">

        <a href="#" class="logo">
            <img src="Resourses/Images/logo.jpg" style="border-radius:50%" alt="Royal Hunt">
        </a>

        <nav class="menu-principal">
            <a href="./principal.jsp" class="volver-arriba">INICIO</a>
            <a href="#proyectos" class="scroll-suave">ENTRETENIMIENTO</a>
            <a href="#acercaDe" class="scroll-acercaDe">SERVICIOS</a>
            <a href="#equipo" class="scroll-equipo">NUESTRO EQUIPO</a>
            <a href="#contacto" class="scroll-suave">SUSCRIPCION</a>
            <a href="./formulario.jsp">RESERVAS</a>
            <a href="./PanelControl.jsp">PANEL DE CONTROL</a>
            <a>
                <form action="SvCerrarSesion" method="POST">
                    <button type="submit" id="cerrarSesion"> 
                        <%=session.getAttribute("usuario")%><i class="fas fa-power-off"></i>
                    </button>
                </form>
            </a>
        </nav>
    </div>
</header>
<!--Barra de accesibilidad pegasoza-->
<div class="fixed-header" id="fixedHeader">
    <a href="#"  class="logo">
        <img src="Resourses/Images/logo.jpg" style="border-radius:50%" alt="Royal Hunt">
    </a>
    <nav class="menu-principal">
        <a href="./principal.jsp" class="volver-arriba">INICIO</a>
        <a href="#proyectos" class="scroll-suave">ENTRETENIMIENTO</a>
        <a href=./principal.jsp?id=#acercaDe" class="scroll-acercaDe">SERVICIOS</a>
        <a href="#equipo" class="scroll-equipo">NUESTRO EQUIPO</a>
        <a href="#contacto" class="scroll-suave">SUSCRIPCION</a>
        <a href="./formulario.jsp">RESERVAS</a>
        <a href="./PanelControl.jsp">PANEL DE CONTROL</a>
        <a>
            <form action="SvCerrarSesion" method="POST" >
                <button type="submit" id="cerrarSesion" style="color:black" > 
                    <%=session.getAttribute("usuario")%><i class="fas fa-power-off"></i>
                </button>
            </form>
        </a>
    </nav>  
</div>


