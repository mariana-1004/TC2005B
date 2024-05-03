//Una función que reciba un arreglo de números y devuelva su promedio.
let readline = require('readline');

let rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

rl.question('Ingrese el arreglo de numeros: \n ', (input) => {
    let num = input.split(' ').map(Number);  
    let average = promediar(num);
    console.log(`El promedio es: ${average}`);
    rl.close();
});

function promediar(num) {
    if (num.length === 0) return 0;  // Verifica si el arreglo está vacío para evitar división por cero

    let sum = 0;  // Inicializa la suma en cero
    for (let i = 0; i < num.length; i++) {
        sum += num[i];  // Suma cada número al acumulador sum
    }
    return sum / num.length; 
}