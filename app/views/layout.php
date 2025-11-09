<?php

/**
 * ───────────────────────────────────────────────
 * 🧱 NiBel Core Framework - Layout principal
 * ───────────────────────────────────────────────
 * Plantilla base HTML usada en todas las vistas.
 * La variable `$contenido` se renderiza dinámicamente
 * desde el router.
 *
 * © NiBel Core Framework | Desarrollado por Weimar — 2025
 * ───────────────────────────────────────────────
 */
?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NiBel Core Framework</title>
    <!-- Estilos base -->
        <link rel="stylesheet" href="build/css/app.css">
    <!-- Tipografía moderna -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700&display=swap" rel="stylesheet">

    <!-- Iconos -->
    <link rel="icon" type="image/png" href="build/img/nibelcore_favicon.png">
</head>

<body>
    <!-- Header -->
    <header class="header">
        <div class="container">
            <div class="logo-area">
                <img src="build/img/logo.png" alt="NiBel Core Logo" class="logo">
                <h1 class="brand">NiBel Core <span>1.0</span></h1>
            </div>

            <!--<nav class="nav">
                <a href="/" class="nav-link active">Inicio</a>
                <a href="/docs" class="nav-link">Documentación</a>
                <a href="/api" class="nav-link">API</a>
                <a href="/acerca" class="nav-link">Acerca</a>
            </nav>-->
        </div>
    </header>

    <!-- Contenido dinámico -->
    <main class="main">
        <?php echo $contenido; ?>
    </main>

    <!-- Footer -->
    <footer class="footer">
        <p>© 2025 NiBel Core Framework — Desarrollado por NiBel Sistemas Gestión & Consultoría</p>
    </footer>
</body>

</html>