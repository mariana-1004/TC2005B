//Escoge algún problema que hayas implementado en otro lenguaje de programación, 
//y dale una solución en js que se ejecute sobre node.

//Se utilizó el código de mi situación problema de primer semestre, donde realicé 
//una simulación de una tienda en linea, de manera muy básica

const readline = require('readline');


class UsuarioTienda {
    constructor(nombre, apellido, nick, contrasena) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.nick = nick;
        this.contrasena = contrasena || 'G4t1t0F3l1z';
    }

    validarContrasena(contrasena) {
        return this.contrasena === contrasena;
    }
}

class Item {
    constructor(id, nombre, precio, tiempoDelivery) {
        this.id = id;
        this.nombre = nombre;
        this.precio = precio;
        this.tiempoDelivery = tiempoDelivery;
    }
}

class MetodoPago {
    constructor(nombre, saldo, owner, sucursal) {
        this.nombre = nombre;
        this.saldo = saldo;
        this.owner = owner;
        this.sucursal = sucursal;
    }
}

class TiendaVirtual {
    constructor(usuario, items, metodosPago) {
        this.usuario = usuario;
        this.items = items;
        this.metodosPago = metodosPago;
    }

    login(rl, callback) {
        rl.question('Ingrese contraseña: ', (contrasena) => {
            if (this.usuario.validarContrasena(contrasena)) {
                console.log('Ingresado exitosamente');
                callback(true);
            } else {
                console.log('Contraseña incorrecta');
                this.login(rl, callback); 
            }
        });
    }

    seleccionarProducto(rl, callback) {
        console.log('Productos disponibles:');
        this.items.forEach((item) => {
            console.log(`${item.nombre} (${item.id}): $${item.precio}`);
        });

        rl.question('Elige un producto (Ingresa ID): ', (idProducto) => {
            const producto = this.items.find(item => item.id == idProducto);
            if (producto) {
                callback(producto);
            } else {
                console.log('ID de producto no válido');
                this.seleccionarProducto(rl, callback);
            }
        });
    }

    seleccionarMetodoPago(rl, callback) {
        console.log('Métodos de pago disponibles:');
        this.metodosPago.forEach((metodo) => {
            console.log(`${metodo.nombre}`);
        });

        rl.question('Elige un método de pago: ', (nombreMetodo) => {
            const metodo = this.metodosPago.find(metodo => metodo.nombre.toLowerCase() == nombreMetodo.toLowerCase());
            if (metodo) {
                callback(metodo);
            } else {
                console.log('Método de pago no válido');
                this.seleccionarMetodoPago(rl, callback);
            }
        });
    }

    comprar(producto, metodoPago) {
        if (metodoPago.nombre.toLowerCase() !== 'deposito' && metodoPago.saldo < producto.precio) {
            console.log('Saldo insuficiente');
        } else if (metodoPago.nombre.toLowerCase() === 'deposito') {
            console.log('Número de cuenta: 712757161274');
            console.log(`Monto a depositar: $${producto.precio}`);
        } else {
            console.log('Compra exitosa');
            console.log(`Llega en: ${producto.tiempoDelivery}`);
        }
    }
}

// Crear datos de prueba
const usuario = new UsuarioTienda('Mariana', 'Juarez', 'mariana-1004');
const items = [
    new Item(104, 'Microscopio', 3999.99, 'Dos días'),
    new Item(205, 'Telescopio', 5250.50, 'Seis días'),
    new Item(306, 'Rompecabezas', 2200.15, 'Una semana')
];
const metodosPago = [
    new MetodoPago('Tarjeta', 666.6, 'Mariana Juarez', 'American Express'),
    new MetodoPago('Efectivo', 66600.6, 'Mariana Juarez'),
    new MetodoPago('Deposito', 0, 'Mariana Juarez')
];
const tienda = new TiendaVirtual(usuario, items, metodosPago);

// Interfaz de línea de comandos
const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

tienda.login(rl, (logueado) => {
    if (logueado) {
        tienda.seleccionarProducto(rl, (producto) => {
            tienda.seleccionarMetodoPago(rl, (metodoPago) => {
                tienda.comprar(producto, metodoPago);
                rl.close();
            });
        });
    } else {
        rl.close();
    }
});
