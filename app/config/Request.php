<?php
/**
 * ───────────────────────────────────────────────
 * 📦 NiBel Core - Request.php
 * ───────────────────────────────────────────────
 * Encapsula la información de la petición HTTP entrante.
 *
 * Su objetivo es proporcionar una API limpia y segura para
 * acceder a los datos de $_GET, $_POST y $_SERVER, en lugar
 * de usar directamente estas superglobales.
 *
 * Esto mejora la seguridad al permitir el saneamiento
 * centralizado de datos y desacopla los controladores
 * de las variables globales de PHP.
 *
 * © NiBel Core Framework | Desarrollado por Weimar — 2025
 * ───────────────────────────────────────────────
 */

class Request
{
    private $get;
    private $post;
    private $server;

    public function __construct()
    {
        $this->get = $_GET;
        $this->post = $_POST;
        $this->server = $_SERVER;
    }

    /**
     * Obtiene el método de la petición (GET, POST, etc.).
     *
     * @return string
     */
    public function method(): string
    {
        return $this->server['REQUEST_METHOD'];
    }

    /**
     * Obtiene la URL de la petición.
     *
     * @return string
     */
    public function url(): string
    {
        $url = $this->server['PATH_INFO']
            ?? parse_url($this->server['REQUEST_URI'], PHP_URL_PATH);

        $scriptName = str_replace('\\', '/', dirname($this->server['SCRIPT_NAME']));
        if ($scriptName !== '/' && str_starts_with($url, $scriptName)) {
            $url = substr($url, strlen($scriptName));
        }

        $url = rtrim($url, '/');
        return ($url === '') ? '/' : $url;
    }

    /**
     * Obtiene un valor del array POST saneado.
     *
     * @param string $key La clave a buscar.
     * @param mixed $default Valor por defecto si la clave no existe.
     * @param int $filter Filtro de saneamiento de PHP (ej: FILTER_SANITIZE_EMAIL).
     * @return mixed
     */
    public function post($key, $default = null, $filter = FILTER_DEFAULT)
    {
        $value = $this->post[$key] ?? $default;
        return is_array($value) ? $value : filter_var($value, $filter);
    }

    /**
     * Obtiene un valor del array GET saneado.
     *
     * @param string $key La clave a buscar.
     * @param mixed $default Valor por defecto si la clave no existe.
     * @param int $filter Filtro de saneamiento de PHP.
     * @return mixed
     */
    public function get($key, $default = null, $filter = FILTER_DEFAULT)
    {
        $value = $this->get[$key] ?? $default;
        return is_array($value) ? $value : filter_var($value, $filter);
    }

    /**
     * Obtiene todos los datos de POST saneados.
     *
     * @return array
     */
    public function allPostData(): array
    {
        return filter_input_array(INPUT_POST, FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    }
}
