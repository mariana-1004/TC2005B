class CalcularPropina {
    constructor(totalCuenta, porcentajePropina) {
        this.totalCuenta = parseFloat(totalCuenta); // Asegurarse de convertir a número
        this.porcentajePropina = parseFloat(porcentajePropina); // Asegurarse de convertir a número
    }

    calcularPropina() {
        return this.totalCuenta * (this.porcentajePropina / 100);
    }

    calcularTotal() {
        return this.totalCuenta + this.calcularPropina();
    }
}

function calcularPago() {
    let totalCuenta = document.getElementById("cuenta").value;
    let porcentajePropina = document.getElementById("propina").value;

    let calculador = new CalcularPropina(totalCuenta, porcentajePropina);
    let propina = calculador.calcularPropina();
    let total = calculador.calcularTotal(); 

    //Backticks para mostrar los valores formateados
    document.getElementById("montoPropina").textContent = `Propina: $${propina.toFixed(2)}`;
    document.getElementById("totalPagar").textContent = `Total a pagar: $${total.toFixed(2)}`;
}
