<?php
// -----------------------------------------------------------------------------
// NiBel Core (Framework) - Carga de archivos base
// -----------------------------------------------------------------------------

// 1️⃣ funciones.php → Contiene funciones globales reutilizables en todo el proyecto.
//    Ejemplo: formatear fechas, debuguear, etc.
require __DIR__ . '/../app/config/funciones.php';

// 🆕 Carga de la clase de protección CSRF
require __DIR__ . '/../app/config/Csrf.php';

// 🆕 Carga de la clase Request para encapsular la petición
require __DIR__ . '/../app/config/Request.php';

// 2️⃣ Router.php → Clase principal que gestiona las rutas del sistema.
//    Se encarga de recibir las URL y ejecutar el controlador y método correspondientes.
require __DIR__ . '/../Router.php';

// 3️⃣ bootstrap.php → Configura el entorno base del proyecto.
//    - Define el autoload de clases (App\...)
//    - Crea la conexión a la base de datos
//    - Establece constantes globales y carga inicial del entorno.
require_once __DIR__ . '/../app/config/bootstrap.php';

// -----------------------------------------------------------------------------
// Carga automática de controladores
// -----------------------------------------------------------------------------
// Recorre la carpeta 'controllers' y carga todos los archivos PHP dentro de ella,
// para que las clases de controladores estén disponibles sin necesidad de incluirlas manualmente.
foreach (glob(__DIR__ . '/../app/controllers/*.php') as $file) {
    require $file;
}

// -----------------------------------------------------------------------------
// Inicialización del enrutador principal
// -----------------------------------------------------------------------------
$router = new ROUTER();

// -----------------------------------------------------------------------------
// Carga automática de rutas
// -----------------------------------------------------------------------------
// Recorre la carpeta 'routes' y carga todos los archivos PHP que definen las rutas del sistema,
// registrando las rutas GET y POST en el enrutador.
foreach (glob(__DIR__ . '/../app/routes/*.php') as $routeFile) {
    require $routeFile;
}

// -----------------------------------------------------------------------------
// Ejecución del enrutador
// -----------------------------------------------------------------------------
// Compara la URL actual con las rutas registradas y ejecuta el controlador correspondiente.
$router->comprobarRutas();


