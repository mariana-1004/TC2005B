function calcularTotal() {
    let precio1 = 3890;
    let precio2 = 2229;
    let precio3 = 8549;

    let descuento1 = 0.10;
    let descuento2 = 0.20;
    let descuento3 = 0.15;

    let cantidad1 = parseInt(document.getElementById('cantidad1').value) || 0;
    let cantidad2 = parseInt(document.getElementById('cantidad2').value) || 0;
    let cantidad3 = parseInt(document.getElementById('cantidad3').value) || 0;

    let total1 = cantidad1 * precio1 * (1 - descuento1);
    let total2 = cantidad2 * precio2 * (1 - descuento2);
    let total3 = cantidad3 * precio3 * (1 - descuento3);

    let total = total1 + total2 + total3;
    let iva = total * 0.16;
    let totalFinal = total + iva;

    document.getElementById('total').innerText = `Total: $${total.toFixed(2)}`;
    document.getElementById('iva').innerText = `IVA (16%): $${iva.toFixed(2)}`;
    document.getElementById('totalFinal').innerText = `Total Final: $${totalFinal.toFixed(2)}`;
}

document.addEventListener('DOMContentLoaded', calcularTotal);


//Para que funcionen los msgs
function showHelp(element, message) {
    const helpBox = document.getElementById('helpBox');
    helpBox.innerText = message;
    helpBox.style.display = 'block';
    helpBox.style.top = `${element.getBoundingClientRect().top + window.scrollY + element.offsetHeight + 5}px`;
    helpBox.style.left = `${element.getBoundingClientRect().left + window.scrollX}px`;
}

function hideHelp() {
    const helpBox = document.getElementById('helpBox');
    helpBox.style.display = 'none';
}
