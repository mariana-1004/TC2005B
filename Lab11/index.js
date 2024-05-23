const http    = require('http');
const express = require('express');
const app     = express();

//Middleware
app.use((request, response, next) => {
  console.log('Middleware!');
  next(); //Le permite a la petición avanzar hacia el siguiente middleware
});
app.use((request, response, next) => {
  console.log('Otro middleware!');
  response.send('¡Hola mundo!'); //Manda la respuesta
});

const server = http.createServer( (request, response) => {    
    console.log(request.url);
});
app.listen(3000);