<?php
require '../funciones/Conexion.php';
$db = conectar_db();
$sql = "SELECT id, Nombre_carta, Defensa, Ataque, Poder, imagen_carta FROM cartas";
$resultado =mysqli_query($db,$sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cartas</title>
    <link rel="stylesheet" href="../estilos/Cartas_estilos.css">
</head>
<header>
    <h2>Seleccionar Cartas</h2>
    <li><a href="../index.php">Volver al Inicio</a></li>
</header>

<body>
    <table>
        <thead>
            <tr>
                <th>Id</th>
                <th>Nombre Carta</th>
                <th>Defensa</th>
                <th>Ataque</th>
                <th>Poder</th>
                <th>Imagen</th>
          
            </tr>
        </thead>
        <tbody>
            <?php while ($fila=mysqli_fetch_array($resultado)) { ?>
            <tr>
                <td><?php echo $fila['id']; ?></td>
                <td><?php echo $fila['Nombre_carta']; ?></td>
                <td><?php echo $fila['Defensa']; ?></td>
                <td><?php echo $fila['Ataque']; ?></td>
                <td><?php echo $fila['Poder']; ?></td>
                <td><img src=" <?php echo substr($fila['imagen_carta'],1) ?>"  width="120" alt="" srcset=""></td>

        
            </tr>
            <?php }?>
        </tbody>
    </table>

    
</body>
</html>