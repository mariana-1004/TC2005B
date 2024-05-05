const http = require('http');
const path = require('path');
const fs   = require('fs');

const server = http.createServer( (request, response) => {    
    console.log(request.url);
    
    switch(request.url){
        case "/form_method":
            if(request.method == "GET"){
                response.setHeader('Content-Type', 'text/html');
                const html = fs.readFileSync(path.resolve(__dirname, './form.html'), 'utf8')
                response.write(html);
                response.end();  
            }else if(request.method == "POST"){
                let body = [];
                request
                .on('data', chunk => {
                    body.push(chunk);
                })
                .on('end', () => {
                    body = Buffer.concat(body).toString();

                    const datos = new URLSearchParams(body);
                    const username= datos.get('username');
                    const password= datos.get('password');

                    let msgUsuario = `Usuario: ${username} \n`;
                    let msgContraseña=`Contraseña: ${password}`;

                    fs.writeFileSync('textoo.txt', msgUsuario + msgContraseña );
                    console.log(`El texto ingresado se ingreso en un nuevo documento llamado textoo.txt`);

                    response.setHeader('Content-Type', 'application/json');
                    response.statusCode = 200;
                    response.write('{code:200, msg:"Ok POST"}');
                    response.end();
                }); 
            }
        break;
        
        case "/menuPrincipal":
            if(request.method == "GET"){
                response.setHeader('Content-Type', 'text/html');
                const html = fs.readFileSync(path.resolve(__dirname, './menuPrincipal.html'), 'utf8')
                response.write(html);
                response.end();  
            }else if(request.method == "POST"){
            }
        
        break;

        case "/informacion":
            if(request.method == "GET"){
                response.setHeader('Content-Type', 'text/html');
                const html = fs.readFileSync(path.resolve(__dirname, './informacion.html'), 'utf8')
                response.write(html);
                response.end();  
            }else if(request.method == "POST"){
            }
        
        break;           
    default:
        response.statusCode = 404;
        response.end();
        break;
    }
});
server.listen(3000);