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
  response.status(404);
  response.send('¡Page Not Found!'); //Manda la respuesta
});

app.get('/', (request, response, next) => {
  response.setHeader('Content-Type', 'text/plain');
  response.send("URL index /");
});



const server = http.createServer( (request, response) => {    
    console.log(request.url);
});
app.listen(3000);