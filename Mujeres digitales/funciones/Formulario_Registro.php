<?php

require '../funciones/Conexion.php';
$db =conectar_db();
$errores=[];

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario Registro Jugadores</title>
    <link rel="stylesheet" href="../estilos/Formulario_estilos.css">
</head>
<header>
    <h2>Formulario de registro para jugador nuevo</h2>
    <li><a href="../index.php">Volver al Inicio</a></li>
</header>
<body>
<img src="../img/26d2b0af217554401cf554466365cf48e1993f39d399dc9e956c15e10d991167._UY500_UX667_RI_TTW_.jpg" alt="">


    <div class="encabezado">
        <span class="title">Registro Jugador</span>
        <form action="" method="POST">
            <div class="ingresar">
                <label for="Nombre Jugador"></label><br>
                <input type="text" id="Nombre_usuario" name="Nombre_Usuario" placeholder="Ejemplo:jugador1"><br>
            </div>
            <div class="button">
                <input type="submit" name="Enviar" value="Enviar datos">
            </div>
        </div>
    </form>

    <?php
    if ($_SERVER['REQUEST_METHOD'] == 'POST'){
        $Nombre_Usuario = $_POST['Nombre_Usuario'];
        if (!$Nombre_Usuario){
            $errores[]='Tienes que ingresar un nombre de jugador';
        }
        if (empty($errores)){
            $sql ="INSERT INTO usuario (Nombre_Usuario)
            VALUES ('$Nombre_Usuario');";
            $resultado =mysqli_query($db,$sql);
            if ($resultado) {
                header('location: ../../index.php');
            }
        }
    }
    if (empty($errores)) {
        foreach ($errores as $error) {
            echo "<p>$error</p>";
        }
    }
    ?>
</body>
</html>
