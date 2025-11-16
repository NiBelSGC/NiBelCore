<?php
// -----------------------------------------------------------------------------
// NiBel Core (Framework) - Clase Router
// -----------------------------------------------------------------------------
// Se encarga de:
// - Registrar las rutas GET y POST.
// - Detectar la URL actual solicitada.
// - Proteger rutas privadas mediante sesión.
// - Llamar al controlador o vista correspondiente.
// - Renderizar vistas con distintos layouts (Login, Principal, Interior).
// -----------------------------------------------------------------------------

class Router
{
    // -------------------------------------------------------------------------
    // Propiedades
    // -------------------------------------------------------------------------
    public $rutasGET = [];   // Almacena rutas accesibles por método GET
    public $rutasPOST = [];  // Almacena rutas accesibles por método POST

    // -------------------------------------------------------------------------
    // Registro de rutas
    // -------------------------------------------------------------------------

    // Registra una ruta GET
    public function get($url, $fn)
    {
        // Normaliza la ruta quitando el slash final (ej: /login/ → /login)
        $url = rtrim($url, '/');
        if ($url === '') $url = '/';
        $this->rutasGET[$url] = $fn;
    }

    // Registra una ruta POST
    public function post($url, $fn)
    {
        $url = rtrim($url, '/');
        if ($url === '') $url = '/';
        $this->rutasPOST[$url] = $fn;
    }

    // -------------------------------------------------------------------------
    // Verificación y ejecución de rutas
    // -------------------------------------------------------------------------
    public function comprobarRutas()
    {
        // Inicia la sesión (requerida para validar autenticación)
        session_start();

        // Crea una instancia del objeto Request
        $request = new Request();

        $auth = $_SESSION['login'] ?? null;

        // Rutas públicas (no requieren login)
        $rutas_publicas = ['/', '/inicio', '/docs', '/login', '/olvide', '/reestablecer'];

        // Obtiene la URL y el método desde el objeto Request
        $urlActual = $request->url();
        $metodo = $request->method();

        // Busca la función registrada según el método
        if ($metodo === 'GET') {
            $fn = $this->rutasGET[$urlActual] ?? null;
        } else {
            // Para peticiones POST, validar el token CSRF antes de continuar
            Csrf::validarToken($request->post('csrf_token'));
            $fn = $this->rutasPOST[$urlActual] ?? null;
        }

        // ---------------------------------------------------------------------
        // Protección de rutas privadas
        // ---------------------------------------------------------------------
        if (!in_array($urlActual, $rutas_publicas) && !$auth) {
            header('Location: login');
            exit;
        }

        // ---------------------------------------------------------------------
        // Ejecución de la ruta encontrada o manejo de error 404
        // ---------------------------------------------------------------------
        if ($fn) {
            // Ejecuta el callback, pasando el Router y el Request
            call_user_func($fn, $this, $request);
        } else {
            // Si no existe la ruta, devuelve error 404
            http_response_code(404);
            $errorPage = __DIR__ . '/public/404.html';

            if (file_exists($errorPage)) {
                // Muestra la página 404 personalizada si existe
                readfile($errorPage);
            } else {
                // Fallback simple si no hay plantilla 404
                echo "<h1>404 - Página no encontrada</h1>";
            }
        }
    }

    // -------------------------------------------------------------------------
    // Métodos de renderizado de vistas con diferentes layouts
    // -------------------------------------------------------------------------

    // Layout para vistas de autenticación (login, recuperación, etc.)
    public function render($view, $datos = [])
    {
        foreach ($datos as $key => $value) {
            $$key = $value; // Convierte el array en variables individuales
        }

        ob_start(); // Inicia buffer de salida
        include __DIR__ . "/app/views/$view.php"; // Carga la vista solicitada
        $contenido = ob_get_clean(); // Captura el contenido renderizado

        include __DIR__ . "/app/views/layout.php"; // Inserta en layout base
    }
}
