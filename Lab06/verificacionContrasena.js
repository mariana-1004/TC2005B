document.getElementById('submitButton').addEventListener('click', function(event) {
    event.preventDefault();
    let password = document.getElementById('password').value;
    let confirmPassword = document.getElementById('confirmPassword').value;
  
    if (password === "" || confirmPassword === "") {
      alert("Los campos de contraseña no pueden estar vacíos.");
      return;
    }
  
    if (password !== confirmPassword) {
      alert("Las contraseñas no coinciden.");
      return;
    }
  
    alert("Contraseña válida. Formulario enviado.");
    // Aquí puedes proceder con el envío del formulario si es necesario
  });
  