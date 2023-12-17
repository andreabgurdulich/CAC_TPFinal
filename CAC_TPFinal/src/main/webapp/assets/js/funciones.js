function borrar(){
    var nombre = document.getElementById("Nombre");
    nombre.value="";  
    
    var apellido = document.getElementById("Apellido");
    apellido.value=""; 

    var correo = document.getElementById("Correo");
    correo.value=""; 

    var categoria = document.getElementById("Categoria");
    categoria.value="selected";

    var cantidad = document.getElementById("Cantidad");
    cantidad.value="";

    var total = document.getElementById("Total");
    total.value="";
}

function resumen()
{
    var nombre = document.getElementById("Nombre");
    var apellido = document.getElementById("Apellido");
    var correo = document.getElementById("Correo");
    var cantidad = parseInt(document.getElementById("Cantidad").value)||0;
    var categoria = parseInt(document.getElementById("Categoria").value);
    var total = document.getElementById("Total");

    if(nombre===""||apellido===""||correo===""||cantidad===0||categoria===0)
    {
        total.value="Debe completar todos los campos";
    }
    else
    {
        if(cantidad<1||cantidad>10)
        {
            total.value="Cantidad debe estar entre 1 y 10"
        }
        else
        {
            var resumen=new Number();
            switch(categoria)
            {
                case 1: 
                resumen = cantidad*200*0.2;
                total.value="Total a pagar: $"+resumen;
                break;
            
                case 2: 
                resumen = cantidad*200*0.5;
                total.value="Total a pagar: $"+resumen;
                break;
    
                case 3: 
                resumen = cantidad*200*0.85;
                total.value="Total a pagar: $"+resumen;
                break;
            }
                
        }
    }    
    
}