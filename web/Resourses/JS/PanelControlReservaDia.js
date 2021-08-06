$(document).ready(function () {
    
    $("#otroBtn").click(function () {
        
        document.getElementById("tCap").style.display  = "none";
        document.getElementById("otrCap").style.display  = "none";
        document.getElementById("capa").style.display  = "none";
        document.getElementById("otraCapa").style.display  = "none";
        document.getElementById("trCap").style.display  = "none";
        document.getElementById("otraCap").style.display  = "block";
        $("#otraCap").load('./imprimirReservaDia.jsp');
    });
})
