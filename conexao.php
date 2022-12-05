<?php

    $servidor = "localhost";
    $usuario = "root";
    $senha = "";
    $banco = "db_PWII";

    $cn = new PDO("mysql:host=$servidor;dbname=$banco", $usuario, $senha);
    $cn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
?>