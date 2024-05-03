//Una función que reciba un string y escriba el string en un archivo de texto. Apóyate del módulo fs.

let readline = require('readline');
//fs es el módulo que contiene las funciones para 
//manipular el sistema de archivos
const filesystem = require('fs');


let rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});


rl.question('Ingrese texto: \n ', (input) => {
    let texto = input;  
    //Se escribe el segundo parámetro en el archivo del primer parámetro
    filesystem.writeFileSync('textoo.txt',texto );
    console.log(`El texto ingresado se ingreso en un nuevo documento llamado textoo.txt`);
    rl.close();
});


