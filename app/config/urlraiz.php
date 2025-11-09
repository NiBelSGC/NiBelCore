<?php
/**
 * ───────────────────────────────────────────────
 * 🌐 NiBel Core - urlraiz.php
 * ───────────────────────────────────────────────
 * Este script determina automáticamente la URL base del proyecto,
 * permitiendo generar rutas absolutas hacia la carpeta /public/.
 *
 * Su función principal es identificar el protocolo, el host y la ruta
 * raíz del sistema, ajustando dinámicamente según la estructura del 
 * framework (especialmente si contiene la carpeta /app).
 *
 * ✅ Evita configuraciones manuales de rutas absolutas.
 * ✅ Compatible con entornos locales (XAMPP, Laragon, etc.) y remotos.
 * ✅ Útil para generar URLs en Fetch, enlaces, redirecciones o assets.
 *
 * © NiBel Core Framework | Desarrollado por Weimar — 2025
 * ───────────────────────────────────────────────
 */

/**
 * 🔍 Paso 1: Detectar el protocolo y el host
 * Determina si la conexión actual es HTTP o HTTPS,
 * y obtiene el nombre del dominio o localhost.
 */
$protocol = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off') ? "https://" : "http://";
$host = $_SERVER['HTTP_HOST'];

/**
 * 🔍 Paso 2: Normalizar la ruta del script actual
 * Obtiene el path del script ejecutado (por ejemplo: /vecinity_MVC/app/api/elimuser.php)
 * y reemplaza las barras invertidas por barras normales para uniformidad.
 */
$scriptPath = str_replace('\\', '/', $_SERVER['SCRIPT_NAME']);

/**
 * 🔍 Paso 3: Detectar la carpeta base del proyecto
 * Si el proyecto contiene una carpeta /app, asumimos que el frontend se
 * sirve desde /public/, por lo que reemplazamos el segmento /app/... por /public/.
 *
 * En caso contrario (por ejemplo si el proyecto ya está siendo servido
 * desde /public/), simplemente se usa el directorio actual del script.
 */
$pos = strpos($scriptPath, '/app');
if ($pos !== false) {
    // Estructura tipo /vecinity_MVC/app/... → apuntar a /vecinity_MVC/public/
    $basePath = substr($scriptPath, 0, $pos) . '/public/';
} else {
    // Estructura sin /app → utilizar el directorio actual
    $basePath = rtrim(dirname($scriptPath), '/') . '/';
}

/**
 * 🔍 Paso 4: Construir la URL final
 * Combina el protocolo, el host y la ruta base para obtener una URL 
 * completa y funcional, lista para usarse en el proyecto.
 *
 * Ejemplo resultante:
 * http://localhost/vecinity_MVC/public/
 */
$baseUrl = $protocol . $host . $basePath;
