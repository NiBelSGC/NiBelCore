<?php
/**
 * ───────────────────────────────────────────────
 * 📄 NiBel Core - funciones.php
 * ───────────────────────────────────────────────
 * Archivo central de funciones globales del framework.
 * Aquí se agrupan utilidades comunes que pueden ser usadas
 * en cualquier parte del proyecto.
 *
 * ✅ Evita duplicar código.
 * ✅ Mantiene la consistencia.
 * ✅ Facilita la depuración.
 *
 * © NiBel Core Framework | Desarrollado por Weimar - 2025
 * ───────────────────────────────────────────────
 */

/**
 * 🧪 debuguear()
 * Muestra el contenido de una variable en formato legible
 * y detiene la ejecución del script. Ideal para depuración.
 *
 * @param mixed $variable Variable a inspeccionar.
 * @return void
 */
function debuguear($variable)
{
    echo "<pre>";
    var_dump($variable);
    echo "</pre>";
    exit;
}

/**
 * 🔐 random_string()
 * Genera una cadena aleatoria compuesta por letras minúsculas
 * y números. Útil para tokens, claves temporales o IDs únicos.
 *
 * @param int $length Longitud de la cadena (por defecto: 12)
 * @return string Cadena aleatoria generada.
 */
function random_string(int $length = 12): string
{
    $chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
    $max = strlen($chars) - 1;
    $str = '';
    for ($i = 0; $i < $length; $i++) {
        $str .= $chars[random_int(0, $max)];
    }
    return $str;
}

