<?php
/**
 * ───────────────────────────────────────────────
 * 🗄️  NiBel Core - database.php (versión MySQLi)
 * ───────────────────────────────────────────────
 * Este archivo establece una conexión a la base de datos MySQL
 * utilizando la extensión MySQLi (estilo procedural).
 *
 * Ideal para proyectos centrados exclusivamente en MySQL.
 *
 * © NiBel Core Framework | Desarrollado por Weimar — 2025
 * ───────────────────────────────────────────────
 */

define('DB_HOST', $_ENV['DB_HOST']);
define('DB_NAME', $_ENV['DB_NAME']);
define('DB_USER', $_ENV['DB_USER']);
define('DB_PASS', $_ENV['DB_PASS']);

/**
 * 🧩 FUNCIÓN: conectarDB()
 * ------------------------------------------------
 * Crea y retorna una conexión activa MySQLi.
 * Si la conexión falla, detiene la ejecución mostrando un
 * mensaje controlado.
 *
 * @return mysqli Objeto de conexión activo.
 */
function conectarDB(): mysqli
{
    $conn = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME);

    $conn->set_charset('utf8');

    if (!$conn) {
        die("❌ Error al conectar con la base de datos: " . mysqli_connect_error());
    }

    // Establecer codificación UTF-8
    mysqli_set_charset($conn, "utf8mb4");

    return $conn;
}
