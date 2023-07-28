<?php
require '../funciones/Conexion.php';
$db = conectar_db();
$sql = "SELECT Nombre_Usuario FROM usuario";
$resultado =mysqli_query($db,$sql);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Usuarios</title>
    <link rel="stylesheet" href="../estilos/Usuarios_estilos.css">
</head>
<header>
    <h2>Usuario Registrados</h2>
</header>
<body>
    <div class="caja1">
        <div class="usuario1">
            <img src="img\usuario1.png" alt="">
        </div>

    
    </div>
    
</body>
</html>