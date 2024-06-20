<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "contactos_db";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Obtener datos del formulario
$nombre = $_POST['nombre'];
$email = $_POST['email'];
$mensaje = $_POST['mensaje'];

// Insertar datos en la base de datos
$sql = "INSERT INTO mensajes (nombre, email, mensaje) VALUES ('$nombre', '$email', '$mensaje')";

if ($conn->query($sql) === TRUE) {
    // Redireccionar a index.html con estado de éxito
    header("Location: index.html?status=success");
    exit;
} else {
    // Redireccionar a index.html con estado de error
    header("Location: index.html?status=error");
    exit;
}

$conn->close();
?>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Formulario de Contacto</title>
</head>
<body>
    <h1>Formulario de Contacto</h1>
    
    <!-- Formulario de contacto -->
    <form id="contactForm" action="contacto.php" method="POST">
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre"><br>
        
        <label for="email">Email:</label>
        <input type="email" id="email" name="email"><br>
        
        <label for="mensaje">Mensaje:</label><br>
        <textarea id="mensaje" name="mensaje" rows="4" cols="50"></textarea><br>
        
        <input type="submit" value="Enviar mensaje">
    </form>

    <!-- Script para validar el formulario -->
    <script>
        document.getElementById('contactForm').addEventListener('submit', function(event) {
            var nombre = document.getElementById('nombre').value.trim();
            var email = document.getElementById('email').value.trim();
            var mensaje = document.getElementById('mensaje').value.trim();

            if (nombre === '' || email === '' || mensaje === '') {
                alert('Por favor, completa todos los campos del formulario.');
                event.preventDefault();
            }
        });
    </script>
</body>
</html>
