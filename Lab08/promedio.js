const readline = require('readline');

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

rl.question('ingrese el arreglo de numeros', (input) => {
    let numbers = input.split(' ').map(Number);  // Convierte la cadena de entrada en un arreglo de números
    let average = calculateAverage(numbers);
    console.log(`El promedio es: ${average}`);
    rl.close();
});

function calculateAverage(numbers) {
    if (numbers.length === 0) return 0;  // Verifica si el arreglo está vacío para evitar división por cero

    let sum = 0;  // Inicializa la suma en cero
    for (let i = 0; i < numbers.length; i++) {
        sum += numbers[i];  // Suma cada número al acumulador sum
    }
    return sum / numbers.length;  // Calcula el promedio dividiendo la suma por el número de elementos
}