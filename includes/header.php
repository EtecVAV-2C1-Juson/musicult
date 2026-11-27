<?php
include_once $_SERVER['DOCUMENT_ROOT'] . '/cafe-umbra/config/conexao.php';
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Musicult</title>
    <link rel="stylesheet" href="/musicult/assets/css/style.css">
</head>
<body>

<header class="header">
    <nav class="navbar">
        <a href="index.php" class="logo">Musicult</a>

        <div class="nav-links">
            <a href="index.php">Início</a>
            <a href="curso.php">Aulas</a>
            <a href="simulado.php">Simulado</a>
        </div>

        <button class="menu-toggle" id="menu-toggle" aria-label="Abrir menu" aria-expanded="false">
            <span></span>
            <span></span>
            <span></span>
        </button>
    </nav>

    <div class="mobile-menu" id="mobile-menu">
        <a href="index.php">Início</a>
        <a href="curso.php">Aulas</a>
        <a href="simulado.php">Simulado</a>
    </div>
</header>


<script src="/musicult/assets/js/script.js" defer></script>
