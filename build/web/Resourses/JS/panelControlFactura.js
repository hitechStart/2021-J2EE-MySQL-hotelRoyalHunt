$(document).ready(function () {

    $("#boton").click(function () {
       
        document.getElementById("otrCap").style.display  = "none";
        document.getElementById("otraCap").style.display  = "none";
        document.getElementById("otraCapa").style.display  = "none";
        document.getElementById("trCap").style.display  = "none";
        document.getElementById("capa").style.display  = "block";
        $("#capa").load('./imprimirFactura.jsp');

    });
});

   