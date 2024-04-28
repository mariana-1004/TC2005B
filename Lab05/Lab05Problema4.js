function dimentions() {
    let filas = parseInt(prompt("Ingresa el número de filas"));
    let columnas = parseInt(prompt("Ingresa el número de columnas"));
    return { filas, columnas };
}

function definicionMatriz(filas, columnas) {
    let matriz = [];
    for (let i = 0; i < filas; i++) {
        let linea = [];
        for (let r = 0; r < columnas; r++) {
            let valor = parseInt(prompt(`Ingrese el valor para: [${i + 1}, ${r + 1}]:`)); 
            linea.push(valor); 
        }
        matriz.push(linea); 
    }
    return matriz;
}

function calcularPromedios(matriz) {
    let promedios = []; 
    for (let linea of matriz) {
        let suma = linea.reduce((acum, curr) => acum + curr, 0);
        let promedioLinea = suma / linea.length; 
        promedios.push(promedioLinea);
    }
    return promedios;
}

function final() {
    let dimensiones = dimentions();
    let matriz = definicionMatriz(dimensiones.filas, dimensiones.columnas);
    let promedios = calcularPromedios(matriz);
    document.getElementById("resultados").innerHTML = "Los promedios de cadarenglon son: " + promedios.join(" , ");
}


