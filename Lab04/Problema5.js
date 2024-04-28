function inverso(num) {
    // Convertir el numero a string
    let strNum = num.toString();
    // Dividir el string en un areglo, voltearlo y juntarlo de nuevo
    let numInvertido = strNum.split('').reverse().join('');
    return numInvertido;
}

function alReves() {
    let num = document.getElementById('numero').value;

    if (num === '') {
        document.getElementById('resultado5').textContent = 'Por favor, introduce un número válido.';
        return;
    }
    
    let resultado = inverso(num);
    document.getElementById('resultado5').textContent = 'Número invertido: ' + resultado;
}
