<?php
/**
 * ───────────────────────────────────────────────
 * 🛡️ NiBel Core - Csrf.php
 * ───────────────────────────────────────────────
 * Clase para la generación y validación de tokens
 * contra ataques de tipo Cross-Site Request Forgery (CSRF).
 *
 * Funcionamiento:
 * 1. Se genera un token ñnico y se almacena en la sesión del usuario.
 * 2. Este token se imprime en un campo oculto en cada formulario.
 * 3. Al recibir una petición POST, el sistema verifica que el token
 *    enviado coincida con el de la sesión.
 *
 * © NiBel Core Framework | Desarrollado por Weimar — 2025
 * ───────────────────────────────────────────────
 */

class Csrf
{
    /**
     * Genera un nuevo token CSRF y lo guarda en la sesión.
     * Si ya existe uno, lo reutiliza para evitar problemas con
     * mõltiples pestañas abiertas.
     *
     * @return string El token CSRF.
     */
    public static function generarToken()
    {
        if (empty($_SESSION['csrf_token'])) {
            $_SESSION['csrf_token'] = bin2hex(random_bytes(32));
        }
        return $_SESSION['csrf_token'];
    }

    /**
     * Valida el token CSRF enviado en una petición POST.
     * Si el token no es válido, detiene la ejecución.
     *
     * @param string|null $token El token recibido del formulario.
     * @return bool Devuelve true si el token es válido.
     */
    public static function validarToken($token)
    {
        if (
            !$token ||
            !isset($_SESSION['csrf_token']) ||
            !hash_equals($_SESSION['csrf_token'], $token)
        ) {
            // En un sistema real, podrías redirigir a una página de error
            // o simplemente invalidar la sesión.
            // Por seguridad, es mejor detener la ejecución.
            self::expirarToken();
            die('Error de validación CSRF. La petición ha sido denegada.');
        }

        // El token es de un solo uso, se elimina después de validar.
        self::expirarToken();

        return true;
    }

    /**
     * Imprime un campo input oculto con el token CSRF.
     * Debe ser llamado dentro de una etiqueta <form>.
     */
    public static function campo()
    {
        $token = self::generarToken();
        echo "<input type=\"hidden\" name=\"csrf_token\" value=\"{$token}\">";
    }

    /**
     * Elimina el token actual de la sesión.
     */
    public static function expirarToken()
    {
        unset($_SESSION['csrf_token']);
    }
}
