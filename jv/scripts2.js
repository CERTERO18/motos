document.getElementById('contactForm').addEventListener('submit', function(event) {
    var nombre = document.getElementById('nombre').value.trim();
    var email = document.getElementById('email').value.trim();
    var mensaje = document.getElementById('mensaje').value.trim();

    if (nombre === '' || email === '' || mensaje === '') {
        alert('Por favor, completa todos los campos del formulario.');
        event.preventDefault();
    }
});
