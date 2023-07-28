<?php

function conectar_db(){
    $db = mysqli_connect('localhost', 'root', '', 'cartas_bajoterra');

    if(!$db){
        'No hay conexion de la base de datos';
        exit;
    }
    return $db;
}