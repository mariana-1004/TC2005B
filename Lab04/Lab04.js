
function exponenciales() {
    let number = prompt("Ingrese un numero: ");

    // Tabla
    document.write("<table border='1'><tr><td>Numero</td><td>Cuadrado</td><td>Cubo</td></tr>");

    for (let i = 1; i <= number; i++) {
        let square = i ** 2; 
        let cube = i ** 3; 
        document.write(`<tr><td>${i}</td><td>${square}</td><td>${cube}</td></tr>`);
    }

    // Cerrar la tabla
    document.write("</table>");
};
exponenciales();