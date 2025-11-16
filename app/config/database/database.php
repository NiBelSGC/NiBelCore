<?php
/**
 * ───────────────────────────────────────────────
 * 🗄️  NiBel Core - database.php (versión PDO)
 * ───────────────────────────────────────────────
 * Este archivo establece una conexión a la base de datos MySQL
 * utilizando la extensión PDO (PHP Data Objects).
 *
 * PDO proporciona una capa de abstracción que permite cambiar
 * de motor de base de datos con mínimas modificaciones en el código.
 *
 * © NiBel Core Framework | Desarrollado por Weimar — 2025
 * ───────────────────────────────────────────────
 */

define('DB_DRIVER', $_ENV['DB_DRIVER'] ?? 'mysql'); // 'mysql', 'pgsql', 'sqlite', etc.
define('DB_HOST', $_ENV['DB_HOST']);
define('DB_NAME', $_ENV['DB_NAME']);
define('DB_USER', $_ENV['DB_USER']);
define('DB_PASS', $_ENV['DB_PASS']);

/**
 * 🧩 FUNCIÓN: conectarDB()
 * ------------------------------------------------
 * Crea y retorna una conexión activa PDO.
 * Si la conexión falla, detiene la ejecución mostrando un
 * mensaje controlado.
 *
 * @return PDO Objeto de conexión activo.
 */
function conectarDB(): PDO
{
    // Construir el DSN (Data Source Name) dinámicamente según el driver
    $dsn = '';
    switch (DB_DRIVER) {
        case 'mysql':
            $dsn = "mysql:host=" . DB_HOST . ";dbname=" . DB_NAME . ";charset=utf8mb4";
            break;
        case 'pgsql':
            $dsn = "pgsql:host=" . DB_HOST . ";dbname=" . DB_NAME;
            break;
        case 'sqlite':
            // Para SQLite, DB_NAME debería contener la ruta completa al archivo de la base de datos.
            $dsn = "sqlite:" . DB_NAME;
            break;
        case 'sqlsrv':
            // Para SQL Server, DB_HOST puede incluir el puerto si es necesario (ej: 'localhost,1433')
            $dsn = "sqlsrv:Server=" . DB_HOST . ";Database=" . DB_NAME;
            break;
        case 'oci':
            // Para Oracle, el DSN puede variar. Un formato común es: //host:port/service_name
            $dsn = "oci:dbname=//" . DB_HOST . "/" . DB_NAME;
            break;
        default:
            die("❌ Driver de base de datos no soportado: " . DB_DRIVER);
    }

    // Opciones para la conexión PDO
    $options = [
        PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION, // Lanzar excepciones en errores
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,       // Devolver resultados como array asociativo
        PDO::ATTR_EMULATE_PREPARES   => false,                  // Usar preparaciones de sentencias nativas
    ];

    try {
        // Crear la instancia de PDO
        // Para SQLite, el usuario y la contraseña no son necesarios.
        if (DB_DRIVER === 'sqlite') {
            $pdo = new PDO($dsn, null, null, $options);
        } else {
            $pdo = new PDO($dsn, DB_USER, DB_PASS, $options);
        }

        return $pdo;
    } catch (PDOException $e) {
        // En un entorno de producción, sería mejor registrar el error
        // en lugar de mostrarlo directamente al usuario.
        die("❌ Error al conectar con la base de datos: " . $e->getMessage());
    }
}
