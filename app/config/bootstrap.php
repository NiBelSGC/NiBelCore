<?php
// -----------------------------------------------------------------------------
// NiBel Core (Framework) - Bootstrap del sistema
// -----------------------------------------------------------------------------
// Este archivo se ejecuta al inicio del proyecto y se encarga de:
// - Cargar las dependencias instaladas con Composer.
// - Cargar variables del entorno (.env) para credenciales y configuraciones.
// - Establecer la conexión global con la base de datos.
// - Asignar dicha conexión a la clase base de los modelos (Master),
//   permitiendo que todas las clases del namespace Model accedan a la BD
//   sin necesidad de reconectarse manualmente.
// -----------------------------------------------------------------------------


// -----------------------------------------------------------------------------
// 1. Carga automática de clases mediante Composer (autoload)
// -----------------------------------------------------------------------------
// Esto permite usar namespaces (Model\...) sin necesidad de hacer require manuales.
// El autoloader busca las clases en las rutas definidas en composer.json.
require_once dirname(__DIR__, 2) . '/vendor/autoload.php';


// -----------------------------------------------------------------------------
// 🌱 Carga de variables de entorno (.env)
// -----------------------------------------------------------------------------
// Dotenv lee las variables definidas en el archivo ".env" ubicado en
// app/config/.env y las asigna a los arrays globales $_ENV y $_SERVER.
// Ejemplo del archivo .env:
//
// DB_HOST=localhost
// DB_USER=root
// DB_PASS=
// DB_NAME=nibelcore
//
// Estas variables permiten mantener las credenciales fuera del código fuente,
// mejorando la seguridad y portabilidad del sistema entre entornos (dev/prod).
$dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
$dotenv->safeLoad();


// -----------------------------------------------------------------------------
// 2. Carga el archivo de conexión a base de datos
// -----------------------------------------------------------------------------
require_once __DIR__ . '/database/database.php';


// -----------------------------------------------------------------------------
// 3. Conexión global a la base de datos
// -----------------------------------------------------------------------------
$db = conectarDB();


// -----------------------------------------------------------------------------
// 4. Asigna la conexión a la clase base "Master"
// -----------------------------------------------------------------------------
// La clase Master actúa como clase padre de todos los modelos (App\*).
// Al ejecutar setDB($db), todos los modelos heredan la misma conexión global,
// manteniendo consistencia y evitando múltiples conexiones simultáneas.
if (class_exists('\Model\Master')) {
    \Model\Master::setDB($db);
}
