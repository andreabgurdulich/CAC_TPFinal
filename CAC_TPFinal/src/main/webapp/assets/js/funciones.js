function alta()
{
    var nombre = document.getElementById("Nombre");
    var apellido = document.getElementById("Apellido");
    var mail = document.getElementById("Mail");
    var tema = document.getElementById("Tema");

    if("".equals(nombre)||"".equals(apellido)||"".equals(mail)||"".equals(tema))
    {
        document.getElementById('popup').style.display = 'block';
        document.getElementById('overlay').style.display = 'block';
    } 
    
}

function cerrarPopup() {
    // Ocultar el popup y el fondo oscuro
    document.getElementById('popup').style.display = 'none';
    document.getElementById('overlay').style.display = 'none';    
}