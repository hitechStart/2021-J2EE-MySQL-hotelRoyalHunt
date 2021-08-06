$(document).ready(function () {
    
    $("#trBtn").click(function () {
        
        document.getElementById("tCap").style.display = "none";
        document.getElementById("capa").style.display = "none";
        document.getElementById("otraCapa").style.display = "none";
        document.getElementById("otraCap").style.display = "none";
        document.getElementById("otrCap").style.display = "none";
        document.getElementById("trCap").style.display = "block";
        $("#trCap").load('./imprimirRangoFecha.jsp');
    });
});
