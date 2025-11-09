<?php

/**
 * ───────────────────────────────────────────────
 * 🧱 NiBel Core - Master.php
 * ───────────────────────────────────────────────
 * Clase base que sirve como “padre” para todos los modelos
 * del framework NiBel Core.
 *
 * Implementa métodos esenciales para interactuar con la base
 * de datos MySQL mediante MySQLi, construir objetos a partir
 * de registros, sincronizar datos y gestionar validaciones.
 *
 * © NiBel Core Framework | Desarrollado por Weimar — 2025
 * ───────────────────────────────────────────────
 */

namespace Model;

class Master
{
    /**
     * 🔗 Conexión activa a la base de datos (MySQLi)
     * ------------------------------------------------
     * Se define como estática para compartir la misma conexión
     * entre todos los modelos que hereden de esta clase.
     *
     * @var mysqli
     */
    protected static $db;

    /**
     * ⚠️ Arreglo de errores
     * ------------------------------------------------
     * Usado por los modelos para almacenar mensajes de validación.
     *
     * @var array
     */
    protected static $errores = [];

    /**
     * 🧩 setDB()
     * ------------------------------------------------
     * Asigna la conexión a la base de datos a la propiedad estática.
     * Generalmente se ejecuta una sola vez en el arranque del sistema.
     *
     * @param mysqli $database Conexión activa MySQLi.
     */
    public static function setDB($database)
    {
        self::$db = $database;
    }

    /**
     * 🔄 sincronizar()
     * ------------------------------------------------
     * Actualiza las propiedades del objeto actual con los valores
     * recibidos desde un arreglo (por ejemplo, $_POST o una consulta SQL).
     *
     * Solo sincroniza propiedades existentes en la clase.
     *
     * @param array $args Arreglo de datos a sincronizar.
     */
    public function sincronizar($args = [])
    {
        foreach ($args as $key => $value) {
            if (property_exists($this, $key) && !is_null($value)) {
                $this->$key = $value;
            }
        }
    }

    /**
     * 📊 consultarSQL()
     * ------------------------------------------------
     * Ejecuta una consulta SQL y devuelve los resultados como
     * un arreglo de objetos instanciados de la clase hija.
     *
     * @param string $qry Consulta SQL a ejecutar.
     * @return array Arreglo de objetos resultantes.
     */
    public static function consultarSQL($qry)
    {
        // Ejecutar consulta
        $result = self::$db->query($qry);

        // Convertir cada registro en objeto
        $array = [];
        while ($registro = $result->fetch_assoc()) {
            $array[] = static::crearObjeto($registro);
        }

        // Liberar memoria y devolver resultados
        $result->free();
        return $array;
    }

    /**
     * 🧱 crearObjeto()
     * ------------------------------------------------
     * Crea una nueva instancia de la clase hija y le asigna
     * los valores del registro (fila) obtenido desde la BD.
     *
     * @param array $registro Datos del registro de BD.
     * @return static Instancia del modelo correspondiente.
     */
    protected static function crearObjeto($registro)
    {
        // Se usa "static" para respetar herencia (late static binding)
        $objeto = new static;

        foreach ($registro as $key => $value) {
            if (property_exists($objeto, $key)) {
                $objeto->$key = $value;
            }
        }

        return $objeto;
    }

    /**
     * ⚙️ getErrores()
     * ------------------------------------------------
     * Devuelve el arreglo de errores generado durante la validación
     * o procesamiento de datos.
     *
     * @return array Errores acumulados.
     */
    public static function getErrores()
    {
        return self::$errores;
    }
}
